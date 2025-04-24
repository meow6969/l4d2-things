/* function printl(line)
{
	printf(line+"\n");
} */

if (!("Json" in getroottable()))
{
	::Json <-
	{
		Meow = "cat"
	}
}

::Json.Utils <- 
{
	emptyChars = ["\t", "\n", " ", "\r", "\f"],
	isIntegerRegexPattern = regexp("^[\\s]*[\\d]+[\\s]*$"),
	isFloatRegexPattern = regexp("^[\\s]*[\\d]+[\\.][\\d]+[\\s]*$"),
	isCharHexRegexPattern = regexp("[a-fA-F0-9]")
}

function Json::Utils::PrintThing(theThing, returnString=false)
{
	local pStr;
	// printl("Json::Utils::PrintThing(): got object of type: "+typeof theThing)
	switch (typeof theThing)
	{
		case "array":
			pStr = ::Json.Utils.PrintArray(theThing, true);
			break;
		case "table":
			pStr = ::Json.Utils.PrintTable(theThing, true);
			break;
		case "string":
			pStr = "\""+theThing+"\"";
			break;
		default:
			pStr = theThing.tostring();
			break;
	}
	if (returnString)
	{
		return pStr;
	}
	printl(pStr);
}

function Json::Utils::PrintTable(theTable, returnString=false)
{
	local pStr = "{";
	local itemSeperator = ", ";
	// printl("Json::Utils::PrintTable(): type(theTable)="+typeof theTable);
	foreach (tableKey, keyValue in theTable)
	{
		pStr += "\""+tableKey+"\": "+::Json.Utils.PrintThing(keyValue, true)+""+itemSeperator;
	}
	pStr = pStr.slice(0, pStr.len() - itemSeperator.len());
	pStr += "}";
	if (returnString)
	{
		return pStr;
	}
	printl(pStr);
}

function Json::Utils::PrintArray(theArray, returnString=false)
{
	local pStr = "[";
	local itemSeperator = ", ";
	foreach (i, thing in theArray)
	{
		// printl("Json::Utils::PrintArray(): calling PrintThing() for "+thing);
		pStr += ::Json.Utils.PrintThing(thing, true)+", ";
	}
	pStr = pStr.slice(0, pStr.len() - itemSeperator.len());
	pStr += "]"
	if (returnString) 
	{
		return pStr;
	}
	printl(pStr);
}

function Json::Utils::IsInteger(theString)
{
	return ::Json.Utils.isIntegerRegexPattern.match(theString);
}

function Json::Utils::IsFloat(theString)
{
	return ::Json.Utils.isFloatRegexPattern.match(theString);
}

function Json::Utils::IsNumber(theString)
{
	return ::Json.Utils.IsInteger(theString) || ::Json.Utils.IsFloat(theString);
}

function Json::Utils::FileToStr(filepath)
{
	/* local rStr = "";

	local fileObj = file(filepath, "r");
	while (fileObj.eos() == null)
	{
		// rStr += fileObj.readblob(512);
		rStr += fileObj.readn('b').tochar();
	}
	fileObj.close();
	return rStr; */
	return FileToString(filepath);
}

function Json::Utils::StrToFile(filepath, theString)
{
	/* local fileObj = file(filepath, "w+");
	foreach (i, theChar in theString)
	{
		// printl("theChar="+theChar);
		fileObj.writen(theChar, 'b');
	}
	fileObj.close(); */
	return StringToFile(filepath, theString);
}

::Json.Deserialize <- 
{
	
}

class ::Json.Deserialize.ParserTracker {
	jsonData = null;
	pointer = null;	

	constructor(jsonDataString)
	{
		jsonData = jsonDataString;
		pointer = 0;
	}

	function GetPointer()
	{
		return pointer;
	}
	
	function PointerNotReachedEnd()
	{
		return pointer < jsonData.len();
	}

	function PointerAdd(amt=1)
	{
		pointer = pointer + amt;
	}

	function DataStrip()
	{
		jsonData = strip(jsonData);
	}

	function CurChar()
	{
		return jsonData[pointer].tochar();
	}
}

function Json::Deserialize::ParseNumber(parseTracker)
{
	local dots = 0;
	local rInt = "";
	parseTracker.PointerAdd(-1);

	while (parseTracker.PointerNotReachedEnd())
	{
		parseTracker.PointerAdd();
		local theChar = parseTracker.CurChar();
		if (::Json.Utils.IsInteger(theChar))
		{
			rInt += theChar;
			continue;
		}
		if (theChar == ".")
		{
			dots++;
			if (dots == 2)
			{
				parseTracker.PointerAdd(-1);
				break;
			}
			rInt += theChar;
			continue;
		}
		break;
	}
	
	if (dots > 0)
	{
		return rInt.tofloat();
	}
	parseTracker.PointerAdd(-1);
	return rInt.tointeger();
}

