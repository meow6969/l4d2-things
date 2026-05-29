

function printl(a="")
{
	print(a+"\n");
}


function Test() 
{
	local ex = regexp("%%([A-Z_]+)%%");

	// local test =  "%%NAME%%";
	// local test = "%%NAME%% got %%NUM_BHOPS%% bunnyhop in a row (score: %%SCORE%%, top speed: %%TOP_SPEED%%, avg speed: %%AVG_SPEED%%)";
	local test = "enter \"%%OLIVE_GREEN%%%%PREFIX%% help%%WHITE%%\" to see the help command, and do \"%%OLIVE_GREEN%%!bhop toggle%%WHITE%%\" to enable/disable me!";

	printl(ex.capture(test));
	local res;
	local start = 0;
	while (res = ex.capture(test, start))
	{
		start = res[0].end;
		local full_match = test.slice(res[0].begin, res[0].end);
		local text_match = test.slice(res[1].begin, res[1].end);
		printl("match=("+res[0].begin+"-"+res[0].end+")="+test.slice(res[0].begin, res[0].end));
		printl("match=("+res[1].begin+"-"+res[1].end+")="+test.slice(res[1].begin, res[1].end));
		printl();
	}
	printl(ex.match(test));
	printl(ex.search(test));
}


::Test();


