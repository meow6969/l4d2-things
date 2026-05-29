dofile("json.nut");
dofile("argparse.nut");


::testIns <- 
[
	"\"!bhop\" \"lead\"er\"board\"",
	"\"!bhop\" \"lead\" er \"board\"",
	"!bhop stats \"soft cookie\"",
	"!bhop lead\\ er\\ board\"",
	"!bhop stats soft\\ cookie",
	"!bhop stats \\\\\\\"weird\"name\""
];

foreach (cmd in ::testIns)
{
	print("cmd=`"+cmd+"`\n");
	print("out="+::Json.Serialize.ToString(::ArgParse.GetArgList(cmd)));
	print("\n");
}
// print("inp=`"+::inp+"`\n");
// print(::Json.Serialize.ToString(::ArgParse.GetArgList(::inp)));

