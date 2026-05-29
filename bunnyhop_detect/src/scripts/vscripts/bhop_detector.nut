// TODO
//  * save PlayerSettings each in their own file  ---  DONE
//  * localization & multi language support       ---  idk if will ever be added ,, until i can think of elegant solution probably will not be added
//                                                ---  problems include: 
//                                                       ---  individual players should be able to select language
//                                                       ---  would have to create intuitive solution to inserting variables
//                                                       ---  this solution would almost certainly be incredibly unintuitive as itd be basically random what information can be included in a string depending on the execution context of the print and the type of message that is being outputted
//                                                       ---  cant think of a good way to send this information to the function
//                                                       ---  the BhopCommand architecture would have to be entirely reliant on it , making the entire thing weird and not as universal of a system
//                                                       ---  having user generated localizations would be incredibly difficult to support
//                                                       ---  i dont actually know any language other then english so i dont even have a good way to test the usefulness of the system in its applicability to other languages
//  * add a time tracker that gets shown on !bhop stats  -- DONE
//  * add comments to the config.json  -- DONE
//  * fix tick leniency thing  -- DONE
//  * clear perfect jump text when u fail perfect jump ? (idk if should do this? actually make it default false) -- DONE - on line ~1400
//  * achievements
//  * milestone achievements, for bhop count, velocity, "make it to leaderboard", etc
//     * achievement for getting long bhop chain on red hp
//  * combo counter with extra text
//     * https://cdn.discordapp.com/attachments/1485135356624900116/1506123900336078878/image.png
//     * cat themed extra text ?
//        * fang, scratch, claw, kitty, hiss, spitfur, pawstorm. purrfect
//     * make it user extensible ?
//  * fix comments with multiple lines  -- DONE
//  * make local server host automatically admin  -- DONE
//  * adapt bhop score based on the groundTime of each jump  

// this happens if the script is not running in l4d2
if (!("IncludeScript" in getroottable()))
{
	dofile("implement_l4d2_utils.nut", true);
}


IncludeScript("meowlib/json.nut");
IncludeScript("meowlib/commands.nut");
IncludeScript("meowlib/meowutils.nut");




::BhopClasses <-
{
	
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
		return ::MeowUtils.CalculateVectorDistance(this.jumpPos, this.landPos);
	}

	function _tostring()
	{
		return ::Json.Serialize.ToString(this); 
	}
}

class ::BhopClasses.BhopChainData
{
	// </ json_type = "array", json_sub_type = ::BhopClasses.BhopData />
	</ json_ignore = true />
	bhopChain			= null;			// list[BhopData]
	bhopVels			= 0;			// float<velocity> (additive)
	maxVel				= 0;			// float<velocity>
	avgVel				= 0;			// float<velocity>
	</ json_ignore = true />
	groundTime			= 0;			// int<tick>
	score				= 0;			// float
	timeString			= "";
	numBhops			= null;
	</ json_ignore = true />
	player				= null;			// Player<entity>
	// </ json_ignore = true />
	playerSteamID		= null;			// string
	playerName			= null;			// string
	map					= null;			// string; not doing anything with this right now but wanted to track it anyway
	bhopTime			= null;			// float; will be the time of the bhop chain starting, then after score will be converted into duration of bhop

	constructor(p, steamid, bhop=null)
	{
		this.player = p;
		this.playerSteamID = steamid;
		this.bhopChain = [];
		this.bhopVels = 0;
		this.maxVel = 0;
		this.avgVel = 0;
		this.numBhops = null;
		this.map = Director.GetMapName();
		this.bhopTime = Time();

		if (this.player != null)
		{
			local tT = {};
			LocalTime(tT);
			this.timeString = tT["year"]+"/"+tT["month"]+"/"+tT["day"];
		}
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
	
	function GetNumBhops()
	{
		// - 1 because the original jump that started the chain is also counted, even though its not a bhop
		return this.bhopChain.len() - 1;
	}

	function IncrementAirTime()
	{
		this.bhopChain[this.bhopChain.len() - 1].airTime++;
	}

	/* function AverageVelocity()
	{
		// i do bhopChain.len() instead of GetNumBhops() cause like idk why change it i guess 
		// ok i didnt explain this well
		// so like basically at the start i did this.bhopChain.len() for the number of bhops 
		// but then found this was off by +1, so then i did the GetNumBhops, but then that would change
		// how the rest of the bhops in my database was scored , so i was like,  whatever it doesnt  matter

		if (this.numBhops == null) return this.bhopVels / this.bhopChain.len();
		return this.bhopVels / this.numBhops;
	} */

	function ChainDistance()
	{
		return ::MeowUtils.CalculateVectorDistance(this.bhopChain[0].jumpPos, this.bhopChain[this.bhopChain.len() - 1].landPos);
	}

	/* function GetScore(numBhops, avgVel, bhopCountMult, bhopAvgVelMult) // -> float
	{
		local jumpMult = numBhops * bhopCountMult;
		local velMult = avgVel * bhopAvgVelMult;

		return jumpMult * velMult;
	} */
	
	function GetScore(numBhops, vel, a, b)
	{
		local cMult;
		if (numBhops < 4 && vel > 350)
			cMult = 0.5;
		else
			cMult = 1;

		local dMult;
		if (numBhops < 5 && vel > 410)
			dMult = 0.5;
		else
			dMult = 1;

		local eMult = 1;
		/* if (vel > 280 || vel < 310)
			eMult += 1.25;
		if (vel < 280)
			eMult += -0.25;
		if (vel > 310)
			eMult += -0.25; */
		if (vel > 280)
			eMult += 0.25;

		local gMult;
		if (numBhops < 4)
			gMult = 1;
		else
			gMult = 1 + (0.05 * (numBhops - 3));

		local hMult;
		if (numBhops < 3)
			hMult = 1;
		else if (numBhops < 4)
		{
			if (vel < 120)
				hMult = 0.85;
			else
				hMult = 1;
		}
		else
		{
			// local a = 120 + (floor((numBhops - 4) / 2) * 20)
			local a = 120 * (pow(numBhops, 1.0/4.0));
			if (vel < a)
			{
				// hMult = 0.85 - (0.05 * (numBhops - 4))
				hMult = 0.85 - ((a / vel) - 1);
				if (hMult < 0.35)
					hMult = 0.35;
			}
			else
				hMult = 1;
		}

		local iMult;
		if (vel <= 10)
			iMult = 0;
		else
			iMult = 1;

		local jSum;
		if (vel > 220)
			jSum = 100;
		else
			jSum = 0;

		return (vel * cMult * dMult * eMult * gMult * hMult * iMult) + jSum;
	}

	function ScoreBhop()  // -> int|array[int,BestBhop]  (1 means not best bhop, 2 means user first bhop, 3 means user best bhop, 4 means first session bhop, 5 means best session bhop)
	{
		this.numBhops = this.GetNumBhops();
		this.avgVel = this.bhopVels / (numBhops + 1);
		// local bhopCountMult = ::BhopVars.ScoringSettings["BhopCountMult"];
		// local bhopAvgVelMult = ::BhopVars.ScoringSettings["BhopAvgVelocityMult"];
		
		// this.score = this.GetScore(numBhops, avgVel, bhopCountMult, bhopAvgVelMult);
		this.score = this.GetScore(this.numBhops, this.maxVel, 0, 0);
		this.score = score.tointeger();
		this.bhopTime = Time() - this.bhopTime;

		if (this.player == null || this.playerSteamID == null || ::BhopVars.PlayerSettings[this.playerSteamID].Banned)
		{
			return null;
		}

		// local pSID = ::MeowUtils.GetPlayerSteamID(this.player);
		local pSID = this.playerSteamID;
		this.playerName = this.player.GetPlayerName();

		/* if (!(pSID in ::BhopVars.SessionData) || ::BhopVars.SessionData[pSID].score < this.score)
		{
			::BhopVars.SessionData[pSID] <- this;
		} */
		
		::BhopVars.PlayerSettings[pSID]["TotalBhops"] += this.numBhops;
		::BhopVars.PlayerSettings[pSID]["TotalDistanceBhopped"] += this.ChainDistance();
		::BhopVars.PlayerSettings[pSID]["TotalTimeSpentBhopped"] += this.bhopTime;
		::BhopVars.PlayerSettings[pSID]["ConfigAltered"] = true;
		if (this.maxVel > ::BhopVars.PlayerSettings[pSID]["HighestVelocity"])
		{
			::BhopVars.PlayerSettings[pSID]["HighestVelocity"] = this.maxVel;
		}
		if (::BhopVars.PlayerSettings[pSID]["BestBhop"] == null || this.score > ::BhopVars.PlayerSettings[pSID]["BestBhop"].score)
		{
			local previousBest = ::BhopVars.PlayerSettings[pSID]["BestBhop"];
			::BhopVars.SessionData[pSID] <- this;  // if its the users best bhop that guarantees its their best session bhop
			
			::BhopVars.PlayerSettings[pSID]["BestBhop"] = this;

			// i need to evaluate if this should be added to leaderboard
			// read leaderboard -> check if (slots < numleaderboardslots || score > any in there) -> add to leaderboard & replace -> write leaderboard & player -> read it again
			// wait why do we read the leaderboard twice?
			::BhopFunc.ReadLeaderboard();
			local writeLb = false;
			if (::BhopVars.LeaderboardUsers.find(pSID) != null)
			{
				writeLb = true;
			}
			else if (::BhopVars.LeaderboardUsers.len() < BhopVars.NumLeaderboardSlots)
			{
				::BhopVars.LeaderboardUsers.append(pSID);
				// ::BhopVars.PlayerSettings[pSID].ConfigAltered = true;
				// ::BhopFunc.WritePlayerSetting(pSID);
				writeLb = true
			}
			else 
			{
				local lowestScore = 9999999;
				local lowestIndex = null;
				foreach (i, steamid in ::BhopVars.LeaderboardUsers)
				{
					if (::BhopVars.LeaderboardData[steamid]["score"] < lowestScore)
					{
						lowestScore = ::BhopVars.LeaderboardData[steamid]["score"];
						lowestIndex = i;
					}
				}
				if (lowestIndex != null && lowestScore < this.score)
				{
					::BhopVars.LeaderboardUsers.remove(lowestIndex);
					::BhopVars.LeaderboardUsers.append(lowestId);
					writeLb = true;
				}
			}
			if (writeLb)
			{
				::BhopVars.PlayerSettings[pSID].ConfigAltered = true;
				::BhopFunc.WritePlayerSetting(pSID);
				::BhopFunc.WriteLeaderboard();
				::BhopFunc.ReadLeaderboard();
			}
			
			if (previousBest == null) 
				return 2;  // this is the return code that means its the users first bhop record

			return [3, previousBest];
		}
		if (!(pSID in ::BhopVars.SessionData))
		{
			::BhopVars.SessionData[pSID] <- this;
			return 4;
		}
		if (this.score > ::BhopVars.SessionData[pSID]["score"])
		{
			local previousBest = ::BhopVars.SessionData[pSID];
			::BhopVars.SessionData[pSID] <- this;
			return [5, previousBest];
		}
		
		return 1;
	}
}

class ::BhopClasses.PlayerSettings
{
	</ json_ignore = true />
	ConfigAltered			= false;
	</ json_comment = "making this \"true\" makes every player in the server have access to Admin commands by default" />
	Admin					= false;
	</ json_comment = "change to \"true\" if by default you want players to be ignored by the bhop mod" />
	IgnoreBhop				= false;
	</ json_comment = "change to \"true\" if by default you want players to not see the perfect jump text" />
	IgnorePerfectJumps		= false;
	</ json_protected = true />
	TotalBhops				= 0;
	</ json_protected = true />
	HighestVelocity			= 0;
	</ json_protected = true />
	TotalDistanceBhopped	= 0;
	</ json_protected = true />
	TotalTimeSpentBhopped	= 0;
	</ json_type = ::BhopClasses.BhopChainData, json_protected = true />
	BestBhop				= null;
	</ json_protected = true />
	Name					= "";
	</ json_comment = "this defines if every player should be banned by default." />
	Banned					= false;
	</ json_comment = "this defines the default language that players will be set by default" />
	Language				= "en"
}

/* class ::BhopClasses.ScoringSettings
{
	BhopCountMult			= 0.2;
	BhopAvgVelocityMult		= 2.0;
} */

class ::BhopClasses.TimeDurationSettings
{
	</ json_comment = "display days" />
	Days					= true;
	</ json_comment = "display hours" />
	Hours					= true;
	</ json_comment = "display minutes" />
	Minutes					= true;
	</ json_comment = "display seconds" />
	Seconds					= true;
}

class ::BhopClasses.BhopConfig
{
	</ json_ignore = true />
	ConfigPath				= "meow_bhop_detect";
	</ json_ignore = true />
	ConfigAltered			= false;

