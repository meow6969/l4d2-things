dofile("json.nut");
dofile("argparse.nut");


function printl(line="")
{
	print(line+"\n")
}


class MeowMeow </ json_ignore = true />
{
	</ json_ignore = true />
	vel					= null;			// float
	</ json_name = "start_pos" />
	startPos			= null;			// Vector
	endPos				= null;			// Vector
	airTime				= null;			// int<ticks>		-- idk if needed ?
	sexGaming			= [];
		
	constructor (v, sP, eP, aT)			// v<float>, sP<Vector>, eP<Vector>, aT<int<ticks>>
	{
		vel = v;
		startPos = sP;
		endPos = eP;
		airTime = aT;
	}

	function StrideLength(blah, cat, okie=2, nya="a", )
	{
			
	}

	Nya = function(a, b, ...)
	{

	}

	Hehe = function(...)
	{

	}

	Okie = function()
	{

	}

	Blah = function(a=2)
	{
		return 1;
	}

	// len = function()
	function len()
	{

	}

	Plagiarize = sqrt

	Plagi = printl

	/* _tostring = function()
	{
		local rStr = "BhopData\n";
		rStr +=      "{\n";
		foreach (i, val in
	} */

}

function PrintMeow()
{
	foreach(member,val in MeowMeow)
	{
		// printl("type="+type(val));
		// printl(member+"="+::Json.Utils.PrintThing(val, true));
		/* if (typeof val == "function")
		{
			printl(member+"="+::Json.Utils.PrintThing(val.getinfos(), true));
		} */
	}
}

/* ::okgaming <-
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
	build_num=14
} */


// PrintMeow();
// ::Json.Utils.PrintThing(PrintMeow);

// printl("getroot="+::Json.Serialize.ToString(MeowMeow.Nya.getroot(), 4));
// printl("consttable="+::Json.Serialize.ToString(getconsttable()));
// printl("roottable="+::Json.Serialize.ToString(getroottable(), 2));

// ::testText <- "{\"sexGaming\":[],\"endPos\":null,\"start_pos\":69,\"airTime\":null}"

// ::nyaNya <- ::Json.Deserialize.StringToClass(::testText, MeowMeow);
// printl("startPos="+::nyaNya.startPos);

// printl("::nyaNya="+::Json.Serialize.ToString(::nyaNya));

// ::okgamingNya <- ::Json.Deserialize.StringToClass(::testText, MeowMeow);
// ::tempText <- ::Json.Serialize.ToString(::okgaming)
// printl("okgaming="+::tempText);

// ::okgaminginst <- ::Json.Deserialize.StringToClass(::tempText

// printl("::okgaming2="+::Json.Serialize.ToString(::okgamingNya));

// printl("type(MeowMeow)="+typeof MeowMeow);

// printl(::Json.Serialize.ToString(::ArgParse.GetArgList("    \"  nyaaA \\\" :3c\"  KITTY!!!!   I LOVE U  KITTY")));
printl(::Json.Serialize.ToString(::ArgParse.Split("PlayerSettings", "|")));



/* foreach (a in ::ArgParse.GetArgList("\"nyaaA  :3c\"  KITTY!!!!   I LOVE U  KITTY"))
{
	printl(a);
} */


