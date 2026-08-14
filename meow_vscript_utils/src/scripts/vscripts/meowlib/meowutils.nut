


if ("MeowUtils" in getroottable())
{
	return;
}


IncludeScript("meowlib/lang/en.nut");
IncludeScript("meowlib/lang/es.nut");


// this is for functions that are more general and not specifically related to bhop detector
::MeowUtils <-
{
	build_num=58

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
			ClientPrint(p, 5, "\x01"+msg);
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
		//printl("s=\""+s+"\", o=\""+o+"\", r=\""+r+"\"");
		while ((res = ex.search(s, i)) != null)
		{
			//print("begin="+res.begin+",end="+res.end+",slice=\""+s.slice(res.begin, res.end)+"\"\n");
			newStr = newStr+s.slice(i, res.begin)+r;
			i = res.end;
			if (i == s.len())
				break;
		}
		//printl("StringReplace: going to return the string now");
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

	// saves a table using json parser to string  which means arrays and stuff work normally
	function JsonSaveTable(key, table)
	{
		local newTable = {json = ::Json.Serialize.ToString(table)};
		
		SaveTable(key, newTable);
	}

	function JsonRestoreTable(key)  // -> table
	{
		local lTable = {};

		RestoreTable(key, lTable);

		if (!("json" in lTable))
			return null;
		
		return ::Json.Deserialize.String(lTable["json"]);
	}

	// split by |
	function IndexTableByString(settingPath, tbl)
	{
		local varPath = split(settingPath, "|");
		if (varPath.len() == 0)
		{
			throw "invalid blah blah";
		}

		local curTable = tbl;
		local lastTable = curTable;
		local lastKey = strip(varPath[0]);
		
		foreach (keyName in varPath)
		{
			// printl("curTable="+::Json.Serialize.ToString(curTable));

			keyName = strip(keyName);
			if (keyName == "")
			{
				throw "invalid index";
			}
			if (!(keyName in curTable))
			{
				throw "couldnt find index for keyname: \""+keyName+"\"";
			}
			lastTable = curTable;
			curTable = curTable[keyName];
			lastKey = keyName;
		}

		return lastTable[lastKey];
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
			{
				if (!validPlayerFunc(userid))
				{
					//printl("user player func says userid isnt valid, skipping player");
					continue;
				}
			}
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
				return orange+extraInfos["name"]+white;
			case "STEAMID":
				return brightGreen+"\""+extraInfos["steamID"]+"\""+white;

			case "ERROR":
				return orange+extraInfos["error"]+white;
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

			case "LANGUAGE":
				return brightGreen+"\""+extraInfos["language"]+"\""+white;
			case "LANGUAGES":
				return brightGreen+"\""+extraInfos["languages"]+"\""+white;

			default:
				return null;
		}
	}

	function LocalizationStringExists(path, lang)  //  -> null|string
	{
		try
		{
			local foundVal = ::MeowUtils.IndexTableByString(path, lang);
			return foundVal;
		}
		catch (e)
		{
			::MeowUtils.Log("got an error, e="+e);
			return null;
		}
	}

	//                          string, table, table,      function
	function GetLocalizedString(path,   lang,  extraInfos, stringCoder=null)  // -> str|null
	{
		local foundVal;
		try
		{
			foundVal = ::MeowUtils.IndexTableByString(path, lang);
		}
		catch (e)
		{
			return null;
			// throw "couldnt find val for string path \""+path+"\"";
		}

		local ex = regexp("%%([A-Z_]+)%%");
		
		// local test =  "%%NAME%%";
		//local test = "%%NAME%% got %%NUM_BHOPS%% bunnyhop in a row (score: %%SCORE%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%)";
	
		local res;
		local start = 0;
		local formattedString = foundVal;
		//printl("381: formattedString="+formattedString);
		// printl();
		while (res = ex.capture(foundVal, start))
		{
			//printl("res found");
			start = res[0].end;
			local full_match = foundVal.slice(res[0].begin, res[0].end);
			local code = foundVal.slice(res[1].begin, res[1].end);
			local formattedCode = ::MeowUtils.LangCoder(code, extraInfos);
			if (formattedCode == null && stringCoder != null)
				formattedCode = stringCoder(code, extraInfos);
			//printl("formattedString="+formattedString+", full_match="+full_match+", formattedCode="+formattedCode);
			if (formattedCode == null)
				throw "code \""+code+"\" doesnt correspond to anything !!";
				// return null;
				//return formattedString;  // i should do this right ???
										 // no i shouldnt but we get a different error this time i guess
			//printl("doing string replace");
			formattedString = ::MeowUtils.StringReplace(formattedString, full_match, formattedCode);
			//printl("done string replace");

			//printl("match=("+res[0].begin+"-"+res[0].end+")="+test.slice(res[0].begin, res[0].end));
			//printl("match=("+res[1].begin+"-"+res[1].end+")="+test.slice(res[1].begin, res[1].end));
			//printl();
		}
		return formattedString;
	}

	function Log(s)
	{
		local stackinfo = getstackinfos(2);
		local prefix = "<"+stackinfo.src.slice(17)+":"+stackinfo.func+"():"+stackinfo.line+"> ";
		foreach (l in split(s, "\n"))
		{
			printl(prefix+l);
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