	</ json_comment = "this defines how many bhops must be in a bhop chain before it will be announced" />
	BunnyDetectCount		= 3;
	</ json_comment = "this defines how many ticks of leniency there is before a bhop chain will end." />
	BunnyTickLeniency		= 2;
	</ json_comment = "this defines the minimum velocity that a player must have before it will start counting bhops" />
	BunnyMinStartingVel		= 0;
	</ json_comment = "this defines how long (in seconds) a player must be bhopping for in a chain in order for the mod to announce so in chat\nset to -1 to disable" />
	BunnyDetectDuration		= 30;

	// ScoringSettings			= ::BhopClasses.ScoringSettings();
	</ json_comment = "this defines how many leaderboard slots there are" />
	NumLeaderboardSlots		= 5;
	</ json_comment = "this defines whether to display the leaderboard when the game has ended" />
	LeaderboardOnGameEnd	= true;

	</ json_comment = "this defines whether to display to new players information about the mod" />
	NewPlayerIntroduction	= true;

	</ json_comment = "this is the prefix that goes before commands to the bhop mod" />
	CommandsPrefix			= "!bhop";
	
	</ json_comment = "these settings will be applied to all new players" />
	DefaultPlayerSettings	= ::BhopClasses.PlayerSettings();

	</ json_comment = "these are subdivisions of time that will be printed when a duration is shown\n\"true\" means that subdivision will be used" />
	TimeDurationSettings	= ::BhopClasses.TimeDurationSettings();

