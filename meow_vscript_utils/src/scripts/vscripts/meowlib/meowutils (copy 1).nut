


if ("MeowUtils" in getroottable())
{
	return;
}



// this is for functions that are more general and not specifically related to bhop detector
::MeowUtils <-
{
	build_num=1

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

printl("successfully loaded meowutils.nut version r"+::MeowUtils.build_num);