function Json::Deserialize::ParseString(parseTracker)
{
	local nextEscaped = false;
	local gettingHex = -1;
	local pStr = "";
	
	while (parseTracker.PointerNotReachedEnd())
	{
		parseTracker.PointerAdd();
		local theChar = parseTracker.jsonData[parseTracker.pointer].tochar();
		if (gettingHex >= 0)
		{
			if (!::Json.Utils.isCharHexRegexPattern.match(theChar))
			{
				printl("Json::Deserialize::ParseString(): WARNING: got improper hex char \""+theChar"\"");
				gettingHex = 0;
				continue;
			}
			gettingHex++;
			if (gettingHex == 3)
			{
				gettingHex = -1;
			}
		}
	
		if (nextEscaped)
		{
			switch (theChar)
			{
				case "\\":
					pStr += "\\";
					break;
				case "t":
					pStr += "\t";
					break;
				case "r":
					pStr += "\r";
					break;
				case "n":
					pStr += "\n";
					break;
				case "f":
					pStr += "\f";
					break;
				case "b":
					pStr += "\b";
					break;
				case "v":
					pStr += "\v";
					break;
				case "'":
					pStr += "'";
					break;
				case "\"":
					pStr += "\"";
					break;
				case "u":
					printl("Json::Deserialize::ParseString(): WARNING: ignoring escaped \\u char and hex characters");
					gettingHex = 0;
					break;
			}
			nextEscaped = !nextEscaped;
			continue;
		}
		if (theChar == "\"")
		{
			break;
		}
		pStr += theChar;
	}
	// parseTracker.PointerAdd();
	return pStr;
}

function Json::Deserialize::ParseTable(parseTracker)
{
	local rTable = {}
	
	local currentGoal = 0;
	local currentKey;
	while (parseTracker.PointerNotReachedEnd())
	{
		parseTracker.PointerAdd();
		local theChar = parseTracker.CurChar();
		if (::Json.Utils.emptyChars.find(theChar) != null)
		{
			continue;
		}
		if (currentGoal == 0)
		{
			if (theChar != "\"")
			{
				throw "Json::Deserialize::ParseTable(): expected \", got "+theChar;
			}
			currentKey = ::Json.Deserialize.ParseString(parseTracker);
			currentGoal++;
			continue;
		}
		if (currentGoal == 1)
		{
			if (theChar != ":")
			{
				throw "Json::Deserialize::ParseTable(): expected :, got "+theChar;
			}
			currentGoal++;
			continue;
		}
		if (currentGoal == 2)
		{
			rTable[currentKey] <- ::Json.Deserialize.ParseValue(parseTracker);
			currentGoal++;
			continue;
		}
		if (currentGoal == 3)
		{
			if (theChar == ",")
			{
				currentGoal = 0;
				continue;
			}
			
			if (theChar == "}")
			{
				break;
			}
			printl("context: "+parseTracker.jsonData.slice(parseTracker.pointer - 50, parseTracker.pointer + 1)+"<<<");
			throw "Json::Deserialize::ParseTable(): pointer="+parseTracker.pointer+" expected , or }, got "+theChar;
		}
	}
	return rTable;
}

function Json::Deserialize::ParseArray(parseTracker)
{
	local rArray = [];
	local currentGoal = 0;
	while (parseTracker.PointerNotReachedEnd())
	{
		parseTracker.PointerAdd();
		local theChar = parseTracker.CurChar();
		if (::Json.Utils.emptyChars.find(theChar) != null)
		{
			continue;
		}
		if (currentGoal == 0)
		{
			if (theChar == "]" && rArray.len() == 0)
			{
				return rArray;
			}
			rArray.append(::Json.Deserialize.ParseValue(parseTracker));
			currentGoal++;
			continue;
		}
		if (currentGoal == 1)
		{
			if (theChar == "]")
			{
				break;
			}
			
			if (theChar == ",")
			{
				currentGoal = 0;
				continue;
			}

			throw "Json::Deserialize::ParseArray(): expected ,|] got "+theChar;
		}
	}
	return rArray;
}

function Json::Deserialize::ParseBool(parseTracker)
{
	local theChar = parseTracker.CurChar();
	local expectation;
	local rBool;

	if (theChar == "t")
	{
		expectation = "true";
		rBool = true;
	}
	else if (theChar == "f")
	{
		expectation = "false";
		rBool = false;
	}
	else
	{
		throw "Json::Deserialize::ParseBool(): got invalid first char expected t|f got "+theChar;
	}

	local expectationIndex = 0;
	
	while (parseTracker.PointerNotReachedEnd())
	{
		parseTracker.PointerAdd();
		expectationIndex++;
		local theChar = parseTracker.CurChar();

		if (theChar != expectation[expectationIndex].tochar())
		{
			throw "Json::Deserialize::ParseBool(): got invalid char expected "+expectation[expectationIndex].tochar()+" got "+theChar;
		}

		if (expectationIndex == expectation.len() - 1)
		{
			return rBool;
		}
	}
	throw "Json::Deserialize::ParseBool(): did not get enough chars";
}
 