	// </ json_sub_type = ::BhopClasses.PlayerSettings />
	</ json_ignore = true />
	PlayerSettings			= {};			//	dict[steamID<str>, PlayerSettings[dict]]
	</ json_ignore = true />
	BunnyTickerEnt			= null;
	</ json_ignore = true />
	BunnyUtilsTickerEnt		= null;
	</ json_ignore = true />
	ConfigTickerEnt			= null;
	</ json_ignore = true />
	SecondTickerEnt			= null;
	</ json_ignore = true />
	JumpingList				= {}; 			//	dict[str<steamID>, BhopChainData]
	</ json_ignore = true />
	PlayerInitList			= [];			// list[userid]  -- NOTE: userid IS NOT STEAM ID!!!!!!!!!!!
											// this helps us keep track of what players are initialized
	</ json_ignore = true />
	CommandManager			= null;
	</ json_ignore = true />
	LeaderboardUsers		= null;			// list[pSID]  -- we can retrieve the data later as needed
	</ json_ignore = true />
	LeaderboardData			= null;			// table[pSID, ::BhopClasses.BhopChainData]
	</ json_ignore = true />
	SessionData				= null;			// table[pSID, ::BhopClasses.BhopChainData]
	</ json_ignore = true />
	build_num=153
}

printl("<bhop> loaded MeowBhopDetect script r"+::BhopClasses.BhopConfig.build_num+"  !!!")


::BhopVars <- ::BhopClasses.BhopConfig();



::BhopFunc <-
{
	function loadFile()
	{
		::MeowUtils.Log("MeowBhopDetect r"+::BhopVars.build_num+" :  successfully load !! yay!");
		
		::MeowUtils.Log("loaded bunny hop config:");
		::BhopFunc.ReadConfig();
		::MeowUtils.Log(::Json.Serialize.ToString(::BhopVars));
		::BhopFunc.SetCommandManager();
		::BhopFunc.WriteConfig();
		::BhopFunc.PopulatePlayerInitList();
		// for some reason , scripts can get ran multiple times before the server has actaully started, we instead read SessionData at the first UtilityTick()
		// ::BhopVars.SessionData = ::BhopFunc.ReadSessionData();
		
		// else
		// 	::BhopVars.SessionData = {};
		
		/* printl("  BunnyDetectCount="+::BhopVars.BunnyDetectCount);
		printl("  BunnyTickLeniency="+::BhopVars.BunnyTickLeniency);
		printl("  DefaultPlayerSettings="+::Json.Utils.WriteConfig()PrintThing(::BhopVars.DefaultPlayerSettings, true));
		printl("  PlayerSettings="+::Json.Utils.PrintThing(::BhopVars.PlayerSettings, true)); */
	}

	function WriteSessionData(reset=false)
	{
		if (::BhopVars.SessionData == null || ::BhopVars.SessionData.len() == 0)
		{
			::MeowUtils.Log("SessionData is empty, skipping write");
			return;
		}
		local path = ::BhopVars.ConfigPath+"/sessions/";
		if (reset)
		{
			local currentMap = Director.GetMapName();
			path = path+currentMap+".json";
		}
		else
		{
			local nextMap = ::MeowUtils.GetNextMapName();
			if (nextMap == null)  // this means no new session
				return;
			path = path+nextMap+".json";
		}
		::Json.Serialize.ToFile(path, ::BhopVars.SessionData)

		/* local a = ::Json.Utils.ClassToTable(::BhopVars.SessionData); 
		SaveTable("meow_bhop_detect_session_table", a);
		foreach (pSID, bhop in a)
		{
			printl("saving table: "+::Json.Serialize.ToString(bhop));
			SaveTable("meow_bhop_detect_session_table_"+pSID, bhop);
		}
		printl(::Json.Serialize.ToString(a)); */
	}

	function ReadSessionData(erase=true)
	{
		local currentMap = Director.GetMapName();
		local path = ::BhopVars.ConfigPath+"/sessions/"+currentMap+".json";
		local file = FileToString(path);
		if (!file || strip(file) == "") return {};
		local rDict = ::Json.Deserialize.String(file);
		if (typeof rDict != "table" || rDict.len() == 0) return {};

		// this is checking to make sure this is not the session data from a crashed game
		local testBhop = ::MeowUtils.TableValues(rDict)[0];
		local testTime = split(testBhop["timeString"], "/");  // YYYY/MM/DD
		testTime = {
			year  = testTime[0].tointeger(),
			month = testTime[1].tointeger(),
			day   = testTime[2].tointeger()
		}

		local curTime = {};
		LocalTime(curTime);
		if (testTime["year"] == curTime["year"] && testTime["month"] == curTime["month"] && testTime["day"] == curTime["day"])
			;;  // pass
		else if (testTime["year"] != curTime["year"])
		{
			if (testTime["year"] + 1 != curTime["year"])
				return {};
			if (testTime["month"] != 12 || testTime["day"] != 31 || curTime["month"] != 1 || curTime["day"] != 1)
				return {};
		}
		else if (testTime["month"] != curTime["month"])
		{
			// december & january already handled in above case
			if (testTime["month"] + 1 != curTime["month"])
				return {};
			// shortest month is 28 days, i dont wana do exceptions for leap years anbd wahtever 
			if (testTime["day"] < 28 || curTime["day"] != 1)
				return {};
		}
		// month changes & year changes handled in above cases
		else if (testTime["day"] + 1 != curTime["day"])
		{
			return {};
		} 

		local newDict = {};
		foreach (pSID, bhop in rDict)
		{
			newDict[pSID] <- ::Json.Deserialize.ExtractClassProperties(bhop, ::BhopClasses.BhopChainData);
		}

		// i give up trying to figure out save table it sucks
		/* local newDict = {};
		local rDict = {};
		RestoreTable("meow_bhop_detect_session_table", rDict);
		printl(::Json.Serialize.ToString(rDict));
		printl("getting things");
		foreach (pSID, bhop in rDict)
		{
			local a = {};
			RestoreTable("meow_bhop_detect_session_table_"+pSID, a);
			printl(::Json.Serialize.ToString(a));
			newDict[pSID] <- ::Json.Deserialize.ExtractClassProperties(a, ::BhopClasses.BhopChainData);
		}
		printl("done getting things"); */
		if (erase) StringToFile(path, "");
		return newDict;
	}

	function SetCommandManager()
	{
		if (::BhopVars.CommandManager != null) return;
		// ::BhopVars.CommandManager = ::Commands.CommandManager(::BhopCmds, "!bhop", ::Commands.HelpCommand);
		// printl("SetCommandManager()");
		::BhopVars.CommandManager = ::Commands.CommandManager(::BhopCmds, ::BhopVars.CommandsPrefix, ::BhopFunc.IsPlayerAdmin, ::Commands.HelpCommand);
	}

	// i should remove players manifest entirely, completely unnecessary and bad

	/* function ReadPlayersManifest()  // -> array<string>
	{
		local path = ::BhopVars.ConfigPath+"/playersmanifest";
		local playerIds = [];
		local fNum = 1;
		while (true)
		{
			local file = FileToString(path+fNum+".txt");
			if (!file) break;
			playerIds.extend(split(file, "\n"));
		}
		return playerIds;
	}

	function WritePlayersManifest()
	{
		local l = ::BhopFunc.ReadPlayersManifest();
		local steamids = ::MeowUtils.TableKeys(::BhopVars.PlayerSettings);
		// filters out only steamids that have a len greater than 10
		steamids = steamids.filter(@(i, v) v.len() > 10);
		// slices off the initial STEAM_1:1:
		// steamids.apply(@(v) v.slice(10));

		steamids.apply(@(v) ::MeowUtils.StringReplace(v.slice(6), ":", "_")); 

		// printl("steamidstype="+typeof steamids);
		// printl("ltype="+typeof l);
		
		local r = ::MeowUtils.MergeArrays(l, steamids);
		::MeowUtils.Log("len(r)="+r.len()+", len(steamids)="+steamids.len()+", len(l)="+l.len());
		// this means nothing new was added,,,, probably,,,  --  mmaybe ,,  I HOPE!!!!!!!!!!!! SHINJITE!!!!!
		if (r.len() == steamids.len() && steamids.len() == l.len()) return;
		local path = ::BhopVars.ConfigPath+"/playersmanifest.txt";
		StringToFile(path, ::MeowUtils.ArrayJoin(r, "\n"));
	} */

	

	function ReadPlayerFile(steamid)  // -> ::BhopClasses.PlayerSettings || null
	{
		local spli = split(steamid, ":");
		if (spli.len() != 3)
			return null;
		// local playerPath = spli[0]+"";
		// local fullSteamid = "STEAM_"+spli[0]+":"+spli[1]+":"+spli[2];
		// ::MeowUtils.Log("fullSteamid=\""+fullSteamid+"\"");
		local pSetPath = ::BhopVars.ConfigPath+"/players/"+::MeowUtils.StringReplace(strip(steamid).slice(6), ":", "_")+".json";
		// ::MeowUtils.Log("pSetPath="+pSetPath);
		// ::MeowUtils.Log("fullSteamid="+fullSteamid);
		local pSet;
		try
		{
			// if the file doesnt exist, just returns null
			pSet = ::Json.Deserialize.FileToClass(pSetPath, ::BhopClasses.PlayerSettings);
			// if (pSet == null) continue;
		}
		catch(error)
		{
			throw "MeowBhopDetect player config parse error for playerid="+steamid+": "+error;
		}
		// printl("NEIWMMEOW");
		// printl("pSet="+::Json.Serialize.ToString(pSet));
		return pSet;
	}

	function ReadLeaderboard()
	{
		local path = ::BhopVars.ConfigPath+"/leaderboard.json";
		local file = FileToString(path);
		if (!file)
		{
			::BhopVars.LeaderboardUsers = [];
			::BhopVars.LeaderboardData = {};
			return;
		}
		
		::BhopVars.LeaderboardUsers = ::Json.Deserialize.String(file);
		if (::BhopVars.LeaderboardData == null)
			::BhopVars.LeaderboardData = {};
		foreach (i, steamid in ::BhopVars.LeaderboardUsers)
		{
			// printl("meow");
			local a = ::BhopFunc.ReadPlayerFile(steamid);
			if (a == null || a.BestBhop == null)
				continue;
			// printl("steamid="+steamid);

			// printl("a="+a);
			// printl(::Json.Serialize.ToString(a));
			::BhopVars.LeaderboardData[steamid] <- a.BestBhop;
		}
	}

	// should only be written when certain current leadboard has new content
	function WriteLeaderboard()
	{
		::Json.Serialize.ToFile(::BhopVars.ConfigPath+"/leaderboard.json", ::BhopVars.LeaderboardUsers);
	}

	function WriteVersion()
	{
		StringToFile(::BhopVars.ConfigPath+"/version.txt", ::BhopVars.build_num.tostring());
	}

	function ReadConfigHandleVersioning()  // this will only get ran if the bhop config file already exists
	{
		local path = ::BhopVars.ConfigPath+"/version.txt";
		local file = FileToString(path);
		local version;
		//printl("file="+file);
		if (!file)  // this means we are pre version r137 or something idk
			version = 137;
		else
		{
			try
			{
				version = file.tointeger();
			}
			catch (e)
			{
				::MeowUtils.Log("ERROR!!!! version.txt is corrupted!!! cannot handle versioning updates!!!");
				return;
			}
		}
		if (version != ::BhopVars.build_num)
			::BhopFunc.WriteVersion();
		//printl("version="+version);
		// put other versioning stuff here
		if (version <= 137)
		{
			//printl("blahg");
			::BhopVars.BunnyTickLeniency--;
			if (::BhopVars.BunnyTickLeniency < 1)
				::BhopVars.BunnyTickLeniency = 1;
			//::BhopVars.ConfigAltered = true;
		}
	}

	function ReadConfig(doPlayers=true)
	{
		local path = ::BhopVars.ConfigPath+"/config.json";
		local file = FileToString(path);

		if(!file)
		{
			::MeowUtils.Log("not file !!");
			::BhopFunc.WriteConfig(path);
			::BhopFunc.riteVersion();
			return;
		}
		
		
		
		// ::MeowUtils.Log("file="+file);

		//try
		//{
			local newBhopVars = ::Json.Deserialize.StringToClass(file, ::BhopClasses.BhopConfig);
			// ::BhopVars <- 
			if (::BhopVars.SessionData != null)
				newBhopVars.SessionData = ::BhopVars.SessionData;
			if (::BhopVars.CommandManager != null)
				newBhopVars.CommandManager = ::BhopVars.CommandManager;
			::BhopVars <- newBhopVars;
		
		::BhopFunc.ReadConfigHandleVersioning();

		//}
		//catch(error)
		//{
		//	throw "MeowBhopDetect config parse error: "+error;
		//}
		//::BhopFunc.SetCommandManager();

		// if (!doPlayers) return;

		::BhopFunc.ReadLeaderboard();
		//::BhopFunc.WriteConfig();

		/* local r = ::BhopFunc.ReadPlayersManifest();
		
		foreach (steamid in r)
		{
			local pSet = ::BhopFunc.ReadPlayerFile(steamid);

			// we need to only add the top NumLeaderboardSlots best

			if (pSet == null || pSet.BestBhop == null) 
				continue;
			if (::BhopVars.PlayerSettings.len() < ::BhopVars.NumLeaderboardSlots)
			{
				::BhopVars.PlayerSettings[fullSteamid] <- pSet;
				continue;
			}
			// TODO: test dis  -- i did but also im scrapping dis code xdddddddddddddd
			local lowestScore = 999999999;
			// if (pSet.BestBhop != null) lowestScore
			local lowestId = null;
			
			foreach (theId, setting in ::BhopVars.PlayerSettings) 
			{
				if (setting.BestBhop == null) 
				{
					lowestId = theId;
					break;
				}
				if (setting.BestBhop.score < lowestScore && setting.BestBhop.score < pSet.BestBhop.score)
				{
					lowestScore = setting.BestBhop.score;
					lowestId = theId;
				}
			}
			if (lowestId != null)
			{
				delete ::BhopVars.PlayerSettings[lowestId];
				::BhopVars.PlayerSettings[fullSteamid] <- pSet;
			}
		} */
		// ::MeowUtils.Log("::BhopVars.PlayerSettings="+::Json.Serialize.ToString(::BhopVars.PlayerSettings));
	}

	function WritePlayerSetting(steamid, pSet=null)
	{
		if (steamid.len() < 10) return;
		//                 remove starting "STEAM_"
		local configName = steamid.slice(6);  // 1:1:######
		local configSplit = split(configName, ":");
		configName = configSplit[0]+"_"+configSplit[1]+"_"+configSplit[2];
		local fName = ::BhopVars.ConfigPath+"/players/"+configName+".json";
		if (pSet == null) pSet = ::BhopVars.PlayerSettings[steamid];
		if (!pSet.ConfigAltered) 
		{
			// dont think i need to do this, player data is loaded when they join
			/* try
			{
				local c = ::Json.Deserialize.FileToClass(fName, ::BhopClasses.PlayerSettings);
				if (c != null)
				{
					::BhopVars.PlayerSettings[steamid] <- c;
					continue;
				}
			}
			catch (e)
			{
				// sex  -- hehe
			} */
			return;
		}
		
		::Json.Serialize.ToFile(fName, pSet);
		if (steamid in ::BhopVars.PlayerSettings)
			::BhopVars.PlayerSettings[steamid].ConfigAltered = false;
	}

	function WritePlayerSettings()
	{
		foreach (steamid, pSet in ::BhopVars.PlayerSettings)
		{
			::BhopFunc.WritePlayerSetting(steamid, pSet);
		}
		// ::BhopFunc.WritePlayersManifest();
	}

	function WriteConfig(path=null)
	{
		if (path == null) path = ::BhopVars.ConfigPath+"/config.json";
		// printl("WriteConfig()");
		local opts = ::Json.Serialize.SerializerOptions();
		opts.comments = true;
		opts.serializeProtected = false;
		::Json.Serialize.ToFile(path, ::BhopVars, opts);

		::BhopFunc.WritePlayerSettings();  // AAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH  --  me too
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
			if (userid == null) continue;
			if (::BhopFunc.IsPlayerInInitList(userid))
			{
				continue;
			}
			::MeowUtils.Log("initiating player: "+player.GetPlayerName());
			::BhopVars.PlayerInitList.append(userid);
		}
	}

	function SendToAllNonIgnoredPlayers(message)
	{
		local player = null;
		while (player = Entities.FindByClassname(player, "player"))
		{
			if (IsPlayerABot(player))
			{
				continue;
			}
			local steamid = ::MeowUtils.GetPlayerSteamID(player);
			if (IsPlayerIgnored(steamid))
			{
				// printl(player.GetPlayerName()+" was ignored SendToAllNon");
				continue;
			}
			::MeowUtils.ClientPrintSplit(player, message);
		}
	}

