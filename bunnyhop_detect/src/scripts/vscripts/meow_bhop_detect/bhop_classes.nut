




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
		// numBhops gets set to the correct number when it is scored
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
		this.numBhops = this.GetNumBhops();  // oh my god i fix it when its scored ?? i am literally insane, this code base is ruined, its all ruined,, i need to destroy everything. its over
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
		// if (::BhopVars.PlayerSettings[pSID]["BestBhop"] == null || this.score > ::BhopVars.PlayerSettings[pSID]["BestBhop"].score)
		if (::BhopVars.PlayerSettings[pSID]["BestBhop"] == null || ::BhopFunc.CompareBhops(this, ::BhopVars.PlayerSettings[pSID]["BestBhop"]) == 1)  // this is right because its comparing the players own bhop, which tey are guaranteed to be on the server
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
				local lowestKey = 9999999999;  // this is the value for the compare key
				local lowestScore = 0;         // this is the value specifically for the score of the lowest key

				local lowestIndex = null;
				local key = ::BhopFunc.GetBhopCompareKey();  // i need to grab all of the data according to the leaderboardusers and then
				foreach (i, steamid in ::BhopVars.LeaderboardUsers)
				{
					if (::BhopVars.LeaderboardData[steamid][key] < lowestKey)  // ahh i need to compare here from the score score.... i think i should just ,, use the comparefunction... ok i do that later
					{
						lowestKey = ::BhopVars.LeaderboardData[steamid][key];
						lowestScore = ::BhopVars.LeaderboardData[steamid]["score"];
						lowestIndex = i;
						
					}
					else if (key != "score" && ::BhopVars.LeaderboardData[steamid][key] == lowestKey && ::BhopVars.LeaderboardData[steamid]["score"] < lowestScore)
					{
						lowestScore = ::BhopVars.LeaderboardData[steamid]["score"];
						lowestIndex = i;  // TODO: TEST THIS REALLY GOOD
					}
				}
				if (lowestIndex != null && lowestKey < this[key] || lowestKey == this[key] && lowestScore < this["score"])
				{
					// this is the case that the new bhop is now  should be on leaderboard
					::BhopVars.LeaderboardUsers.remove(lowestIndex);
					::BhopVars.LeaderboardUsers.append(this.playerSteamID);
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
		if (::BhopFunc.CompareBhops(this, ::BhopVars.SessionData[pSID]) == 1)
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

class ::BhopClasses.BhopAnnouncingSettings
{
	</ json_comment = "this defines in what order information will be displayed for the leaderboard\nacceptable values are \"score\", \"bhops\", \"top_speed\", \"avg_speed\", and \"map\"\nnot all values are required, for example you could only have [\"bhops\", \"top_speed\"]" />
	LeaderboardDisplayOrder = ["score", "bhops", "top_speed", "avg_speed"];
	</ json_comment = "this defines in what order information will be displayed for when it announces someones successful bhop\nacceptable values are \"top_speed\", \"avg_speed\", and \"score\"\nnot all values are required" />
	SuccessfulBhopDisplayOrder = ["score", "top_speed", "avg_speed"];
	</ json_comment = "this defines the metric that bhops are sorted for on the leaderboard\nacceptable values are \"score\", \"bhops\", \"top_speed\", and \"avg_speed\"" />
	LeaderboardSortOrder = "score";
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

	</ json_comment = "these are settings that will change the way bhops get displayed in chat" />
	BhopAnnouncingSettings	= ::BhopClasses.BhopAnnouncingSettings();

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
	build_num=221
}