function Json::Deserialize::ParseValue(parseTracker)
{
	parseTracker.DataStrip();
	
	switch (parseTracker.CurChar())
	{
		case "{":
			return ::Json.Deserialize.ParseTable(parseTracker);
			break;
		case "\"":
			return ::Json.Deserialize.ParseString(parseTracker);
			break;
		case "[":
			local tArray = ::Json.Deserialize.ParseArray(parseTracker);

			return tArray;
			break;
		case "f":
		case "t":
			return ::Json.Deserialize.ParseBool(parseTracker);
			break;
		default:
			if (::Json.Utils.IsNumber(parseTracker.CurChar()))
			{
				return ::Json.Deserialize.ParseNumber(parseTracker);
			}

			throw "Json::Deserialize::ParseValue(): pointer="+parseTracker.pointer+" invalid token passed to json parser: \""+parseTracker.CurChar()+"\"";
	}
}

function Json::Deserialize::String(jsonData)
{
	local parseTracker = ::Json.Deserialize.ParserTracker(jsonData);
	parseTracker.DataStrip();

	return ::Json.Deserialize.ParseValue(parseTracker);
}

function Json::Deserialize::File(filepath)
{
	local jsonContent = ::Json.Utils.FileToString(filepath);
	return ::Json.Deserialize.String(jsonContent);
}

::Json.Serialize <-
{

}

function Json::Serialize::ExpandIndent(indentAmt)
{
	local rStr = "";
	local i;
	for (i = 0; i < indentAmt; i++)
	{
		rStr += " ";
	}
	return rStr;
}

function Json::Serialize::String(theString, baseIndent=2, curIndent=0, lineSep="\n")
{
	// return "\""+escaped(theString)+"\"";
	return "\""+theString+"\"";
}

function Json::Serialize::Table(theTable, baseIndent=2, curIndent=0, lineSep="\n")
{
	local rStr = "{"+lineSep;
	// indent += 2;
	foreach (tableKey, keyValue in theTable)
	{
		rStr += ::Json.Serialize.ExpandIndent(curIndent + baseIndent)+::Json.Serialize.String(tableKey)+": "+::Json.Serialize.Object(keyValue, baseIndent, curIndent + baseIndent, lineSep)+","+lineSep;
	}
	if (theTable.len() > 0)
	{
		rStr = rStr.slice(0, rStr.len() - (1 + lineSep.len()));
	}
	rStr += ::Json.Serialize.ExpandIndent(curIndent)+lineSep+::Json.Serialize.ExpandIndent(curIndent)+"}";
	return rStr;
}

function Json::Serialize::Array(theArray, baseIndent=2, curIndent=0, lineSep="\n")
{
	local rStr = "["+lineSep;
	foreach (i, item in theArray)
	{
		rStr += ::Json.Serialize.ExpandIndent(curIndent + baseIndent)+::Json.Serialize.Object(item, baseIndent, curIndent + baseIndent, lineSep)+","+lineSep;
	}
	if (theArray.len() > 0)
	{
		rStr = rStr.slice(0, rStr.len() - (1 + lineSep.len()));
	}
	rStr += lineSep+::Json.Serialize.ExpandIndent(curIndent)+"]";
	return rStr;
}

function Json::Serialize::Object(theObject, baseIndent=2, curIndent=0, lineSep="\n")
{
	switch (typeof theObject)
	{
		case "table":
			return ::Json.Serialize.Table(theObject, baseIndent, curIndent, lineSep);
			break;
		case "string":
			return ::Json.Serialize.String(theObject, baseIndent, curIndent, lineSep);
			break;
		case "array":
			return ::Json.Serialize.Array(theObject, baseIndent, curIndent, lineSep);
		case "float":
		case "integer":
			return ""+theObject;
			break;
		default:
			return ""+theObject;
			break;
	}
}

function Json::Serialize::ToString(theObject, indent=2)
{
	local lineSeper;
	if (indent > 0)
	{
		lineSeper = "\n";
	}
	else
	{
		lineSeper = "";
	}

	return ::Json.Serialize.Object(theObject, indent, 0, lineSeper);
}

function Json::Serialize::ToFile(filepath, theObject, indent=2)
{
	local wStr = ::Json.Serialize.ToString(theObject, indent);
	printl("Json::Serialize::ToFile(): wStr="+wStr);
	::Json.Utils.StrToFile(filepath, wStr);
}


function TestStuff()
{
	// printl("emptyChars = "+::Json.Utils.PrintThing(::Json.Utils.emptyChars, true));
	local jsonResult = ::Json.Deserialize.String("{\"meow\": \"cat\"}");
	printl("jsonResult = "+::Json.Utils.PrintThing(jsonResult, true));
	// printl("jsonResult[\"meow\"] = "+::Json.Utils.PrintThing(jsonResult["meow"], true));
	// local jsonFileResult = ::Json.Deserialize.File("/mnt/f/stuff/pycharmprojects/newrandomstuff/selfbots/showuploaderbot/filter_complex_builder.json");
	// printl("jsonFileResult = "+::Json.Utils.PrintThing(jsonFileResult, true));
	// local jsonSerializeResult = ::Json.Serialize.Object(jsonFileResult);
	// printl("\n\njsonSerializeResult = "+jsonSerializeResult);
	// ::Json.Serialize.ToFile("./kitty.json", jsonFileResult, 0);
	printl("TestStuff() exit successfully!");
}

// TestStuff();

