printl("<mt2> Load bunny-hop detect script 69  !!! 2.0")

// dofile("json.nut");
IncludeScript("json.nut");
IncludeScript("argparse.nut");

/* ::BhopVars <-
{
	</ json_ignore = true />
	ConfigPath				= "simple_bunnyhop_detect/bhop_detect_condition.json",
	</ json_ignore = true />
	BunnyCounter			= array(32,0),	//	dict[int, jumps<int>]
	</ json_ignore = true />
	LastBunnyTopSpeed		= array(32,0),	//	dict[int, velocity<float>]
	</ json_ignore = true />
	BunnyGroundTime			= array(32,0),	//	dict[int, ticks<int>]
	BunnyDetectCount		= 3,
	BunnyTickLeniency		= 3,
	DefaultPlayerSettings	= {"IgnoreBhop": false, "IgnorePerfectJumps": false},
	PlayerSettings			= {},			//	dict[steamID<str>, PlayerSettings[dict]]
	</ json_ignore = true />
	BunnyTickerEnt			= null,
	</ json_ignore = true />
	JumpingList				= {}, 			//	dict[str, entity<player>]
											//	this maps entity indexes to player objects
	</ json_ignore = true />
	build_num=33
} */

::BhopClasses <-
{
	
}

class ::BhopClasses.BhopConfig
{
	</ json_ignore = true />
	ConfigPath				= "simple_bunnyhop_detect/bhop_detect_condition.json";
	// </ json_ignore = true />
	// BunnyCounter			= array(32,0);	//	dict[int, jumps<int>]
	// </ json_ignore = true />
	// LastBunnyTopSpeed		= array(32,0);	//	dict[int, velocity<float>]
	// </ json_ignore = true />
	// BunnyGroundTime			= array(32,0);	//	dict[int, ticks<int>]
	</ json_ignore = true />
	ConfigAltered			= false;

	BunnyDetectCount		= 3;
	BunnyTickLeniency		= 3;

	ScoringSettings			= {
		"BhopCountMult": 0.2,
		"BhopAvgVelocityMult": 2.0
	};
	NumLeaderboardSlots		= 5;
	LeaderboardOnRoundEnd	= true;
	
	DefaultPlayerSettings	= {
		"Admin": false,
		"IgnoreBhop": false, 
		"IgnorePerfectJumps": false, 
		"TotalBhops": 0, 
		"HighestVelocity": 0, 
		"TotalDistanceBhopped": 0,
		"BestBhop": null,					// BhopChainData
		"Name": null
	};
	PlayerSettings			= {};			//	dict[steamID<str>, PlayerSettings[dict]]
	</ json_ignore = true />
	BunnyTickerEnt			= null;
	</ json_ignore = true />
	BunnyUtilsTickerEnt		= null;
	</ json_ignore = true />
	ConfigTickerEnt			= null;
	</ json_ignore = true />
	JumpingList				= {}; 			//	dict[str<steamID>, BhopChainData]
	</ json_ignore = true />
	PlayerInitList			= [];			// list[userid]
												// this helps us keep track of what players are initialized
	</ json_ignore = true />
	build_num=33
}

class ::BhopClasses.BhopData
{
	vel						= null;			// float
	</ json_ignore = true />
	jumpPos					= null;			// Vector
	</ json_ignore = true />
	landPos					= null;			// Vector
	airTime					= 0;			// int<ticks>		-- idk if needed ?
		
	constructor(v, jP)  // , aT)			// v<float>, sP<Vector>, eP<Vector>, aT<int<ticks>>
	{
		this.vel = v;
		this.jumpPos = jP;
		this.airTime = 0;
		// this.startPos = sP;
		// this.landPos = eP;
		// this.airTime = aT;
	}

	// function FinishBhop()

	function StrideLength()
	{
		return ::BhopFunc.CalculateVectorDistance(this.jumpPos, this.landPos);
	}

	function _tostring()
	{
		return ::Json.Serialize.ToString(this); 
	}
}

class ::BhopClasses.BhopChainData
{
	bhopChain			= null;			// list[BhopData]
	bhopVels			= 0;			// float<velocity> (additive)
	maxVel				= 0;			// float<velocity>
	</ json_ignore = true />
	groundTime			= 0;			// int<tick>
	score				= 0;			// float
	</ json_ignore = true />
	player				= null;			// Player

	constructor(p, bhop=null)
	{
		this.player = p;
		this.bhopChain = [];
		this.bhopVels = 0;
		this.maxVel = 0;
		if (bhop != null)
		{
			this.AddBhop(bhop);
		}
	}

