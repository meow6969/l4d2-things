


if ("MeowUtils" in getroottable())
{
	return;
}



// this is for functions that are more general and not specifically related to bhop detector
::MeowUtils <-
{
	build_num=13

	// this function stole from vslib
	function IsEntityOnGroundVSLib(entity) 
	{
		local flags = NetProps.GetPropInt(entity, "m_fFlags");
		return flags == ( flags | 1 );
	}

	function GetPlayerSpeed(player) 
	{
		return player.GetVelocity().Length();
	}

	function GetPlayerSteamID(player)
	{
		return player.GetNetworkIDString();
		// return NetProps.GetPropString(player, "m_szNetworkIDString");
	}

	function ClientPrintSplit(p, s)
	{
		local msgs = split(s, "\n");
		foreach (msg in msgs)
			ClientPrint(p, 5, msg);
	}

	function IsAlive(player)
	{
		if (!player || !player.IsValid())
		{
			return false;
		}

		local pClass = player.GetClassname();

		if (pClass == "player"
			|| pClass == "witch"
			|| pClass == "infected")
		{
			return NetProps.GetPropInt(player,"m_lifeState") == 0;
		}
		else
		{
			return player.GetHealth() > 0;
		}
	}

	function CalculateVectorDistanceSquared(v1, v2)	// v1<Vector>, v2<Vector> -> float<distanceSquared>
	{
		return pow(v1.x - v2.x, 2) + pow(v1.y - v2.y, 2) + pow(v1.z - v2.z, 2);
	}

	function CalculateVectorDistance(v1, v2)		// v1<Vector>, v2<Vector> -> float<distance>
	{
		return sqrt(::MeowUtils.CalculateVectorDistanceSquared(v1, v2));
	}

	// dis sucks wtf is wrong with me
	// dis gets called multiple times per tick -- fixed now 
	// and runs a loop inside of itself
	// its literally the worst kind of bad
	//
	// this function isnt used at all now
	// idk if i should just start purging all unused functions ? probably
	function GetPlayerFromSteamID(steamid)
	{
		// printl("SendToAllNon");
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			if (::MeowUtils.GetPlayerSteamID(player) == steamid)
			{
				return player;
			}
			
		}
		return null;
	}

	function TableKeys(t)
	{
		local r = [];
		foreach (k, v in t)
		{
			r.append(k);
		}
		return r;
	}

	function TableValues(t)
	{
		local r = [];
		foreach (k, v in t)
		{
			r.append(v);
		}
		return r;
	}

	//                           array<obj>, func
	function GetLongestStringLen(objs,       lenFinder=(@(a) a.len()))
	{
		if (objs.len() == 0) return null;
		local nObjs = clone objs;
		nObjs.sort(@(a,b) lenFinder(a) <=> lenFinder(b));
		nObjs.reverse();
		return nObjs[0].len();
	}

	// repeats a string n amount of times
	function StringMult(iStr, n)
	{
		local rStr = "";
		for (local i = 0; i < n; i++)
			rStr += iStr;
		return rStr;
	}

	function ArrayJoin(arr, sep=", ", itmFinder=(@(lst, i) lst[i]))
	{
		local rStr = "";
		if (arr.len() == 0) return "";
		for (local i = 0; i < arr.len(); i++)
			rStr += itmFinder(arr, i)+sep;
		return rStr.slice(0, -sep.len());
	}

	function MergeArrays(a1, a2)
	{
		local r = [];
		foreach (o in a1)
		{
			if (r.find(o) == null) r.append(o);
		}
		foreach (o in a2)
		{
			if (r.find(o) == null) r.append(o);
		}
		return r;
	}
		
	function GetNextMapName()
	{
		local ent = Entities.FindByClassname(null, "info_changelevel");
		if (ent == null)
		{
			ent = Entities.FindByClassname(null, "trigger_changelevel");
			if (ent == null)
				return null;
		}
		return NetProps.GetPropString(ent, "m_mapName");
	}

	// replaces all instances of pattern o with string r in string s
	function StringReplace(s, o, r)
	{
		// print("s=\""+s+"\",o=\""+o+"\",r="+r+"\"\n");
		local ex = regexp(o);
		// local res = ex.search(s);
		local newStr = "";
		local i = 0;
		local res;
		while ((res = ex.search(s, i)) != null)
		{
			// print("begin="+res.begin+",end="+res.end+",slice=\""+s.slice(res.begin, res.end)+"\"\n");
			newStr = newStr+s.slice(i, res.begin)+r;
			i = res.end;
		}
		
		return newStr+s.slice(i);
		// print("newStr=\""+newStr+"\"\n");
	}

	//                       float (seconds)
	function DurationToUnits(duration, days=true, hours=true, minutes=true, seconds=true)  // -> list[list[str, int]] 
	{
		duration = duration.tofloat();
		//             day,   hour, minute, second
		// local units = [86400, 3600, 60,     1];
		if (duration < 60)
			seconds = true;
		else if (duration < 3600)
			minutes = true;
		local units = [];
		if (days)
			units.append(["d", 86400.0]);
		if (hours)
			units.append(["h", 3600.0]);
		if (minutes)
			units.append(["m", 60.0]);
		if (seconds)
			units.append(["s", 1.0]);
		
		local amounts = [];
		local remainder = 0;

		foreach (u in units)
		{
			remainder = duration / u[1];  // 30
			local a = (remainder).tointeger();  // 30
			duration -= a * u[1];  // 30 * 1 = 30
			amounts.append([u[0], a]);  // ["s", 30]
			remainder -= a;
			//printl("duration="+duration);
		}
		amounts[amounts.len()-1][1] += remainder;
		// this is the remainder (the decimal part)
		/* if (!seconds)
		{
			duration -= duration.tointeger();
		} */
		//amounts.append(["r", remainder]);

		return amounts;
	}

	//                    float, integer
	function DecimalRound(num,   decimal_places)  // -> str
	{
		return num.tointeger()+"."+((num - num.tointeger()) * pow(10, decimal_places)).tointeger();
	}

	// split by |
	function IndexTableByString(settingPath, tbl)
	{
		local varPath = split(settingPath, "|");
		if (varPath.len() == 0)
		{
			throw "invalid blah blah";
		}

		local curTable = tbl.weakref();
		local lastTable = curTable;
		local lastKey = strip(varPath[0]);
		
		foreach (keyName in varPath)
		{
			keyName = strip(keyName);
			if (keyName == "")
			{
				throw "invalid index";
			}
			if (!(keyName in curTable.ref()))
			{
				throw "couldnt find index for keyname: \""+keyName+"\"";
			}
			lastTable = curTable;
			curTable = curTable.ref()[keyName].weakref();
			lastKey = keyName;
		}

		return lastTable.ref()[lastKey];
	}

	function GetAllPlayers(validPlayerFunc=null)
	{
		local r = [];
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			local userid = player.GetPlayerUserId();
			if (userid == null) continue;
			if (validPlayerFunc != null)
				if (!validPlayerFunc(player))
					continue;
			r.append(player);
		}
		return r;
	}

	function LangCoder(code, extraInfos)
	{
		local white = "\x01";
		local brightGreen = "\x03";
		local orange = "\x04";
		local oliveGreen = "\x05";
		
		switch (code)
		{
			case "WHITE":
				return white;
			case "BRIGHT_GREEN":
				return brightGreen;
			case "ORANGE":
				return orange;
			case "OLIVE_GREEN":
				return oliveGreen;
				
			case "NAME":
				return orange+"\""+extraInfos["name"]+"\""+white;
			case "STEAMID":
				return brightGreen+"\""+extraInfos["steamID"]+"\""+white;

			case "ERROR":
				return extraInfos["error"];
			case "KEYNAME":
				return "\""+extraInfos["keyName"]+"\"";
			case "USER_INPUT":
				return "\""+extraInfos["userInput"]+"\"";
			case "SQUIRREL_TYPE":
				return "\""+extraInfos["squirrelType"]+"\"";
			case "VARIABLE_PATH":
				return oliveGreen+"\""+extraInfos["variablePath"]+"\""+white;  
			case "VARIABLE_VALUE":
				return orange+"\""+extraInfos["variableValue"]+"\""+white;

			case "VERSION":
				return oliveGreen+"r"+extraInfos["version"]+white;
			case "PREFIX":
				return "\""+extraInfos["prefix"]+"\"";
			case "COOLDOWN":
				return orange+extraInfos["cooldown"]+white;
			case "CMD_NAME":
				return "\""+extraInfos["cmdName"]+"\"";

			case default:
				return null;
		}
	}

	//                          string, table, table,      function
	function GetLocalizedString(path,   lang,  extraInfos, stringCoder=null)
	{
		local foundVal = ::MeowUtils.IndexTableByString(path, lang);

		local ex = regexp("%%([A-Z_]+?)%%");
		
		// local test =  "%%NAME%%";
		//local test = "%%NAME%% got %%NUM_BHOPS%% bunnyhop in a row (score: %%SCORE%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%)";
	
		local res;
		local start = 0;
		local formattedString = foundVal;
		while (res = ex.capture(foundVal, start))
		{
			start = res[0].end;
			local full_match = test.slice(res[0].begin, res[0].end);
			local code = test.slice(res[1].begin, res[1].end);
			local formattedCode = ::MeowUtils.LangCoder(code, extraInfos);
			if (formattedCode == null && stringCoder != null)
				formattedCode = stringCoder(code, extraInfos);
			if (formattedCode == null)
				throw "code \""+code+"\" doesnt correspond to anything !!"
			formattedString = ::MeowUtils.StringReplace(formattedString, full_match, formattedCode);

			//printl("match=("+res[0].begin+"-"+res[0].end+")="+test.slice(res[0].begin, res[0].end));
			//printl("match=("+res[1].begin+"-"+res[1].end+")="+test.slice(res[1].begin, res[1].end));
			//printl();
		}
		return formattedString;
	}

	function Log(s)
	{
		local stackinfo = getstackinfos(2);
		local prefix = "<"+stackinfo.src.slice(17)+":"+stackinfo.func+"():"+stackinfo.line+">";
		foreach (l in split(s, "\n"))
		{
			printl(prefix+" "+l);
		}
	}

	function GetArgList(s)
	{
		local r = [];
		local charEscaped = false;
		local inQuotes = false;
		local arg = "";

		foreach (c in s)
		{
			c = c.tochar();
			if (charEscaped)
			{
				switch (c)
				{
					case "\\":
						arg += "\\";
						break;
					case "\"":
						arg += "\"";
						break;
					case " ":
						if (inQuotes)
							arg += "\\";
						arg += " ";
						break;
					default:
						arg += "\\"+c;
						break;
				}
				charEscaped = false;
				continue;
			}
			switch (c)
			{
				case "\\":
					charEscaped = true;
					break;
				case "\"":
					inQuotes = !inQuotes;
					break;
				case " ":
					if (inQuotes)
					{
						arg += " ";
						break;
					}
					if (arg == "")
						break;
					r.append(arg);
					arg = "";
					break;
				default:
					arg += c;
					break;
			}
		}
		if (arg != "")
			r.append(arg);

		return r;
	}
}

IncludeScript("meowlib/lang/en.nut");

printl("successfully loaded meowutils.nut version r"+::MeowUtils.build_num);