	function IgnorePlayer(steamid, ignore=true)
	{
		local pIgnored = ::BhopFunc.IsPlayerIgnored(steamid);
		if (ignore == pIgnored) return false;
		// ::BhopVars.ConfigAltered = true;
		::BhopVars.PlayerSettings[steamid]["ConfigAltered"] = true;
		::BhopVars.PlayerSettings[steamid]["IgnoreBhop"] = ignore;
		
		return true;
	}

	function PerfectJumpIgnorePlayer(steamid, ignore=true)
	{
		local pIgnored = ::BhopFunc.IsPlayerPerfectJumpIgnored(steamid);
		if (pIgnored == ignore) return false;
		// ::BhopVars.ConfigAltered = true;
		::BhopVars.PlayerSettings[steamid]["ConfigAltered"] = true;
		::BhopVars.PlayerSettings[steamid]["IgnorePerfectJumps"] = ignore;
		
		return true;
	}

	function IsPlayerIgnored(steamid)
	{
		// printl("IsPlayerIgnored(): "+::BhopVars.PlayerSettings[playerSID]["IgnoreBhop"]);
		if (!(steamid in ::BhopVars.PlayerSettings))
		{
			// by default we ignore everyone who hasnt been initialized in the PlayerSettings
			return true;
		}
		return ::BhopVars.PlayerSettings[steamid]["IgnoreBhop"];
	}

	function IsPlayerPerfectJumpIgnored(steamid)
	{
		if (!(steamid in ::BhopVars.PlayerSettings))
		{
			// by default we ignore everyone who hasnt been initialized in the PlayerSettings
			return true; 
		}
		return ::BhopVars.PlayerSettings[steamid]["IgnorePerfectJumps"];
	}

	function IsPlayerAdmin(steamid)
	{
		// ::MeowUtils.Log("IsPlayerAdmin(): steamid="+steamid);
		local host = GetListenServerHost();
		try 
		{
			if (host != null && "GetNetworkIDString" in host && host.GetNetworkIDString() == steamid)
				return true;
		}
		catch (e)
		{
			// previous shouldnt fail but if it does probably cause of dedicated server acitivitys
		}

		if (!(steamid in ::BhopVars.PlayerSettings))
		{
			// ::MeowUtils.Log("IsPlayerAdmin(): steamid not found");
			return false;
		}
		return ::BhopVars.PlayerSettings[steamid]["Admin"];
	}

	