	function AddBhop(bhop)
	{
		this.bhopChain.append(bhop);
		/* local l = this.bhopChain.len()
		if (l > 1)
		{
			this.bhopChain[l - 2].landPos = bhop.jumpPos;
		} */
		this.bhopVels += bhop.vel;
		if (this.maxVel < bhop.vel)
		{
			this.maxVel = bhop.vel;
		}
	}

	function IncrementAirTime()
	{
		this.bhopChain[this.bhopChain.len() - 1].airTime++;
	}

	function AverageVelocity()
	{
		return this.bhopVels / this.bhopChain.len();
	}

	function ChainDistance()
	{
		return ::BhopFunc.CalculateVectorDistance(this.bhopChain[0].jumpPos, this.bhopChain[this.bhopChain.len() - 1].landPos);
	}

	function ScoreBhop()  // -> bool  (false means not best bhop, true means new best bhop)
	{
		local numBhops = this.bhopChain.len();
		local avgVel = this.AverageVelocity();
		
		local jumpMult = numBhops * ::BhopVars.ScoringSettings["BhopCountMult"];
		local velMult = avgVel * ::BhopVars.ScoringSettings["BhopAvgVelocityMult"];

		this.score = jumpMult * velMult;

		local pSID = ::BhopFunc.GetPlayerSteamID(player);
		::BhopVars.PlayerSettings[pSID]["TotalBhops"] += numBhops;
		::BhopVars.PlayerSettings[pSID]["TotalDistanceBhopped"] += this.ChainDistance();
		::BhopVars.ConfigAltered = true;
		if (this.maxVel > ::BhopVars.PlayerSettings[pSID]["HighestVelocity"])
		{
			::BhopVars.PlayerSettings[pSID]["HighestVelocity"] = this.maxVel;
		}
		if (::BhopVars.PlayerSettings[pSID]["BestBhop"] == null || this.score > ::BhopVars.PlayerSettings[pSID]["BestBhop"].score)
		{
			local previousBest = ::BhopVars.PlayerSettings[pSID]["BestBhop"];
			::BhopVars.PlayerSettings[pSID]["BestBhop"] = this;
			if (previousBest == null) 
			{
				return 69;
			}
			return previousBest;
		}
		
		return null;
	}
}

::BhopVars <- ::BhopClasses.BhopConfig();

::BhopFunc <-
{
	function loadFile()
	{
		printl("Bunnyhop detect condition (build num "+::BhopVars.build_num+") :  successfully reload !! yay!");
		local path = ::BhopVars.ConfigPath;
		local file = FileToString(path);

		if(!file)
		{
			printl("not file !!");
			::BhopFunc.WriteConfig(path);
			return;
		}
		
		printl("file="+file);

		try
		{
			::BhopVars <- ::Json.Deserialize.StringToClass(file, ::BhopClasses.BhopConfig);
			// printl("Bunnyhop detect config: "+::Json.Serialize.ToString(::BhopVars));

			/* local cfg = ::Json.Deserialize.String(file);

			printl("Bunnyhop detect config: "+::Json.Serialize.ToString(cfg));
			if ("BunnyDetectCount" in cfg)
			{
				::BhopVars.BunnyDetectCount = cfg["BunnyDetectCount"];
			}
			if ("BunnyTickLeniency" in cfg)
			{
				::BhopVars.BunnyTickLeniency = cfg["BunnyTickLeniency"];
			}
			if ("DefaultPlayerSettings" in cfg)
			{
				::BhopVars.DefaultPlayerSettings = cfg["DefaultPlayerSettings"];
			}
			if ("PlayerSettings" in cfg)
			{
				::BhopVars.PlayerSettings = cfg["PlayerSettings"];
			} */
		}
		catch(error)
		{
			printl("Bunnyhop detect config parse error: "+error);
		}
		printl("loaded bunny hop config:");
		printl(::Json.Serialize.ToString(::BhopVars));
		::BhopFunc.PopulatePlayerInitList();
		
		/* printl("  BunnyDetectCount="+::BhopVars.BunnyDetectCount);
		printl("  BunnyTickLeniency="+::BhopVars.BunnyTickLeniency);
		printl("  DefaultPlayerSettings="+::Json.Utils.WriteConfig()PrintThing(::BhopVars.DefaultPlayerSettings, true));
		printl("  PlayerSettings="+::Json.Utils.PrintThing(::BhopVars.PlayerSettings, true)); */
	}

	function WriteConfig(path)
	{
		// printl("WriteConfig()");
		::Json.Serialize.ToFile(path, ::BhopVars);
		/* local wTable = {
			"BunnyDetectCount":		::BhopVars.BunnyDetectCount, 
			"BunnyTickLeniency":		::BhopVars.BunnyTickLeniency, 
			"DefaultPlayerSettings":	::BhopVars.DefaultPlayerSettings,
			"PlayerSettings":		::BhopVars.PlayerSettings
		}
		// printl(typeof wTable);
		// printl("wTable.keys()="+wTable.keys());
		::Json.Serialize.ToFile(path, wTable); */
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
		return sqrt(::BhopFunc.CalculateVectorDistanceSquared(v1, v2));
	}

	function PopulatePlayerInitList()
	{
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			local userid = player.GetPlayerUserId();
			printl("initiating player: "+player.GetPlayerName());
			::BhopVars.PlayerInitList.append(userid);
		}
	}
	
	function SendToAllNonIgnoredPlayers(message)
	{
		// printl("SendToAllNon");
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			if (IsPlayerIgnored(player))
			{
				// printl(player.GetPlayerName()+" was ignored SendToAllNon");
				continue;
			}
			ClientPrint(player,5,message);
		}
	}

	function checkBhop(player)
	{
		if (this.ShouldIgnorePlayer(player) || ::BhopFunc.IsPlayerIgnored(player))
		{
			// printl("checkBhop(): ignoring player");
			return false;
		}
		
		// local vars = ::BhopVars;
		
		local id = this.GetPlayerSteamID(player);
		// ClientPrint(null,3,"groundTime="+this.BhopVars.JumpingList[id].groundTime);
		
		if(::BhopVars.JumpingList[id].groundTime >= ::BhopVars.BunnyTickLeniency)
		{
			local pName = player.GetPlayerName();
			// local speed = this.GetPlayerSpeed(player);
			local bhopChain = ::BhopVars.JumpingList[id];
			
			local count = bhopChain.bhopChain.len();
			local topspeed = bhopChain.maxVel.tointeger();
			if(bhopChain.bhopChain.len() >= ::BhopVars.BunnyDetectCount)
			{
				local best = bhopChain.ScoreBhop();
				this.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 got \x05"+count+"\x01 bunnyhop"+((count > 1)?"s":"")+ " in a row (top speed: \x05"+topspeed+"\x01, score: \x05"+bhopChain.score+"\x01)");
				if (best == 69)
				{
					this.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 got their first bunnyhop record!");
				}
				else if (best != null)
				{
					this.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 beat their bunnyhop record! \x05+"+(bhopChain.score - best.score)+"\x01 points!");
				}
				// ClientPrint(null,5,"\x04"+pName+"\x01 got \x05"+count+"\x01 bunnyhop"+((count > 1)?"s":"")+ " in a row (top speed: \x05"+topspeed+"\x01)");
			}
			// printl("checkBhop(): failure");
			return false;
		}

		return true;
	}

	
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
		return NetProps.GetPropString(player, "m_szNetworkIDString");
	}

	function IsPlayerIgnored(player)
	{
		local playerSID = ::BhopFunc.GetPlayerSteamID(player);
		// printl("IsPlayerIgnored(): "+::BhopVars.PlayerSettings[playerSID]["IgnoreBhop"]);
		if (!(playerSID in ::BhopVars.PlayerSettings))
		{
			return false;
		}
		return ::BhopVars.PlayerSettings[playerSID]["IgnoreBhop"];
	}

	function IsPlayerAdmin(player)
	{
		if (::BhopFunc.IsPlayerInInitList(player) || IsPlayerABot(player))
		{
			return false;
		}
		local playerSID = ::BhopFunc.GetPlayerSteamID(player);
		if (!(playerSID in ::BhopVars.PlayerSettings))
		{
			return false;
		}
		return ::BhopVars.PlayerSettings[playerSID]["Admin"];
	}

	function IsPlayerPerfectJumpIgnored(player)
	{
		local playerSID = ::BhopFunc.GetPlayerSteamID(player);
		return ::BhopVars.PlayerSettings[playerSID]["IgnorePerfectJumps"];
	}


	function IgnorePlayer(player, ignore=true)
	{
		local pIgnored = ::BhopFunc.IsPlayerIgnored(player);
		local pSID = ::BhopFunc.GetPlayerSteamID(player);
		if (pIgnored)
		{
			if (ignore)
			{
				return false;
			}
			::BhopVars.ConfigAltered = true;
			::BhopVars.PlayerSettings[pSID]["IgnoreBhop"] = false;
		}
		else
		{
			if (!ignore)
			{
				return false;
			}
			::BhopVars.ConfigAltered = true;
			::BhopVars.PlayerSettings[pSID]["IgnoreBhop"] = true;
		}
		
		// ::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
		return true;
	}

	// dis sucks wtf is wrong with me
	// dis gets called multiple times per tick
	// and runs a loop inside of itself
	// its literally the worst kind of bad
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
			if (::BhopFunc.GetPlayerSteamID(player) == steamid)
			{
				return player;
			}
			
		}
		return null;
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

	function DisplayLeaderboard(player=null)
	{
		// "\x01high score: \x04"+best["score"]+"\x01, total distance bhopped: \x04"+pSet["TotalDistanceBhopped"]+"\x01, total bhops: \x04"+pSet["TotalBhops"]+"\x01highest velocity: \x04"+pSet["HighestVelocity"]+"\x01"
		// ::BhopFunc.SendToAllNonIgnoredPlayer
		// ::BhopVars.NumLeaderboardSlots

		// {"steamID": "", "playerName": "", "score": 0.0, "numBhops": 0, "maxVel": 0.0, "avgVel": 0.0}

		local bestBhops;  // list[dict]
		// idk if returning 0 is good here since like i think it means the thing thinks that they are equal ? wait i think itlll work out .......... i hope 
		local MeowCompare = function (a, b)
		{
			if (a["BestBhop"] == null && b["BestBhop"] == null)
			{
				return 0;
			}
			if (a["BestBhop"] == null)
			{
				return -1;
			}
			if (b["BestBhop"] == null)
			{
				return 1;
			}
			if (a["BestBhop"]["score"] > b["BestBhop"]["score"])
			{
				return 1;
			}
			if (a["BestBhop"]["score"] < b["BestBhop"]["score"])
			{
				return -1;
			}
			return 0;
		}

		/* foreach (sID, playerSetting in ::BhopVars.PlayerSettings)
		{
			if (!("bhopChain" in playerSetting) || playerSetting["bhopChain"] == null)	
			{
				continue;
			}
			bestBhops.append({"steamID": sID, "playerName": playerSetting["Name"], "score": playerSetting["score"], });
		} */
		local tVals = ::BhopFunc.TableValues(::BhopVars.PlayerSettings);
		tVals.sort(MeowCompare);
		tVals.reverse();
		
		if (tVals.len() > ::BhopVars.NumLeaderboardSlots)
		{
			tVals = tVals.slice(0, ::BhopVars.NumLeaderboardSlots - 1);
		}	
		// bestBhops = tVals.slice(0, ::BhopVars.NumLeaderboardSlots);
		bestBhops = tVals;
		local leaderboardSlot = 1;
		foreach (i, t in bestBhops)
		{
			if (t["BestBhop"] == null)
			{
				continue;
			}
			local s = "  "+leaderboardSlot+": \x04"+t["Name"]+"\x01, score: \x05"+t["BestBhop"]["score"]+"\x01, bhops: \x05"+t["BestBhop"]["bhopChain"].len()+"\x01, max speed: \x05"+t["BestBhop"]["maxVel"]+"\x01";
			leaderboardSlot++;
			if (player == null)
			{
				::BhopFunc.SendToAllNonIgnoredPlayer(s);
				continue
			}
			ClientPrint(player,5,s);
		}
	}

	function PerfectJumpIgnorePlayer(player, ignore=true)
	{
		local pIgnored = ::BhopFunc.IsPlayerIgnored(player);
		local pSID = ::BhopFunc.GetPlayerSteamID(player);
		if (pIgnored)
		{
			if (ignore)
			{
				return false;
			}
			::BhopVars.ConfigAltered = true;
			::BhopVars.PlayerSettings[pSID]["IgnorePerfectJumps"] = false;
		}
		else
		{
			if (!ignore)
			{
				return false;
			}
			::BhopVars.ConfigAltered = true;
			::BhopVars.PlayerSettings[pSID]["IgnorePerfectJumps"] = true;
		}
		
		// ::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
		return true;
	}

	function IsPlayerInInitList(player)
	{
		if (::BhopVars.PlayerInitList.find(player.GetPlayerUserId()) != null)
		{
			return true;
		}
		return false;
	}

	function ShouldIgnorePlayer(player)
	{
		if (IsPlayerABot(player))
		{
			return true;
		}

		if (::BhopFunc.IsPlayerInInitList(player))
		{
			printl("player "+player.GetPlayerName()+" in init list");
			printl(::Json.Serialize.ToString(::BhopVars.PlayerInitList));
			return true;
		}

		if (!::BhopFunc.IsAlive(player))
		{
			return true;
		}
		return false;
	}

	function EnsurePlayerSettings(player)
	{
		local pName = player.GetPlayerName();
		printl("EnsurePlayerSettings("+pName+")");
		local pSID = ::BhopFunc.GetPlayerSteamID(player);
		if (IsPlayerABot(player))
		{
			printl("player a bot: "+player.GetPlayerName())
			// return false;
			return true;
		}
		/* if (["BOT", ""].find(pSID) != null)
		{
			return false;
		} */
		printl("player "+pName+" pSID="+pSID);
		if (strip(pSID).len() < 10 || strip(pSID).slice(0, 10) != "STEAM_1:1:")
		{
			printl("player "+pName+" has invalid steamid, skipping...");
			return false;
		}
		if (!(pSID in ::BhopVars.PlayerSettings))
		{
			printl("setting playersettings[PSID] for player "+pName);
			::BhopVars.PlayerSettings[pSID] <- {};
		}

		foreach (tableKey, keyValue in ::BhopVars.DefaultPlayerSettings)
		{
			if (!(tableKey in ::BhopVars.PlayerSettings[pSID]))
			{
				::BhopVars.ConfigAltered = true;
				::BhopVars.PlayerSettings[pSID][tableKey] <- keyValue;
			}
		}
		
		if (::BhopVars.PlayerSettings[pSID]["Name"] != pName)
		{
			::BhopVars.PlayerSettings[pSID]["Name"] <- pName;
			::BhopVars.ConfigAltered = true;
		}
		// ::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
		return true;
	}

	function BhopTick() 
	{
		local markedForDeletion = [];  // list[steamID<str>]
		foreach (steamid, bhopChain in ::BhopVars.JumpingList)
		{
			local player = ::BhopFunc.GetPlayerFromSteamID(steamid);
			if (player == null)
			{
				printl("couldnt get player from steamid");
				markedForDeletion.append(steamid);
				continue;
			}
			
			if (::BhopFunc.IsPlayerIgnored(player))
			{
				printl("BhopTick(): ignoring player");
				markedForDeletion.append(steamid);
				continue;
			}
			if (::BhopFunc.ShouldIgnorePlayer(player))
			{
				printl("BhopTick(): should ignoring player");
				markedForDeletion.append(steamid);
				continue;
			}

			if (!(::BhopFunc.IsEntityOnGroundVSLib(player))) 
			{
				// printl("BhopTick(): player not on ground");
				::BhopVars.JumpingList[steamid].IncrementAirTime();
				::BhopVars.JumpingList[steamid].groundTime = 0;
				// ::BhopVars.BunnyGroundTime[index] = 0;
				continue;
			}
			local bhopChainLen = ::BhopVars.JumpingList[steamid].bhopChain.len();
			if (::BhopVars.JumpingList[steamid].bhopChain[bhopChainLen - 1].landPos == null) 
			{
				::BhopVars.JumpingList[steamid].bhopChain[bhopChainLen - 1].landPos = player.EyePosition();
			}
			::BhopVars.JumpingList[steamid].groundTime++;
			// ::BhopVars.BunnyGroundTime[index]++;

			if(::BhopFunc.checkBhop(player) == false)
			{
				// printl(player.GetPlayerName()+" failed bhop");
				// ClientPrint(null,3,player.GetPlayerName()+" failed bhop");
				markedForDeletion.append(steamid);
			}
		}
		foreach (i, steamid in markedForDeletion) 
		{
			delete ::BhopVars.JumpingList[steamid];
		}
	}

	function BhopThink() 
	{
		::BhopFunc.BhopTick();
	}

	// we do this as a workaround bcs there is no on_tick() game event
	function AddBhopTicker()
	{
		local tEnt = null;
		::BhopVars.BunnyTickerEnt = Entities.FindByName(tEnt, "bhopTicker");
		if (tEnt == null) 
		{
			::BhopVars.BunnyTickerEnt = SpawnEntityFromTable("info_target", {targetname = "bhopTicker"});
		}
		else
		{
			::BhopVars.BunnyTickerEnt = tEnt;
		}		

		::BhopVars.BunnyTickerEnt.ValidateScriptScope();
		local scrScope = ::BhopVars.BunnyTickerEnt.GetScriptScope();
		scrScope["BhopThink"] <- function () {
			::BhopFunc.BhopTick();
		}
		AddThinkToEnt(::BhopVars.BunnyTickerEnt,"BhopThink");
	}

	function UtilityTick()
	{
		// printl("UtilityTick()!");

		if (::BhopVars.PlayerInitList.len() == 0)
		{
			return;
		}

		local playersToRemove = [];
		
		foreach (i, userid in ::BhopVars.PlayerInitList)
		{
			local player = GetPlayerFromUserID(userid);
			/* try
			{
				// SendGlobalGameEvent("player_activate", {userid = userid});
				FireGameEvent("player_activate", {userid = userid});
				if (player.GetTeam() == 0)
				{
					SendGlobalGameEvent("player_activate", {userid = userid});
				} 
			}
			catch (error)
			{
				printl("error="+error);
				continue;
			} */
			printl("ensuring settings for player "+player.GetPlayerName());
			local r = ::BhopFunc.EnsurePlayerSettings(player);
			if (r)
			{
				playersToRemove.append(userid);
			}
			// ::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
			// newPlayerInit.remove(i);
			// ::BhopVars.PlayerInitList.remove(i);
		}
		foreach (i, userid in playersToRemove)
		{
			local b = ::BhopVars.PlayerInitList.find(userid);
			if (b != null)
			{
				::BhopVars.PlayerInitList.remove(b);
			}
		}
		// ::BhopVars.PlayerInitList = newPlayerInit;
		// ::BhopVars.PlayerInitList = [];
	}

	function ConfigSaveTick()
	{
		
		if (::BhopVars.ConfigAltered)
		// if (true)
		{
			printl("ConfigSaveTick()");
			::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
			::BhopVars.ConfigAltered = false;
		}
	}
	
	function AddConfigSaveTicker()
	{	
		local tEnt = null;
		::BhopVars.ConfigTickerEnt = Entities.FindByName(tEnt, "ConfigSaveTicker");
		if (tEnt == null) 
		{
			::BhopVars.ConfigTickerEnt = SpawnEntityFromTable("logic_timer", {targetname = "ConfigSaveTicker", start_disabled = false, RefireTime = 30.0});
		}
		else
		{
			::BhopVars.ConfigTickerEnt = tEnt;
		}
		::BhopVars.ConfigTickerEnt.ConnectOutput("OnTimer", "ConfigThink");

		::BhopVars.ConfigTickerEnt.ValidateScriptScope();
		::BhopVars.ConfigTickerEnt.GetScriptScope().ConfigThink <- function()
		{
			::BhopFunc.ConfigSaveTick();
		}
	}

	function AddUtilityTicker()
	{
		local tEnt = null;
		::BhopVars.BunnyUtilsTickerEnt = Entities.FindByName(tEnt, "bhopUtilsTicker");
		if (tEnt == null) 
		{
			::BhopVars.BunnyUtilsTickerEnt = SpawnEntityFromTable("logic_timer", {targetname = "bhopUtilsTicker", start_disabled = false, RefireTime = 1.0});
		}
		else
		{
			::BhopVars.BunnyUtilsTickerEnt = tEnt;
		}
		::BhopVars.BunnyUtilsTickerEnt.ConnectOutput("OnTimer", "UtilityThink");

		::BhopVars.BunnyUtilsTickerEnt.ValidateScriptScope();
		::BhopVars.BunnyUtilsTickerEnt.GetScriptScope().UtilityThink <- function()
		{
			::BhopFunc.UtilityTick();
		}
	}
}