	function DisplayLeaderboard(player=null, session=false)
	{
		// "\x01high score: \x04"+best["score"]+"\x01, total distance bhopped: \x04"+pSet["TotalDistanceBhopped"]+"\x01, total bhops: \x04"+pSet["TotalBhops"]+"\x01highest velocity: \x04"+pSet["HighestVelocity"]+"\x01"
		// ::BhopFunc.SendToAllNonIgnoredPlayers
		// ::BhopVars.NumLeaderboardSlots

		// {"steamID": "", "playerName": "", "score": 0.0, "numBhops": 0, "maxVel": 0.0, "avgVel": 0.0}

		local bestBhops;  // list[dict]
		// idk if returning 0 is good here since like i think it means the thing thinks that they are equal ? wait i think itlll work out .......... i hope 
		/* local MeowCompare = function (a, b)
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
		} */
		local SessionCompare = function (a, b)
		{
			if (a["score"] > b["score"])
				return 1;
			if (a["score"] < b["score"])
				return -1;
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
		// oh gyatt this is so bad dddddddddddddddddddddddddddddd aaahhhhhhh h 
		local tVals;
		if (session)
		{
			// printl("SessionData="+::BhopVars.SessionData);
			// printl("CommandManager="+::BhopVars.CommandManager);
			if (::BhopVars.SessionData.len() == 0)
			{
				if (player != null)
					ClientPrint(player, 5, "no bhops tracked this session!");
				return;
			}
			tVals = ::MeowUtils.TableValues(::BhopVars.SessionData);
			tVals.sort(SessionCompare);
			local awawawa = "session leaderboard:"
			if (player == null)
				::BhopFunc.SendToAllNonIgnoredPlayers(awawawa);
			else
				ClientPrint(player, 5, awawawa);
			// tVals.reverse();
		
			/* if (tVals.len() > ::BhopVars.NumLeaderboardSlots)
			{
				tVals = tVals.slice(0, ::BhopVars.NumLeaderboardSlots);
			}	
			bestBhops = tVals; */
		}
		else
		{
			tVals = ::MeowUtils.TableValues(::BhopVars.LeaderboardData);
			// tVals.sort(MeowCompare);
			//printl("precompare");
			tVals.sort(SessionCompare);
			//printl("compared");
			// tVals.reverse();
		
			/* if (tVals.len() > ::BhopVars.NumLeaderboardSlots)
			{
				tVals = tVals.slice(0, ::BhopVars.NumLeaderboardSlots);
			}	
			bestBhops = tVals; */
		}
		//printl("passed tVals");
		tVals.reverse();
		if (tVals.len() > ::BhopVars.NumLeaderboardSlots)
		{
			tVals = tVals.slice(0, ::BhopVars.NumLeaderboardSlots);
		}	
		bestBhops = tVals;
		local leaderboardSlot = 1;
		
		// local s = "";
		// if (bestBhops.len() == 0)
		
		foreach (i, t in bestBhops)
		{
			// if (!session && t["BestBhop"] == null) continue;
			
			local name;
			local score;
			local numBhops;
			local maxVel;
			local avgVel;

			name = t["playerName"]; // ::BhopVars.PlayerSettings[t["playerSteamID"]]["Name"];
			score = t["score"];
			numBhops = t["numBhops"];
			maxVel = t["maxVel"];
			avgVel = t["avgVel"];
			
			/* if (session)
			{
				name = ::BhopVars.PlayerSettings[t["playerSteamID"]]["Name"];
				score = t["score"];
				numBhops = t["numBhops"];
				maxVel = t["maxVel"];
				avgVel = t["avgVel"];
			}
			else
			{
				name = t["Name"];
				score = t["BestBhop"]["score"];
				numBhops = t["BestBhop"]["numBhops"];
				maxVel = t["BestBhop"]["maxVel"];
				avgVel = t["BestBhop"]["avgVel"];
			} */
			
			// l4d2 has 255 char message limit so this is really pushing it   -- shut up baka   I WONT LISTEN TO YOU ! !!!!
			local s = "  \x03"+leaderboardSlot+"\x01: \x04"+name+"\x01 ";
			// if (!session) s = s+"\x05("+t["BestBhop"]["timeString"]+")\x01, " 
			if (!session) s = s+"\x05("+t["timeString"]+")\x01, ";
			s = s+"score: \x05"+score+"\x01, bhops: \x05"+numBhops+"\x01, max speed: \x05"+maxVel+"\x01, avg speed: \x05"+avgVel+"\x01";
			// local s = "  \x03"+leaderboardSlot+"\x01: \x04"+t["Name"]+"\x01 score: \x05"+t["BestBhop"]["score"]+"\x01, bhops: \x05"+t["BestBhop"]["bhopChain"].len()+"\x01, max speed: \x05"+t["BestBhop"]["maxVel"]+"\x01, avg speed: \x05"+t["BestBhop"].AverageVelocity()+"\x01";
			// s += "  \x03"+leaderboardSlot+"\x01: \x04"+t["Name"]+"\x01 \x05("+t["BestBhop"]["timeString"]+")\x01, score: \x05"+t["BestBhop"]["score"]+"\x01, bhops: \x05"+t["BestBhop"]["bhopChain"].len()+"\x01, max speed: \x05"+t["BestBhop"]["maxVel"]+"\x01, avg speed: \x05"+t["BestBhop"].AverageVelocity()+"\x01\n";
			leaderboardSlot++;
			if (player == null)
			{	
				// dis sucks xddddddddddddddddddddddddddddddddddddddddd   its 2 bcs we  increment it above dis since theres a continue below ddis  and  NO  i WILL NOT USE A ELSE BLOCK!!! I HATE ELSE 
				//   -- idk wut i was trying to say with this ??  --- wtf amm i even doing 
				if (leaderboardSlot == 2 && !session)
					::BhopFunc.SendToAllNonIgnoredPlayers("server leaderboard:");
				::BhopFunc.SendToAllNonIgnoredPlayers(s);
				continue;
			}
			if (leaderboardSlot == 2 && !session)
				ClientPrint(player, 5, "server leaderboard:");
			ClientPrint(player, 5, s);
		}
		// remove last "\n"
		/* s = s.slice(0, -1);
		if (player == null)
		{
			::BhopFunc.SendToAllNonIgnoredPlayers(s);
			return;
		} */
		// ClientPrint(player, 5, s);
	}

	function IsPlayerInInitList(userid)
	{
		if (::BhopVars.PlayerInitList.find(userid) != null)
		{
			return true;
		}
		return false;
	}

	function ShouldIgnorePlayer(userid, player)
	{
		if (IsPlayerABot(player))
		{
			return true;
		}
		
		if (::BhopFunc.IsPlayerInInitList(userid))
		{
			::MeowUtils.Log("player "+player.GetPlayerName()+" in init list, ignoring...");
			// ::MeowUtils.Log(::Json.Serialize.ToString(::BhopVars.PlayerInitList));
			return true;
		}

		if (!::MeowUtils.IsAlive(player))
		{
			return true;
		}
		// i dont wanna do this here, i want the banned player to be ablee to use the mod and everything but just have no one else see the things they do
		/* local pSID = player.GetNetworkIDString();
		if (::BhopVars.PlayerSettings[pSID].Banned)
			return true; */
		return false;
	}

	function EnsurePlayerSettings(player, pName, steamid=null)
	{
		if (steamid == null) steamid = ::MeowUtils.GetPlayerSteamID(player);
		// local pName = player.GetPlayerName();
		// printl("EnsurePlayerSettings("+pName+")");
		// local pSID = ::BhopFunc.GetPlayerSteamID(player);
		if (IsPlayerABot(player))
		{
			// printl("player a bot: "+player.GetPlayerName())
			// return false;
			return true;
		}
		/* if (["BOT", ""].find(pSID) != null)
		{
			return false;
		} */
		// printl("player "+pName+" pSID="+pSID);
		if (strip(steamid).len() < 10 || strip(steamid).slice(0, 6) != "STEAM_")
		{
			::MeowUtils.Log("player "+pName+" has invalid steamid, skipping...");
			return false;
		}
		// TODO
		// i forgot if i fixed this  --  still dont know  --  still dont know 
		// AAAHHH ITS BUGGED ITS BUGGED AHH
		// ok so write config when it says its altered
		// otherwise read 
		// should try to read file first, then check if its in player settings
		// printl("Ensure(): steamid="+steamid);
		// wtf?? how did this line of code still stay ?? its been outdated for mmonths
		// local fPath = ::BhopVars.ConfigPath+"/players/"+strip(steamid).slice(10)+".json"
		local fPath = ::BhopVars.ConfigPath+"/players/"+::MeowUtils.StringReplace(strip(steamid).slice(6), ":", "_")+".json";
		local fi = FileToString(fPath);
		//::MeowUtils.Log("fPath=\""+fPath+"\"");
		if (fi == null)
		{
			if (!(steamid in ::BhopVars.PlayerSettings))
			{
				::MeowUtils.Log("setting playersettings[steamid] for player "+pName);
				::BhopVars.PlayerSettings[steamid] <- ::BhopClasses.PlayerSettings();
				if (::BhopVars.NewPlayerIntroduction)
				{
					ClientPrint(player, 5, "\x01"+"hello \x04"+pName+"\x01! you seem to be new to MeowBhopDetect!");
					ClientPrint(player, 5, "\x01"+"enter \"\x05"+::BhopVars.CommandsPrefix+" help\x01\" to see the help command, and do \"\x05!bhop toggle\x01\" to enable/disable me!");
				}
				// ClientPrint(player, 5, "\x04"+"elitezrule2\x01 is currently testing this mod, expect bugs!");
				// ClientPrint(player, 5, "\x01"+"feedback is welcome!");
				// dont need to set configaltered since it 100% runs later  -- dis is bcs the pName changes
			}
		}
		else
		{
			::MeowUtils.Log("reading playersettings[steamid] json file for player "+pName);
			try
			{
				::BhopVars.PlayerSettings[steamid] <- ::Json.Deserialize.StringToClass(fi, ::BhopClasses.PlayerSettings);
			}
			catch (e)
			{
				throw "error reading playersettings[steamid] json file \""+fPath+"\", "+e;
			}
		}

		if (::BhopVars.PlayerSettings[steamid].Name != pName)
		{
			::BhopVars.PlayerSettings[steamid].Name = pName;
			// ::BhopVars.ConfigAltered = true;
			::BhopVars.PlayerSettings[steamid].ConfigAltered = true;
		}
		if (::BhopVars.PlayerSettings[steamid].Banned)
		{
			ClientPrint(player, 5, "\x01"+"for your attention: i regret to inform you of the following,");
			ClientPrint(player, 5, "\x01"+"you are currently \x04"+"BANNED\x01, your achievements will not be \x04"+"ACKNOWLEDGED\x01");
		}
		// ::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
		return true;
	}

	function GetSteamIDFromUserString(playerString)  // -> pSID || null
	{
		if (typeof playerString != "string")
			return null;
		// checking for steam id match
		if (playerString in ::BhopVars.PlayerSettings)
			return playerString;
		local lowPlayerString = playerString.tolower();

		playerString = playerString.tolower();

		local nameMatch = null;
		foreach (_bhop in ::BhopVars.LeaderboardData)
		{
			if (_bhop.playerSteamID == playerString)
				return _bhop.playerSteamID;  // ::BhopFunc.ReadPlayerFile(_bhop.playerSteamID);
			if (_bhop.playerName.tolower() == lowPlayerString)
			{
				nameMatch = _bhop.playerSteamID;
				//pSet = ::BhopFunc.ReadPlayerFile(_bhop.playerSteamID);
				//if (pSet == null)
				//	break;
				//found = true;
				//break;
			}
		}

		// the priority goes like this 
		// 1. the steamID in ::BhopVars.PlayerSettings
		// 2. the steamID in ::BhopVars.LeaderboardData
		// 3. the name in ::BhopVars.PlayerSettings
		// 4. the name in ::BhopVars.LeaderboardData

		foreach (pSID, _pSet in ::BhopVars.PlayerSettings)
		{
			if (_pSet["Name"].tolower() == lowPlayerString)
				return pSID;
		}
		
		if (nameMatch != null)
			return nameMatch;
		return null;
	}

	function GetPlayerSettingsFromSteamID(pSID)  // -> pSet || null
	{
		if (pSID in ::BhopVars.PlayerSettings)
			return ::BhopVars.PlayerSettings[pSID];
		return ::BhopFunc.ReadPlayerFile(pSID);
	}
	
	function DurationToString(duration, days=null, hours=null, minutes=null, seconds=null)  // -> str
	{
		if (days == null)
			days = ::BhopVars.TimeDurationSettings.Days
		if (hours == null)
			hours = ::BhopVars.TimeDurationSettings.Hours
		if (minutes == null)
			minutes = ::BhopVars.TimeDurationSettings.Minutes
		if (seconds == null)
			seconds = ::BhopVars.TimeDurationSettings.Seconds
		//printl("days="+days+", hours="+hours+", minutes="+minutes+", seconds="+seconds);
		//printl("duration="+duration);
		local amounts = ::MeowUtils.DurationToUnits(duration, days, hours, minutes, seconds);
		//printl("amounts="+::Json.Serialize.ToString(amounts, 0));
		local rStr = "";
		foreach (u in amounts.slice(0, -1))
		{
			if (u[1] == 0)
				continue;
			rStr += u[1]+u[0]+" ";
			if (u[0] == "d")
			{wouldnt effect 99% of use
				rStr += "("+(u[1] * 24).tointeger()+"h) ";
			}
		}
		local u = amounts[amounts.len()-1];
		//printl("u=["+u[0]+", "+u[1]+"]");
		rStr += ::MeowUtils.DecimalRound(u[1], 1)+u[0];
		return rStr;
	}

	function GetPlayerLanguage(steamid)
	{
		if (!(steamid in ::BhopVars.PlayerSettings))
			return "en";
		return ::BhopVars.PlayerSettings[steamid]["Language"];
	}

	//                                string, table
	function StyleLocalizedStringCode(code,   extraInfos)  // -> string
	{
		local white = "\x01";
		local brightGreen = "\x03";
		local orange = "\x04";
		local oliveGreen = "\x05";
		switch (code)
		{
			case "LEADERBOARD_SLOT":
				return brightGreen+extraInfos["leaderboardSlot"]+white;
			case "NAME":
				return orange+"\""+extraInfos["name"]+"\""+white;
			case "STEAMID":
				return brightGreen+"\""+extraInfos["steamID"]+"\""+white;

			case "TIME_STRING":
				return oliveGreen+"("+extraInfos["timeString"]+")"+white;
			case "SCORE":
				return oliveGreen+extraInfos["score"]+white;
			case "NUM_BHOPS":
				return oliveGreen+extraInfos["numBhops"]+white;
			case "TOP_SPEED":
				return oliveGreen+extraInfos["topSpeed"].tointeger()+white;
			case "AVG_SPEED":
				return oliveGreen+extraInfos["avgSpeed"].tointeger()+white;
			case "SPEED_PERFECTJUMP":
				return extraInfos["speed"].tointeger();
			case "DURATION":
				return orange+extraInfos["duration"]+white;
			case "SCORE_DIFFERENCE":
				return oliveGreen+"+"+extraInfos("scoreDifference")+white;

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
			
			default:
				return null;
		}
	}

	//                          string, string,  table
	function GetLocalizedString(path,   steamid, extraInfos)
	{
		local pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
		if (pSet == null)
			throw "GetLocalizedString error: steamid  coudlnt get the playet serting sfile";
		
		local lang = ::EN_US;  // TODO: make this like a thing or something idk

		local foundVal = ::MeowUtils.IndexTableByString(path, lang);

		local ex = regexp("%%([A-Z_]+?)%%");
		
		// local test =  "%%NAME%%";
		//local test = "%%NAME%% got %%NUM_BHOPS%% bunnyhop in a row (score: %%SCORE%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%)";
	
		printl(ex.capture(test));
		local res;
		local start = 0;
		local formattedString = foundVal;
		while (res = ex.capture(foundVal, start))
		{
			start = res[0].end;
			local full_match = test.slice(res[0].begin, res[0].end);
			local code = test.slice(res[1].begin, res[1].end);
			local formattedCode = ::BhopFunc.StyleLocalizedStringCode(code, extraInfos);
			formattedString = ::MeowUtils.StringReplace(formattedString, full_match, formattedCode);

			//printl("match=("+res[0].begin+"-"+res[0].end+")="+test.slice(res[0].begin, res[0].end));
			//printl("match=("+res[1].begin+"-"+res[1].end+")="+test.slice(res[1].begin, res[1].end));
			//printl();
		}
		return formattedString;
	}
}

// this is for the various timing related entities bhop detect spawns
::BhopEnts <-
{
	// TickTracker = 0,

	function CheckBhop(player, steamid)
	{
		if (::BhopVars.JumpingList[steamid].groundTime > ::BhopVars.BunnyTickLeniency)
		{
			local pName = player.GetPlayerName();
			// local speed = this.GetPlayerSpeed(player);
			local bhopChain = ::BhopVars.JumpingList[steamid];
			
			local count = bhopChain.GetNumBhops();
			// local topspeed = bhopChain.maxVel.tointeger();
			// local avgspeed = bhopChain.AverageVelocity().tointeger();
			if (count >= ::BhopVars.BunnyDetectCount)
			{
				local best = bhopChain.ScoreBhop();
				local topspeed = bhopChain.maxVel.tointeger();
				local avgspeed = bhopChain.avgVel.tointeger();
				// chat message length limut is 255 char
				// idk whether to add bhop duration on this
				local msg = "\x04"+pName+"\x01 got \x05"+count+"\x01 bunnyhop"+((count > 1)?"s":"")+ " in a row (top speed: \x05"+topspeed+"\x01, avg speed: \x05"+avgspeed+"\x01, score: \x05"+bhopChain.score+"\x01)";
				if (::BhopVars.BunnyDetectDuration > 0 && bhopChain.bhopTime > ::BhopVars.BunnyDetectDuration)
					msg += "\n\x04"+pName+"\x01 bhopped for \x04"+::BhopFunc.DurationToString(bhopChain.bhopTime, false, false, true, true)+"\x01 straight!";
				if (::BhopVars.PlayerSettings[steamid].Banned)
				{
					::MeowUtils.ClientPrintSplit(player, msg);
					return false;
				}
				::BhopFunc.SendToAllNonIgnoredPlayers(msg);
				if (best == 2)
				{
					::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 got their first bunnyhop record!");
				}
				else if (typeof best == "array")
				{
					if (best[0] == 3)
						::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 beat their bunnyhop record! \x05+"+(bhopChain.score - best[1].score)+"\x01 points!");
					else if (best[0] == 5)
						::BhopFunc.SendToAllNonIgnoredPlayers("\x04"+pName+"\x01 beat their session bunnyhop record! \x05+"+(bhopChain.score - best[1].score)+"\x01 points!");
				}
				// ClientPrint(null,5,"\x04"+pName+"\x01 got \x05"+count+"\x01 bunnyhop"+((count > 1)?"s":"")+ " in a row (top speed: \x05"+topspeed+"\x01)");
			}
			// printl("checkBhop(): failure");
			return false;
		}

		return true;
	}

	function BhopTick() 
	{
		// ::BhopEnts.TickTracker++;
		local markedForDeletion = [];  // list[steamID<str>]
		foreach (steamid, bhopChain in ::BhopVars.JumpingList)
		{
			local player = bhopChain.player;  // ::BhopFunc.GetPlayerFromSteamID(steamid);
			local pUserID = player.GetPlayerUserId();
			if (player == null)
			{
				::MeowUtils.Log("couldnt get player from bhopChain");
				markedForDeletion.append(steamid);
				continue;
			}
			
			if (::BhopFunc.IsPlayerIgnored(steamid))
			{
				// ::MeowUtils.Log("BhopTick(): ignoring player");
				markedForDeletion.append(steamid);
				continue;
			}
			if (::BhopFunc.ShouldIgnorePlayer(pUserID, player))
			{
				// ::MeowUtils.Log("BhopTick(): should ignoring player");
				markedForDeletion.append(steamid);
				continue;
			}

			if (!(::MeowUtils.IsEntityOnGroundVSLib(player))) 
			{
				// printl("BhopTick(): player not on ground");
				::BhopVars.JumpingList[steamid].IncrementAirTime();
				::BhopVars.JumpingList[steamid].groundTime = 0;
				continue;
			}

			local bhopChainLen = ::BhopVars.JumpingList[steamid].bhopChain.len();
			if (::BhopVars.JumpingList[steamid].bhopChain[bhopChainLen - 1].landPos == null) 
			{
				::BhopVars.JumpingList[steamid].bhopChain[bhopChainLen - 1].landPos = player.EyePosition();
			}
			::BhopVars.JumpingList[steamid].groundTime++;
			if (::BhopVars.JumpingList[steamid].groundTime > 1 && !::BhopFunc.IsPlayerPerfectJumpIgnored(steamid))
				ClientPrint(player, 4, "");
				

			if(::BhopEnts.CheckBhop(player, steamid) == false)
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

	function ConfigSaveTick()
	{
		if (::BhopVars.ConfigAltered)
		{
			// ::MeowUtils.Log("ConfigSaveTick()");
			::BhopFunc.WriteConfig();
			::BhopVars.ConfigAltered = false;
			return;
		}
		else
		{
			::BhopFunc.ReadConfig(false);
		}
		// ::MeowUtils.Log("ConfigSaveTick(): WritePlayerSettings!");
		::BhopFunc.WritePlayerSettings();
	}

	function UtilityTick()
	{
		// ::MeowUtils.Log("UtilityTick()!");
		// we do it here as this means entities and stuff are loaded , so we know the script isnt being arbitrarily executed for no reason on map load  -- i have now figured out this is just first and second load behavior ,
		if (::BhopVars.SessionData == null)
			::BhopVars.SessionData = ::BhopFunc.ReadSessionData();

		if (::BhopVars.PlayerInitList.len() == 0)
		{
			return;
		}

		local playersToRemove = [];
		
		foreach (i, userid in ::BhopVars.PlayerInitList)
		{
			local player = GetPlayerFromUserID(userid);
			local pName = player.GetPlayerName();
			
			::MeowUtils.Log("ensuring settings for player "+pName);
			local r = ::BhopFunc.EnsurePlayerSettings(player, pName);
			if (r)
			{
				// ClientPrint(player, 5, "you have been initialized by MeowBhopDetect!");
				::MeowUtils.Log("removing player \""+pName+"\" from init list");
				playersToRemove.append(userid);
			}
			// ::BhopFunc.WriteConfig(::BhopVars.ConfigPath);
			// newPlayerInit.remove(i);
			// ::BhopVars.PlayerInitList.remove(i);
		}
		foreach (userid in playersToRemove)
		{
			local b = ::BhopVars.PlayerInitList.find(userid);
			if (b == null) continue;
			
			::BhopVars.PlayerInitList.remove(b);
		}
	}

	/* function OneSecondTick()
	{
		printl(::BhopEnts.TickTracker+" ticks in 1 second!");
		::BhopEnts.TickTracker = 0;
	} */

	// this is the one that handles bhop logic
	// we do this as a workaround bcs there is no on_tick() game event
	function AddBhopTicker()
	{
		// local tEnt = null;
		::BhopVars.BunnyTickerEnt = Entities.FindByName(null, "bhopTicker");
		if (::BhopVars.BunnyTickerEnt != null) 
		{
			if (::BhopVars.BunnyTickerEnt.IsValid())
				::BhopVars.BunnyTickerEnt.Kill();
		}

		::BhopVars.BunnyTickerEnt = SpawnEntityFromTable("info_target", {targetname = "bhopTicker"});

		::BhopVars.BunnyTickerEnt.ValidateScriptScope();
		local scrScope = ::BhopVars.BunnyTickerEnt.GetScriptScope();
		scrScope["BhopThink"] <- function () {
			// printl("BhopThink!");
			::BhopEnts.BhopTick();
			// these numbers are the minimum amt of time that will pass (in seconds) before running this think function again
			// return 0.03333;  // dis is the tick time for  30 tick server, which is default, idk if this should be returned, probably not though
			// return 0.01111;
			return 0.0001;  // without this it doesnt run every tick
		}
		AddThinkToEnt(::BhopVars.BunnyTickerEnt,"BhopThink");
	}
	
	// this is the one that saves config files
	function AddConfigSaveTicker()
	{	
		::BhopVars.ConfigTickerEnt = Entities.FindByName(null, "bhopConfigSaveTicker");
		if (::BhopVars.ConfigTickerEnt != null) 
		{
			if (::BhopVars.ConfigTickerEnt.IsValid())
				::BhopVars.ConfigTickerEnt.Kill();
		}

		::BhopVars.ConfigTickerEnt = SpawnEntityFromTable("logic_timer", {targetname = "bhopConfigSaveTicker", start_disabled = false, RefireTime = 30.0});
		
		::BhopVars.ConfigTickerEnt.ConnectOutput("OnTimer", "ConfigThink");

		::BhopVars.ConfigTickerEnt.ValidateScriptScope();
		::BhopVars.ConfigTickerEnt.GetScriptScope().ConfigThink <- function()
		{
			::BhopEnts.ConfigSaveTick();
		}
	}

	// this is the one that like initializes new players that join server and stuff
	function AddUtilityTicker()
	{
		::BhopVars.BunnyUtilsTickerEnt = Entities.FindByName(null, "bhopUtilsTicker");
		if (::BhopVars.BunnyUtilsTickerEnt != null) 
		{
			if (::BhopVars.BunnyUtilsTickerEnt.IsValid())
				::BhopVars.BunnyUtilsTickerEnt.Kill();
		}

		::BhopVars.BunnyUtilsTickerEnt = SpawnEntityFromTable("logic_timer", {targetname = "bhopUtilsTicker", start_disabled = false, RefireTime = 5.0});
		
		::BhopVars.BunnyUtilsTickerEnt.ConnectOutput("OnTimer", "UtilityThink");

		::BhopVars.BunnyUtilsTickerEnt.ValidateScriptScope();
		::BhopVars.BunnyUtilsTickerEnt.GetScriptScope().UtilityThink <- function()
		{
			::BhopEnts.UtilityTick();
		}
	}

	/* function AddSecondsTickTracker()
	{
		::BhopEnts.TickTracker = 0;
		::BhopVars.SecondTickerEnt = Entities.FindByName(null, "bhopSecondsTicker");
		if (::BhopVars.SecondTickerEnt != null) 
		{
			if (::BhopVars.SecondTickerEnt.IsValid())
				::BhopVars.SecondTickerEnt.Kill();
		}

		::BhopVars.SecondTickerEnt = SpawnEntityFromTable("logic_timer", {targetname = "bhopSecondsTicker", start_disabled = false, RefireTime = 1.0});
		
		::BhopVars.SecondTickerEnt.ConnectOutput("OnTimer", "SecondsThink");

		::BhopVars.SecondTickerEnt.ValidateScriptScope();
		::BhopVars.SecondTickerEnt.GetScriptScope().SecondsThink <- function()
		{
			::BhopEnts.OneSecondTick();
		}
	} */

	function SpawnBhopEnts()
	{
		local ok = Entities.FindByName(null, "bhopSecondsTicker");
		if (ok != null) 
		{
			if (ok.IsValid())
				ok.Kill();
		}

		::BhopEnts.AddBhopTicker();
		::BhopEnts.AddConfigSaveTicker();
		::BhopEnts.AddUtilityTicker();
		// ::BhopEnts.AddSecondsTickTracker();
	}
}

::BhopCmds <-
{
	
}

class ::BhopCmds.Stats extends ::Commands.Command
{
	aliases = ["stats", "s"];
	brief = "show your bhop stats, supply name for others' stats";
	help = "show your bhop stats, supply name for others' stats. player name is case insensitive. put the players name in quotes \"\" if they have a space in their name";
	privileged = false;
	cooldown = 0;

	</ meowCmd_param_otherPlayer = "the steam name of the other player. case insensitive" />
	function Callback(ctx, otherPlayer=null)
	{
		local pSet;
		if (otherPlayer != null)
		{
			local pSID = ::BhopFunc.GetSteamIDFromUserString(otherPlayer);
			// we do this so that we can get steam id from players not already loaded
			pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
			if (pSet == null)
			{
				ClientPrint(ctx.player,5,"ERROR: cant find player!");
				return true;
			}
		}
		else
		{
			pSet = ::BhopVars.PlayerSettings[ctx.playerSteamID];
		}
		local best = pSet["BestBhop"];
		if (best == null)
		{
			local msg;
			if (otherPlayer == null) msg = "you have no stats tracked!";
			else msg = otherPlayer+" has no stats tracked!";
			ClientPrint(ctx.player, 3, msg);
			return true;
		}
		
		local msg = "\x01stats for \"\x05"+pSet.Name+"\x01\" - high score: \x04"+best["score"]+"\x01, total distance bhopped: \x04"+pSet["TotalDistanceBhopped"]+"\x01, total bhops: \x04"+pSet["TotalBhops"]+"\x01, time spent bhopping: \x04"+::BhopFunc.DurationToString(pSet["TotalTimeSpentBhopped"])+"\x01, highest velocity: \x04"+pSet["HighestVelocity"]+"\x01";
		if (::BhopVars.PlayerSettings[ctx.playerSteamID].Banned)
		{
			ClientPrint(ctx.player, 5, "\x01"+"for your attention: i regret to inform you of the following,");
			ClientPrint(ctx.player, 5, "\x01"+"you are currently \x04"+"BANNED\x01, your stats are not being \x04RECORDED\x01");
			ClientPrint(ctx.player, 5, msg);
			return;
		}
		::BhopFunc.SendToAllNonIgnoredPlayers(msg);
		return true;
	}
}

class ::BhopCmds.Leaderboard extends ::Commands.Command
{
	aliases = ["leaderboard", "lb"];
	brief = "display the bhop leaderboard";
	// help = "display the bhop leaderboard";
	privileged = false;
	cooldown = 0;

	</ meowCmd_param_session = "put any thing here to print the bhop leaderboard for this session" />
	function Callback(ctx, session=false)
	{
		if (session != false && strip(session) != "") session = true;
		::BhopFunc.DisplayLeaderboard(ctx.player, session);
	}
}

class ::BhopCmds.Settings extends ::Commands.Command
{
	aliases = ["settings", "setting"];
	brief = "see variable value or change a setting value";
	help = "supply the value parameter to set the value, otherwise print the value. to see/edit a sub value, seperate table/class indexes with a pipe \"|\".\nEX: \"!bhop settings BunnyTickLeniency 3\"";
	privileged = true;
	cooldown = 0;

	</ meowCmd_param_var = "the path to the variable, seperated with pipes \"|\"", 
	   meowCmd_param_value = "the value to set the variable to. if this isnt supplied, it just prints the value" />
	function Callback(ctx, var, value=null)
	{
		local settingPath = var;
		local settingVal = value;
		local varPath = split(settingPath, "|");
		if (varPath.len() == 0)
		{
			ClientPrint(ctx.player, 5, "ERROR: invalid index");
			return true;
		}
		/* if (!::BhopFunc.IsPlayerAdmin(ctx.playerSteamID))
		{
			ClientPrint(ctx.player, 5, "ERROR: you must be admin to use this commmand");
			return true;
		} */
		
		local curTable = ::BhopVars.weakref();
		local lastTable = curTable;
		local lastKey = strip(varPath[0]);		

		foreach (keyName in varPath)
		{
			keyName = strip(keyName);
			if (keyName == "")
			{
				ClientPrint(ctx.player, 5, "ERROR: invalid index");
				return;
			}
			if (!(keyName in curTable.ref()))
			{
				ClientPrint(ctx.player, 5, "ERROR: couldnt find index for keyname: \""+keyName+"\"");
				return;
			}
			try
			{
				lastTable = curTable;
				curTable = curTable.ref()[keyName].weakref();
				lastKey = keyName;
			}
			catch (e)
			{
				ClientPrint(ctx.player,3,"ERROR: "+e);
				return;
			}
		}

		local foundVal = lastTable.ref()[lastKey];
		if (settingVal == null)
		{
			ClientPrint(ctx.player, 5, "\x05\""+settingPath+"\"\x01 = \x04\""+::Json.Serialize.ToString(foundVal)+"\"\x01");
			return;
		}
		local foundType = typeof foundVal;
		local convVal;
		
		try
		{
			switch (foundType)
			{
				case "string":
					convVal = settingVal;
					// lastTable.ref()[lastKey] <- replaceVal;
					break;
				case "integer":
					convVal = settingVal.tointeger();
					// lastTable.ref()[lastKey] <- replaceVal.tointeger();
					break;
				case "float":
					convVal = settingVal.tofloat();
					// lastTable.ref()[lastKey] <- replaceVal.tofloat();
					break;
				case "bool":
					if (settingVal.tolower() == "true")
					{
						convVal = true;
						break;
					}
					if (settingVal.tolower() == "false")
					{
						convVal = false;
						break;
					}
					ClientPrint(player,3,"ERROR: user input is not of bool type: \""+settingVal+"\"");
					return;
					break;
				default:
					ClientPrint(player,3,"ERROR: original value has invalid type: \""+foundType+"\"");
					return;
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
			// return;
		}
		catch (e)
		{
			ClientPrint(player, 5, "ERROR: "+e);
			return;
		}
		if (varPath.len() > 2 && varPath[0] == "PlayerSettings" && varPath[1] in ::BhopVars.PlayerSettings)
			::BhopVars.PlayerSettings[varPath[1]].ConfigAltered = true;
		else ::BhopVars.ConfigAltered = true;
		ClientPrint(ctx.player, 5, "set variable \x05\""+settingPath+"\"\x01 to \x04\""+convVal+"\"\x01");
		return;
	}
}

/* class ::BhopCmds.Rescore extends ::Commands.Command
{
	aliases = ["rescore"];
	brief = "rescore all bhops";
	// help = "supply the value parameter to set the value, otherwise print the value. to see/edit a sub value, seperate table/class indexes with a pipe \"|\".\nEX: \"!bhop settings BunnyTickLeniency 3\"";
	privileged = true;
	cooldown = 10;

	// </ bhopCmd_param_var = "the path to the variable, seperated with pipes \"|\"", 
	//    bhopCmd_param_value = "the value to set the variable to. if this isnt supplied, it just prints the value" />
	function Callback(ctx)
	{
		foreach (pSID, pSet in ::BhopVars.PlayerSettings)
		{
			if (pSet["BestBhop"] == null)
				continue;
			local bhopChainData = pSet["BestBhop"];
			local newScore = bhopChainData.GetScore(bhopChainData.GetNumBhops(), bhopChainData.maxVel, 0, 0);
			newScore = newScore.tointeger();
			if (newScore != bhopChainData.score)
			{
				::BhopVars.PlayerSettings[pSID]["BestBhop"]["score"] = newScore;
				::BhopVars.PlayerSettings[pSID]["ConfigAltered"] = true;
				ClientPrint(ctx.player, 5, "updated best bhop score for player \""+pSet["Name"]+"\"");
			}
		}
		foreach (pSID, bhopChainData in ::BhopVars.SessionData)
		{
			local newScore = bhopChainData.GetScore(bhopChainData.GetNumBhops(), bhopChainData.maxVel, 0, 0);
			newScore = newScore.tointeger();
			if (newScore != bhopChainData.score)
			{
				::BhopVars.SessionData[pSID]["score"] = newScore;
				ClientPrint(ctx.player, 5, "updated session bhop score for player \""+pSet["Name"]+"\"");
			}
		}
		ClientPrint(ctx.player, 5, "done updating scores!");
	}
} */

class ::BhopCmds.Rules extends ::Commands.Command
{
	aliases = ["rules", "r"];
	brief = "see the variables related to bhop detection & scoring";
	// help = "see the variable values related to bhop detection & scoring";
	privileged = false;
	cooldown = 0;

	function Callback(ctx)
	{
		ClientPrint(ctx.player, 5, "current bhop ruleset:");
		ClientPrint(ctx.player, 5, "  \x05"+"tick leniency\x01	: \x04"+::BhopVars.BunnyTickLeniency+"\x01");
		ClientPrint(ctx.player, 5, "  \x05"+"detection count\x01	: \x04"+::BhopVars.BunnyDetectCount+"\x01");
		ClientPrint(ctx.player, 5, "  \x05"+"min starting vel\x01	: \x04"+::BhopVars.BunnyMinStartingVel+"\x01");
		if (::BhopVars.BunnyDetectDuration > 0)
			ClientPrint(ctx.player, 5, "  \x05"+"bhop length count\x01	: \x04"+::BhopVars.BunnyDetectDuration+"\x01");
		/* ClientPrint(ctx.player, 5, "scoring rules:");
		ClientPrint(ctx.player, 5, "  \x05"+"bhop count mult\x01	: \x04"+::BhopVars["ScoringSettings"]["BhopCountMult"]+"\x01");
		ClientPrint(ctx.player, 5, "  \x05"+"bhop speed mult\x01	: \x04"+::BhopVars["ScoringSettings"]["BhopAvgVelocityMult"]+"\x01"); */
		return true;
	}
}

class ::BhopCmds.Toggle extends ::Commands.Command
{
	aliases = ["toggle", "t"];
	brief = "toggle bhop announcing for you";
	help = "add the \"perfectjump\" parameter to only disable perfectjump announcing";

	</ meowCmd_param_type = "type of thing to toggle. can either be nothing, \"all\" or \"perfectjump\"" />
	function Callback(ctx, type="all")
	{
		local toggleType = type;
		if (toggleType == "perfectjump")
		{
			if (::BhopFunc.IsPlayerPerfectJumpIgnored(ctx.playerSteamID))
			{
				::BhopFunc.PerfectJumpIgnorePlayer(ctx.playerSteamID, false);
				ClientPrint(ctx.player, 5, "\x01you will now be notified of your perfect jumps!");
				return;
			}
			::BhopFunc.PerfectJumpIgnorePlayer(ctx.playerSteamID, true);
			ClientPrint(ctx.player, 5, "\x01you will no longer be notified of your perfect jumps!");
			return;
		}
		if (::BhopFunc.IsPlayerIgnored(ctx.playerSteamID))
		{
			::BhopFunc.IgnorePlayer(ctx.playerSteamID, false);
			ClientPrint(ctx.player, 5, "\x01you are no longer ignored by MeowBhopDetect!");
			return true;
		}
		::BhopFunc.IgnorePlayer(ctx.playerSteamID, true);
		ClientPrint(ctx.player, 5, "\x01you will now be ignored by MeowBhopDetect!");
		return true;
	}
}

class ::BhopCmds.About extends ::Commands.Command
{
	aliases = ["about", "a"];
	brief = "show information about bhop mod";

	function Callback(ctx)
	{
		ClientPrint(ctx.player, 5, "\x01"+"MeowBhopDetect \x05r"+::BhopVars.build_num+"\x01");
		ClientPrint(ctx.player, 5, "written by meowmeow, source code: \x05"+"https://github.com/meow6969/l4d2-things/tree/master/bunnyhop_detect\x01");
		ClientPrint(ctx.player, 5, "a fork of simple bunny hop detect by mt2, link: \x05"+"https://steamcommunity.com/sharedfiles/filedetails/?id=2256379828\x01");
	}
}

class ::BhopCmds.Prefix extends ::Commands.Command
{
	aliases = ["prefix", "p"];
	brief = "change the prefix used for commands";
	privileged = true;

	</ meowCmd_param_prefix = "the new prefix the bot will use" />
	function Callback(ctx, prefix)
	{
		if (prefix.find(" ") != null)
		{
			ClientPrint(ctx.player, 5, "prefix cant have a space");
			return;
		}
	
		ClientPrint(null, 5, "bhop detector prefix changed from \""+::BhopVars.CommandsPrefix+"\"->\""+prefix+"\"");
		::BhopVars.CommandsPrefix = prefix;
		::BhopVars.ConfigAltered = true;
		this.commandMan.prefix = prefix;
	}
}

class ::BhopCmds.RemoveScore extends ::Commands.FollowupCommand
{
	aliases = ["removescore", "re"];
	brief = "remove a score from the leaderboard";
	privileged = true;

	</ meowCmd_param_player = "the name or steam ID of the player who made the score" />
	function Callback(ctx, player)
	{
		local pSID = ::BhopFunc.GetSteamIDFromUserString(player);
		local pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
		if (pSet == null)
		{
			ClientPrint(ctx.player,5,"ERROR: cant find player!");
			return false;
		}
		
		if (pSet["BestBhop"] == null)
		{
			ClientPrint(ctx.player, 5, "ERROR: player has no tracked bhop!");
			return false;
		}
		
		ClientPrint(ctx.player, 5, "\x01"+"found bhop for player \x04"+pSet.Name+"\x01 steamid=\x03\""+pSID+"\"\x01, bhops=\x05"+pSet.BestBhop.numBhops+"\x01, score=\x05"+pSet.BestBhop.score+"\x01, date=\x05("+pSet.BestBhop.timeString+")\x01");
		ClientPrint(ctx.player, 5, "\x01"+"are you sure you want to delete this score? Enter \x05\"YES\"\x01 to delete.");
		return [pSID, pSet];
	}

	function Followup(ctx, followupData)
	{
		local pSID = followupData[0];
		local pSet = followupData[1];
		if (ctx.message != "YES")
		{
			ClientPrint(ctx.player, 5, "\x01you did not say \x05\"YES\"\x01, will not be doing anything.");
			return false;
		}
		// now just delete the score from things
		pSet["BestBhop"] = null;
		pSet["ConfigAltered"] = true;
		local i = ::BhopVars.LeaderboardUsers.find(pSID)
		if (i != null)
		{
			::BhopVars.LeaderboardUsers.remove(i)
			// shouldnt need to do this if statement but it could cause an error and thats scary
			if (pSID in ::BhopVars.LeaderboardData)
			{
				delete ::BhopVars.LeaderboardData[pSID];
	
			}
			::BhopFunc.WriteLeaderboard();
		}
		if (pSID in ::BhopVars.SessionData)
			delete ::BhopVars.SessionData[pSID];
	
		::BhopFunc.WritePlayerSetting(pSID, pSet);
	
		ClientPrint(null, 5, "\x01"+"player \x04\""+pSet.Name+"\"\x01 has had their bhop scores removed");
		return false;
	}
}


class ::BhopCmds.Ban extends ::Commands.Command
{
	aliases = ["ban", "b"];
	brief = "ban a player from leaderboards and bhop announcing";
	privileged = true;

	// i should probably write a transformer for inputting a player and just use the attributes to pass it as a custom function but no im to lazy rn later

	</ meowCmd_param_player = "the name or steam ID of the player you want to ban" />
	function Callback(ctx, player)
	{
		local pSID = ::BhopFunc.GetSteamIDFromUserString(player);
		local pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
		if (pSet == null)
		{
			ClientPrint(ctx.player,5,"ERROR: cant find player!");
			return false;
		}
		if (pSet.Banned)
		{
			ClientPrint(ctx.player, 5, "ERROR: player is already banned");
			return;
		}
		pSet.Banned = true;
		pSet.ConfigAltered = true;
		::BhopFunc.WritePlayerSetting(pSID, pSet);
		ClientPrint(null, 5, "\x01"+"player \x04\""+pSet.Name+"\"\x01, steamid="+pSID+" has been banned");
	}
}


class ::BhopCmds.Unban extends ::Commands.Command
{
	aliases = ["unban", "ub"];
	brief = "unban a player from leaderboards and bhop announcing";
	privileged = true;

	</ meowCmd_param_player = "the name or steam ID of the player you want to unban" />
	function Callback(ctx, player)
	{
		local pSID = ::BhopFunc.GetSteamIDFromUserString(player);
		local pSet = ::BhopFunc.GetPlayerSettingsFromSteamID(pSID);
		if (pSet == null)
		{
			ClientPrint(ctx.player,5,"ERROR: cant find player!");
			return false;
		}
		if (!pSet.Banned)
		{
			ClientPrint(ctx.player, 5, "ERROR: player is not banned");
			return;
		}
		pSet.Banned = false;
		pSet.ConfigAltered = true;
		::BhopFunc.WritePlayerSetting(pSID, pSet);
		ClientPrint(null, 5, "\x01"+"player \x04\""+pSet.Name+"\"\x01, steamid="+pSID+" has been unbanned");
	}
}


/* class ::BhopCmds.TestFollowup extends ::Commands.FollowupCommand
{
	aliases = ["testfollowup"];
	
	function Callback(ctx)
	{
		ClientPrint(ctx.player, 5, "callback!");
		return 0;
	}

	function Followup(ctx, followupData)
	{
		if (ctx.message == "YES")
		{
			ClientPrint(ctx.player, 5, "followup #"+followupData+", following up again");
			return followupData + 1;
		}
		ClientPrint(ctx.player, 5, "followup #"+followupData+", ending followup");
		// should still end followup even with no return statement
	}
} */

::BhopEvent <-
{
	function OnGameEvent_player_jump(params)
	{
		local player = GetPlayerFromUserID(params.userid);
		local steamid = ::MeowUtils.GetPlayerSteamID(player);

		if (::BhopFunc.ShouldIgnorePlayer(params.userid, player))
		{
			::MeowUtils.Log("player_jump(): ignoring player "+player.GetPlayerName());
			return;
		}

		if (::BhopFunc.IsPlayerIgnored(steamid))
		{
			::MeowUtils.Log("OnGameEvent_player_jump(): ignoring player: "+player.GetPlayerName());
			return;
		}
		
		local speed = ::MeowUtils.GetPlayerSpeed(player);
		local pName = player.GetPlayerName();
		local jumpPos = player.EyePosition();  // this is the value returned by cl_showpos 1 i think
		// local indexName = "bhop"+index;
		
		if (!(steamid in ::BhopVars.JumpingList))
		{
			if (speed < ::BhopVars.BunnyMinStartingVel) 
				return;
			local bhopData = ::BhopClasses.BhopChainData(player, steamid, ::BhopClasses.BhopData(speed, jumpPos));
			::BhopVars.JumpingList[steamid] <- bhopData;
		}
		else
		{
			local bhopChain = ::BhopVars.JumpingList[steamid];
			if (!::BhopFunc.IsPlayerPerfectJumpIgnored(steamid))
			{
				if (bhopChain.groundTime <= 1)
				{
					// ClientPrint(player, 4, "\x04perfect jump! speed=\x05"+speed.tointeger()+"\x01");
					ClientPrint(player, 4, "perfect jump! speed="+speed.tointeger());
				}
			}
			
			bhopChain.groundTime = 0;
			bhopChain.AddBhop(::BhopClasses.BhopData(speed, jumpPos));
			::BhopVars.JumpingList[steamid] <- bhopChain;
		}
	}
	
	// this is so the player steam id is always initialized
	/* function OnGameEvent_player_spawn(params)
	{
		if (params.userid == null) return;
		printl("player_spawn");
		if (!::BhopFunc.IsPlayerInInitList(params.userid))
		{
			::BhopVars.PlayerInitList.append(params.userid);
		}
	} */

	function OnGameEvent_player_connect_full(params)
	{
		if (params.userid == null) return;
		//  ::MeowUtils.Log("player_connect_full");
		if (!::BhopFunc.IsPlayerInInitList(params.userid))
		{
			::BhopVars.PlayerInitList.append(params.userid);
		}
	}

	// i think dis runs when umm  when new person join server?  -- idk wut im doing ,,  xd
	function OnGameEvent_player_team(params)
	{
		if (params.userid == null) return;
		// ::MeowUtils.Log("OnGameEvent_player_team");
		
		if (params.disconnect)
		{
			local i = ::BhopVars.PlayerInitList.find(params.userid);
			if (i != null) 
				::BhopVars.PlayerInitList.remove(i);
			return;
		}
		// if (i == null)
		// 	::BhopVars.PlayerInitList.append(params.userid);
	}

	function OnGameEvent_player_say(params)
	{
		if (!("userid" in params) || params.userid in ::BhopVars.PlayerInitList)
			return;
		local player = GetPlayerFromUserID(params.userid);
		// print("::BhopVars.CommandManager="+::BhopVars.CommandManager);
		::BhopVars.CommandManager.Invoke(player, params.text);
	}

	function OnGameEvent_finale_win(params)
	{
		// i think some addon maps have a bug that causes this to run multiple times,   mmaybe just set a bool to true when it runs the first time?
		// printl("leaderboard event !!!!");
		if (::BhopVars.LeaderboardOnGameEnd) 
		{
			::BhopFunc.DisplayLeaderboard(null, true);
		}
	}

	// runs when survivors successfully make it to check point in coop i think
	function OnGameEvent_map_transition(params)
	{
		::BhopFunc.DisplayLeaderboard(null, true);
		::BhopFunc.WriteSessionData();
	}

	// runs when survivors die in coop
	function OnGameEvent_mission_lost(params)
	{
		::BhopFunc.WriteSessionData(true);
	}
}


::BhopFunc.loadFile();
::BhopEnts.SpawnBhopEnts();

__CollectEventCallbacks(::BhopEvent, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);


//printl(::BhopFunc.DurationToString(30));
//printl(::BhopFunc.DurationToString(3423432));
//printl(::BhopFunc.DurationToString(1555))