::BhopEvent <-
{
	function OnGameEvent_player_jump(params)
	{
		local player = GetPlayerFromUserID(params.userid);

		if (::BhopFunc.ShouldIgnorePlayer(player))
		{
			printl("player_jump(): ignoring player "+player.GetPlayerName());
			return;
		}

		if (::BhopFunc.IsPlayerIgnored(player))
		{
			printl("OnGameEvent_player_jump(): ignoring player: "+player.GetPlayerName());
			return;
		}

		local id = BhopFunc.GetPlayerSteamID(player);
		local speed = ::BhopFunc.GetPlayerSpeed(player);
		local pName = player.GetPlayerName();
		local jumpPos = player.EyePosition();  // this is the value returned by cl_showpos 1 i think
		// local indexName = "bhop"+index;
		
		if (!(id in ::BhopVars.JumpingList))
		{
			local bhopData = ::BhopClasses.BhopChainData(player, ::BhopClasses.BhopData(speed, jumpPos));
			::BhopVars.JumpingList[id] <- bhopData;
		}
		else
		{
			local bhopChain = ::BhopVars.JumpingList[id];
			if (bhopChain.groundTime <= 1 && !::BhopFunc.IsPlayerPerfectJumpIgnored(player))
			{
				ClientPrint(player,3,"\x04perfect jump! speed=\x05"+speed.tointeger()+"\x01");
			}
			bhopChain.groundTime = 0;
			bhopChain.AddBhop(::BhopClasses.BhopData(speed, jumpPos));
			::BhopVars.JumpingList[id] <- bhopChain;
		}
		/* if(!(indexName in vars.JumpingList))
		{
			vars.BunnyGroundTime[index] = 0;
			vars.BunnyCounter[index] = 0;
			vars.LastBunnyTopSpeed[index] = 0;
			vars.JumpingList[indexName] <- player;
		}
		else 
		{
			local BC = vars.BunnyCounter;
			if (vars.BunnyGroundTime[index] == 1 && !::BhopFunc.IsPlayerPerfectJumpIgnored(player))
			{
				ClientPrint(player,3,"\x04perfect jump! speed=\x05"+speed+"\x01");
			}
			vars.BunnyGroundTime[index] = 0;
			BC[index]++;
			if(speed > vars.LastBunnyTopSpeed[index])
			{
				vars.LastBunnyTopSpeed[index] = speed;
			}
		} */
	}
	
	// this is so the player steam id is always initialized
	function OnGameEvent_player_spawn(params)
	{
		::BhopVars.PlayerInitList.append(params.userid);
		/* local player = GetPlayerFromUserID(params.userid);
		if (player.GetTeam() == 0)
		{
			SendGlobalGameEvent("player_activate", {userid = params.userid});
		}
		::BhopFunc.EnsurePlayerSettings(player);
		::BhopFunc.WriteConfig(::BhopVars.ConfigPath); */
	}

	function OnGameEvent_player_team(params)
	{
		
		if (params.disconnect)
		{
			local i = ::BhopVars.PlayerInitList.find(params.userid);
			if (i == null)
			{
				return;
			}
			::BhopVars.PlayerInitList.remove(i);
		}
	}

	function OnGameEvent_player_say(params)
	{
		local player = GetPlayerFromUserID(params.userid);
		local pSID = ::BhopFunc.GetPlayerSteamID(player);
		local message = strip(params.text)// .tolower();
		local args = ::ArgParse.GetArgList(message);
		if (args.len() < 1 || args[0].tolower() != "!bhop")
		{
			return true;
		}

		if (args.len() == 1 || args[1].tolower() == "help")
		{
			ClientPrint(player,3,"bhop detector help command");
			ClientPrint(player,3,"  \"!bhop\"	:	show this text");
			ClientPrint(player,3,"  \"!bhop help\"	:	show this text");
			ClientPrint(player,3,"  \"!bhop rules\"	:	show the current bhop detection config");
			if (::BhopFunc.IsPlayerAdmin(player))
			{
				ClientPrint(player,3,"  \"!bhop settings <setting> <value>\"	:	[ADMIN] change setting value");
			}
			ClientPrint(player,3,"  \"!bhop stats\"	:	show your bhop stats");
			ClientPrint(player,3,"  \"!bhop leaderboard\":	display the bhop leaderboard");
			ClientPrint(player,3,"  \"!bhop toggle\"	:	toggle bhop announcing for you");
			ClientPrint(player,3,"  \"!bhop toggle perfectjump\"	:	toggle perfect jump announcing for you");
			return true;
		}
		if (args[1].tolower() == "stats")
		{
			local pSet = ::BhopVars.PlayerSettings[pSID];
			local best = pSet["BestBhop"];
			if (best == null)
			{
				ClientPrint(player,3,"you have no stats tracked!");
				return true;
			}
			// ClientPrint(player,5,"\x01high score: \x04"+best["score"]+"\x01, total distance bhopped: \x04"+pSet["TotalDistanceBhopped"]+"\x01, total bhops: \x04"+pSet["TotalBhops"]+"\x01highest velocity: \x04"+pSet["HighestVelocity"]+"\x01");
			::BhopFunc.SendToAllNonIgnoredPlayers("\x01high score: \x04"+best["score"]+"\x01, total distance bhopped: \x04"+pSet["TotalDistanceBhopped"]+"\x01, total bhops: \x04"+pSet["TotalBhops"]+"\x01highest velocity: \x04"+pSet["HighestVelocity"]+"\x01");
			return true;
		}
		if (args[1].tolower() == "leaderboard")
		{
			::BhopFunc.DisplayLeaderboard(player);
			return true;
		}
		if (args[1].tolower() == "settings")
		{
			if (args.len() != 4)
			{
				ClientPrint(player,3,"ERROR: invalid number of args, need 4 got "+args.len());
				return true;
			}
			local varPath = ::ArgParse.Split(args[2], "|");
			if (varPath.len() == 0)
			{
				ClientPrint(player,3,"ERROR: invalid index");
				return true;
			}
			if (!::BhopFunc.IsPlayerAdmin(player))
			{
				ClientPrint(player,3,"you must be admin to use this commmand");
				return true;
			}
			
			local curTable = ::BhopVars.weakref();
			local lastTable = curTable;
			local lastKey = strip(varPath[0]);		

			foreach (i, keyName in varPath)
			{
				keyName = strip(keyName);
				if (keyName == "")
				{
					ClientPrint(player,3,"ERROR: invalid index");
				}
				if (!(keyName in curTable.ref()))
				{
					ClientPrint(player,3,"ERROR: couldnt find index for keyname: \""+keyName+"\"");
					return true;  // i forgot what this did  ? ??????????
				}
				try
				{
					lastTable = curTable;
					curTable = curTable.ref()[keyName].weakref();
					lastKey = keyName;
				}
				catch (e)
				{
					ClientPrint(player,3,"ERROR: "+e);
					return true;
				}
			}

			local foundVal = lastTable.ref()[lastKey];
			local foundType = typeof foundVal;
			// if (typeof lastTable.ref() 
			local replaceVal = args[3];
			try
			{
				local convVal;
				switch (foundType)
				{
					case "string":
						convVal = replaceVal;
						// lastTable.ref()[lastKey] <- replaceVal;
						break;
					case "integer":
						convVal = replaceVal.tointeger();
						// lastTable.ref()[lastKey] <- replaceVal.tointeger();
						break;
					case "float":
						convVal = replaceVal.tofloat();
						// lastTable.ref()[lastKey] <- replaceVal.tofloat();
						break;
					case "bool":
						if (replaceVal.tolower() == "true")
						{
							convVal = true;
							break;
						}
						if (replaceVal.tolower() == "false")
						{
							convVal = false;
							break;
						}
						ClientPrint(player,3,"ERROR: input is not of bool type: \""+replaceVal+"\"");
					default:
						ClientPrint(player,3,"ERROR: original value has invalid type: \""+foundType+"\"");
						return true;
						break;
				}
				local writeThingType = typeof lastTable.ref();
				if (writeThingType == "instance")
				{
					lastTable.ref()[lastKey] = convVal;
				}
				else
				{
					lastTable.ref()[lastKey] <- convVal;
				}
				return true;
			}
			catch (e)
			{
				ClientPrint(player,3,"ERROR1031: "+e);
				return true;
			}
			::BhopVars.ConfigAltered = true;
			ClientPrint(player,3,"set!");
			return true;
		}
		if (args[1].tolower() == "rules")
		{
			ClientPrint(player,3,"current bhop ruleset:");
			ClientPrint(player,3,"  tick leniency	:	"+::BhopVars.BunnyTickLeniency);
			ClientPrint(player,3,"  detection count	:	"+::BhopVars.BunnyDetectCount);
			ClientPrint(player,3,"scoring rules:");
			ClientPrint(player,3,"  bhop count mult	:	"+::BhopVars["ScoringSettings"]["BhopCountMult"]);
			ClientPrint(player,3,"  bhop velocity mult	:	"+::BhopVars["ScoringSettings"]["BhopAvgVelocityMult"]);
			return true;
		}
		if (args.len() == 2 && args[1].tolower() == "toggle")
		{
			if (::BhopFunc.IsPlayerIgnored(player))
			{
				::BhopFunc.IgnorePlayer(player, false);
				ClientPrint(player,3,"you are no longer ignored by the bhop detector!");
				return true;
			}
			::BhopFunc.IgnorePlayer(player);
			ClientPrint(player,3,"you will now be ignored by the bhop detector!");
			return true;
		}
		if (args.len() == 3 && args[1].tolower() == "toggle" && args[2].tolower() == "perfectjump")
		{
			if (::BhopFunc.IsPlayerPerfectJumpIgnored(player))
			{
				::BhopFunc.PerfectJumpIgnorePlayer(player, false);
				ClientPrint(player,3,"you will now be notified of your perfect jumps!");
				return true;
			}
			::BhopFunc.PerfectJumpIgnorePlayer(player);
			ClientPrint(player,3,"you will no longer be notified of your perfect jumps!");
			return true;
		}
	}

	function OnGameEvent_round_end(params)
	{
		if (::BhopVars.LeaderboardOnRoundEnd) 
		{
			::BhopFunc.DisplayLeaderboard();
		}
	}
}


::BhopFunc.loadFile();
::BhopFunc.AddBhopTicker();
::BhopFunc.AddConfigSaveTicker();
::BhopFunc.AddUtilityTicker();

__CollectEventCallbacks(::BhopEvent, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
