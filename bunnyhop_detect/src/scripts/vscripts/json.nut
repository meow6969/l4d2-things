// custom json serializer/deserializer for l4d2
// made by meow
// if u encounter errors make a issue on the github: https://github.com/meow6969/l4d2-things


// uncomment this line if u are running this script not in l4d2
// function printl(line="")
// {
// 	printf(line+"\n");
// }

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

function Json::Utils::Error(e)
{
	local context = ""; 
	local sI = getstackinfos(2);
	if ("parseTracker" in sI.locals)
	{
		local parseTracker = sI.locals["parseTracker"];
		// printl("PARSETRACKER");
		local leftBound = parseTracker.pointer - 50;
		local rightBound = parseTracker.pointer + 1;
		if (leftBound < 0) leftBound = 0;
		if (rightBound > parseTracker.jsonData.len()) rightBound = parseTracker.jsonData.len();
		// printl("PARSETRACKER2");
		context = "\n[JsonError|Context] "+parseTracker.jsonData.slice(leftBound, rightBound)+"<<<";
	}
	throw "[JsonError|"+sI.src+":"+sI.func+"():"+sI.line+"] "+e+context;
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
		case "null":
			pStr = "null";
			break;
		case "function":
			pStr = ::Json.Utils.PrintFunction(theThing, true);
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

function Json::Utils::PrintClass(theClass, returnString=false)
{
	
}

function Json::Utils::PrintFunction(theFunc, returnString=false)
{
	local infos = theFunc.getinfos();
	local rStr = "";
	if (infos.native)
	{
		rStr = "C::"+infos.name+"(";
		if (infos.paramscheck > 0)
		{
			for (local i = 0; i < infos.paramscheck; i++)
			{
				rStr += "param"+i+", ";
			}
			rStr = rStr.slice(0, -2);
		}
		// rStr += ")";
	}
	else 
	{
		rStr = infos.src+"::"+infos.name+"(";
		// this is to remove the redundant "this" parameter
		infos.parameters = infos.parameters.slice(1);
		local numParams = infos.parameters.len();
		local numDefParams = infos.defparams.len();
		if (numParams > 0)
		{
			foreach (i, val in infos.parameters)
			{
				if (val == "vargv" && infos.varargs > 0)
				{
					continue;
				}
				rStr += val;
				local defParamsIndex = numParams - i;
				if (defParamsIndex < numDefParams)
				{
					rStr += "="+::Json.Utils.PrintThing(infos.defparams[defParamsIndex], true);
				}
				rStr += ", ";
			}
			rStr = rStr.slice(0, -2);
		}
		// rStr += ")";
	}
	rStr += ")";
	if (returnString)
	{
		return rStr;
	}
	printl(rStr);
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
	if (theArray.len() > 0)
	{
		foreach (i, thing in theArray)
		{
			// printl("Json::Utils::PrintArray(): calling PrintThing() for "+thing);
			pStr += ::Json.Utils.PrintThing(thing, true)+", ";
		}
		
		pStr = pStr.slice(0, pStr.len() - itemSeperator.len());
	}
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

function Json::Utils::EscapeString(theString)
{
	local pointer = 0;
	local rStr = "";
	
	while (pointer < theString.len())
	{
		local theChar = theString[pointer].tochar();
	
		switch (theChar)
		{
			case "\\":
				rStr += "\\\\";
				break;
			case "\t":
				rStr += "\\t";
				break;
			case "\r":
				rStr += "\\r";
				break;
			case "\n":
				rStr += "\\n";
				break;
			case "\f":
				rStr += "\\f";
				break;
			case "\b":
				rStr += "\\b";
				break;
			case "\v":
				rStr += "\\v";
				break;
			/* case "'":
				pStr += "'";
				break; */
			case "\"":
				rStr += "\\\"";
				break;
			default:
				rStr += theChar;
				break;
		}
		pointer++;
	}
	return rStr;
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

function Json::Utils::GetClassNamingPolicy(theClass)
{
	local rDict = {};
	foreach (member, val in theClass)
	{
		local memberAttrs = theClass.getattributes(member);
		if ("json_name" in memberAttrs)
		{
			// maybe do error checking with json_name ?? ???
			rDict[member] <- memberAttrs["json_name"];
			continue;
		}
		rDict[member] <- member;
	}
	return rDict;
}

::Json.Deserialize <- 
{
	
}

class ::Json.Deserialize.DeserializeOptions
{
	propertyNameCaseSensitive	= true;
	// ignoredTypes				= ["function", "file", "regexp"];

	constructor(propNameSens=true)  // , iTypes=["function", "file", "regexp"])
	{
		this.propertyNameCaseSensitive = propNameSens;
		
	}
}

::Json.Deserialize.defaultOptions <- ::Json.Deserialize.DeserializeOptions();

class ::Json.Deserialize.ParserTracker 
{
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
	parseTracker.PointerAdd(-1);
	if (dots > 0)
	{
		return rInt.tofloat();
	}
	
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

		if (theChar == "\\") 
		{
			nextEscaped = true;
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
	local firstLoop = true;
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
			if (firstLoop && theChar == "}") return rTable;
			if (theChar != "\"")
			{
				// throw "Json::Deserialize::ParseTable(): expected \", got "+theChar;
				e = "expected \"\"\" "; 
				if (firstLoop) e += "or \"}\"";
				e += ", got \""+theChar+"\"";
				::Json.Utils.Error(e);
			}
			currentKey = ::Json.Deserialize.ParseString(parseTracker);
			currentGoal++;
			continue;
		}
		if (currentGoal == 1)
		{
			if (theChar != ":")
			{
				::Json.Utils.Error("expected \":\", got \""+theChar+"\"");
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
				firstLoop = false;
				currentGoal = 0;
				continue;
			}
			
			if (theChar == "}")
			{
				break;
			}
			// printl("context: "+parseTracker.jsonData.slice(parseTracker.pointer - 50, parseTracker.pointer + 1)+"<<<");
			::Json.Utils.Error("expected \",\" or \"}\", got \""+theChar+"\"");
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

function Json::Deserialize::ParseNull(parseTracker)
{
	local theChar = parseTracker.CurChar();
	local expectation = "null";

	if (theChar != "n") { 
		throw "Json::Deserialize::ParseNull(): got invalid first char expected n got "+theChar;
	}

	local expectationIndex = 0;
	
	while (parseTracker.PointerNotReachedEnd())
	{
		parseTracker.PointerAdd();
		expectationIndex++;
		local theChar = parseTracker.CurChar();

		if (theChar != expectation[expectationIndex].tochar())
		{
			throw "Json::Deserialize::ParseNull(): got invalid char expected "+expectation[expectationIndex].tochar()+" got "+theChar;
		}

		if (expectationIndex == expectation.len() - 1)
		{
			return null;
		}
	}
	throw "Json::Deserialize::ParseNull(): did not get enough chars";
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
		case "n":
			return ::Json.Deserialize.ParseNull(parseTracker);
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

function Json::Deserialize::ExtractClassProperties(jsonTable, theClass)
{
	local namingPolicy = ::Json.Utils.GetClassNamingPolicy(theClass);
	local rClass = theClass.instance();	

	foreach (member, val in theClass)
	{
		local valType = typeof val;
		if (::Json.Serialize.defaultOptions.IgnoreType(val) || valType == "class")
		{
			continue;
		}
		local attrs = theClass.getattributes(member);
		
		/* local valType;
		if ("json_value_type" in attrs)
			if (typeof attrs["json_value_type"] == "class")
			valType = attrs["json_value_type"];
		else valType = null; */
		
		local jsonName = namingPolicy[member];
		//                        this is so it just ignores it if its default value
		if (jsonName in jsonTable && theClass[member] != jsonTable[jsonName])
		{
			if (valType == "instance")
			{
				rClass.rawset(member, ::Json.Deserialize.ExtractClassProperties(jsonTable[jsonName], val.getclass()));
				continue;
			}
			
			if ("json_sub_type" in attrs && typeof attrs["json_sub_type"] == "class")
			{
				local newThing;
				local parType;
				if ("json_type" in attrs)
					parType = attrs["json_type"];
				else parType = valType;
				local jsonValType = typeof jsonTable[jsonName];
				if (parType != jsonValType && jsonValType != "null")
				{
					if ("json_type" in attrs)
						::Json.Utils.Error("error: \"json_type\" value \""+parType+"\" does not match up with type of json table value type \""+jsonValType+"\"");
					::Json.Utils.Error("error: class member \""+member+"\" type \""+parType+"\" does not match up with type of json table value type \""+jsonValType+"\"");
				}

				switch (parType)
				{
					case "table":
						newThing = {};
						foreach (key, keyVal in jsonTable[jsonName])
						{
							newThing[key] <- ::Json.Deserialize.ExtractClassProperties(keyVal, attrs["json_sub_type"]);
						}
						break;
					case "array":
						newThing = [];
						foreach (_, arrVal in jsonTable[jsonName])
						{
							newThing.append(::Json.Deserialize.ExtractClassProperties(arrVal, attrs["json_sub_type"]));
						}
						break;
					default:
						::Json.Utils.Error("error: \"json_sub_type\" attribute can only deserialize to parent types of \"table\" and \"array\", not type \""+parType+"\"");
						break;
				}
				// rClass.rawset(member, ::Json.Deserialize.ExtractClassProperties(jsonTable[jsonName], attrs["json_value_type"]));
				rClass.rawset(member, newThing);
				continue;
			}
			if ("json_type" in attrs && theClass[member] != jsonTable[jsonName] && typeof attrs["json_type"] == "class")
			{
				rClass.rawset(member, ::Json.Deserialize.ExtractClassProperties(jsonTable[jsonName], attrs["json_type"]));
				continue;
			}
			rClass.rawset(member, jsonTable[jsonName]);
		}
		/* else if ("json_type" in attrs)
		{
			local newThing;
			switch (attrs["json_sub_type_container"])
			{
				case "table":
					newThing = {};
					break;
				case "array":
					newThing = [];
					break;
				default:
					::Json.Utils.Error("error: \"json_sub_type\" attribute can only deserialize to parent types of \"table\" and \"array\", not type \""+attrs["json_sub_type_container"]+"\"");
					break;
			}
			rClass.rawset(member, newThing);
		} */
	}
	return rClass;
}

function Json::Deserialize::StringToClass(jsonData, theClass, options=::Json.Deserialize.defaultOptions)
{
	local rDict = ::Json.Deserialize.String(jsonData)
	
	return ::Json.Deserialize.ExtractClassProperties(rDict, theClass);
}

function Json::Deserialize::FileToClass(filepath, theClass, options=::Json.Deserialize.defaultOptions)
{
	local jsonContent = FileToString(filepath);
	if (!jsonContent) return null;
	return ::Json.Deserialize.StringToClass(jsonContent, theClass, options);
}

::Json.Serialize <-
{
	
}

class Json.Serialize.SerializerOptions
{
	baseIndent		= 2;
	lineSeperator	= "\n";
	itemSeperator	= " ";
	ignoredTypes 	= ["function", "file", "regexp"];

	constructor(bInd=2, lSep="\n", iSep=" ", iTypes=["function", "file", "regexp"])
	{
		this.baseIndent = bInd;
		this.lineSeperator = lSep;
		this.itemSeperator = iSep;
		this.ignoredTypes = iTypes;
	}

	function IgnoreType(obj, theClass=null, theMember=null)
	{
		// print("typeof(obj)="+typeof obj+" in ignoredTypes("+::Json.Utils.PrintThing(this.ignoredTypes, true)+") = "+this.ignoredTypes.find(typeof obj)+"\n");
		if (this.ignoredTypes.find(typeof obj) != null)
		{
			return true;
		}
		if (theClass != null && theMember != null)
		{
			local memberAttrs = theClass.getattributes(theMember);
			if ("json_ignore" in memberAttrs && memberAttrs["json_ignore"])
			{
				return true;
			}
			return false;
		}
		return false;
	}
}

::Json.Serialize.defaultOptions			<- ::Json.Serialize.SerializerOptions();
::Json.Serialize.semiMinifiedOptions	<- ::Json.Serialize.SerializerOptions(0, "");
::Json.Serialize.minifiedOptions		<- ::Json.Serialize.SerializerOptions(0, "", "");

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

function Json::Serialize::String(theString, options=::Json.Serialize.defaultOptions, curIndent=0)
{
	// return "\""+escaped(theString)+"\"";
	return "\""+::Json.Utils.EscapeString(theString)+"\"";
} 

function Json::Serialize::Table(theTable, options=::Json.Serialize.defaultOptions, curIndent=0)
{
	local rStr = "{"+options.lineSeperator;
	local wroteItem = false;
	// indent += 2;
	foreach (tableKey, keyValue in theTable)
	{
		if (options.IgnoreType(keyValue))
		{
			continue;
		}
		wroteItem = true;
		rStr += ::Json.Serialize.ExpandIndent(curIndent + options.baseIndent)+::Json.Serialize.String(tableKey)+":"+options.itemSeperator+::Json.Serialize.Object(keyValue, options, curIndent + options.baseIndent)+","+options.itemSeperator+options.lineSeperator;
	}
	
	// this is from a bizarre bug trying to serialize the root table
	// im just gonna remove it since it doesnt make sense to serialize the root table
	/* local tableLen = 0;
	try
	{
		tableLen = theTable.len();
	}
	catch (id)
	{
		foreach (i, _ in theTable)
		{
			tableLen += 1;
		}
	} 
	if (tableLen > 0) */
	
	/* if (theTable.len() > 0)
	{
		// rStr = rStr.slice(0, rStr.len() - (1 + lineSep.len()));
		rStr = rStr.slice(0, -(1 + lineSep.len()));
	} */
	if (wroteItem)
	{
		//         "x: y, \n"  1 for comma, then itemSep, then lineSep
		rStr = rStr.slice(0, -(1 + options.itemSeperator.len() + options.lineSeperator.len()));
		rStr += ::Json.Serialize.ExpandIndent(curIndent)+options.lineSeperator+::Json.Serialize.ExpandIndent(curIndent)+"}";
	}
	else
	{
		rStr = "{}"; 
	}
	return rStr;
}

function Json::Serialize::Array(theArray, options=::Json.Serialize.defaultOptions, curIndent=0)
{
	local rStr = "["+options.lineSeperator;
	local wroteItem = false;
	foreach (i, item in theArray)
	{
		wroteItem = true;
		rStr += ::Json.Serialize.ExpandIndent(curIndent + options.baseIndent)+::Json.Serialize.Object(item, options, curIndent + options.baseIndent)+","+options.itemSeperator+options.lineSeperator;
	}
	if (wroteItem)
	{
		rStr = rStr.slice(0, -(1 + options.itemSeperator.len() + options.lineSeperator.len()));
		rStr += options.lineSeperator+::Json.Serialize.ExpandIndent(curIndent)+"]";
	}
	else
	{
		rStr = "[]";
	}
	return rStr;
}

function Json::Serialize::Function(theFunc, options=::Json.Serialize.defaultOptions, curIndent=0)
{
	local infos = theFunc.getinfos();
	if (typeof infos.name != "string")
	{
		infos.name = ::Json.Serialize.Object(infos.name, ::Json.Serialize.semiMinifiedOptions, 0);
	}
	local rStr = "\"";
	if (infos.native)
	{
		rStr += "C::"+infos.name+"(";
		if (infos.paramscheck > 0)
		{
			for (local i = 0; i < infos.paramscheck; i++)
			{
				rStr += "param"+i+","+options.itemSeperator;
			}
			rStr = rStr.slice(0, -(1 + options.itemSeperator.len()));
		}
		// rStr += ")";
	}
	else 
	{
		rStr += infos.src+"::"+infos.name+"(";
		// this is to remove the redundant "this" parameter
		infos.parameters = infos.parameters.slice(1);
		local numParams = infos.parameters.len();
		local numDefParams = infos.defparams.len();
		if (numParams > 0)
		{
			foreach (i, val in infos.parameters)
			{
				if (val == "vargv" && infos.varargs > 0)
				{
					continue;
				}
				rStr += val;
				local defParamsIndex = numParams - i;
				if (defParamsIndex < numDefParams)
				{
					rStr += "="+::Json.Serialize.Object(infos.defparams[defParamsIndex], ::Json.Serialize.semiMinifiedOptions, 0);
				}
				rStr += ","+options.itemSeperator;
			}
			rStr = rStr.slice(0, -(1 + options.itemSeperator.len()));
		}
		// rStr += ")";
	}
	rStr += ")\"";
	return rStr;
}

function Json::Serialize::Class(theClass, options=::Json.Serialize.defaultOptions, curIndent=0, theInst=null)
{
	local rDict = {};
	local namingPolicy = ::Json.Utils.GetClassNamingPolicy(theClass);
	foreach (member, val in theClass)
	{
		if (theInst != null)
		{
			val = theInst[member];
		}

		/* local memberAttrs = theClass.getattributes(member);
		if ("json_ignore" in memberAttrs && memberAttrs["json_ignore"])
		{
			continue;
		}
		if (typeof val == "function" && ::Json.Serialize.ignoreFunctions)
		{
			continue;
		} */
		if (options.IgnoreType(val, theClass, member))
		{
			continue;
		}
		local jsonName = namingPolicy[member];
		rDict[jsonName] <- val;
	}
	return ::Json.Serialize.Table(rDict, options, curIndent);
}

function Json::Serialize::Instance(theInst, options=::Json.Serialize.defaultOptions, curIndent=0)
{
	/* local rDict = {};
	// print(""+theInst+"\n");
	foreach(member, _ in theInst.getclass())
	{
		// printl("instMember="+member+"\n");
		local memberAttrs = theClass.getattributes(member);
		if ("json_ignore" in memberAttrs && memberAttrs["json_ignore"])
		{
			continue;
		}
		local val = theInst[member];
		if (typeof val == "function" && ::Json.Serialize.ignoreFunctions)
		{
			continue;
		}
		rDict[member] <- val;
		// printl(member+"="+::Json.Utils.PrintThing(val, true));
	}
	return ::Json.Serialize.Table(rDict, baseIndent, curIndent, lineSep, itemSep); */
	return ::Json.Serialize.Class(theInst.getclass(), options, curIndent, theInst);
}

function Json::Serialize::Object(theObject, options=::Json.Serialize.defaultOptions, curIndent=0)
{

	if (options.IgnoreType(theObject))
	{
		return "null";
	}
	// print("object<"+theObject+">="+typeof theObject+"\n");
	switch (typeof theObject)
	{
		case "table":
			return ::Json.Serialize.Table(theObject, options, curIndent);
			break;
		case "string":
			return ::Json.Serialize.String(theObject, options, curIndent);
			break;
		case "array":
			return ::Json.Serialize.Array(theObject, options, curIndent);
		case "float":
		case "integer":
			return ""+theObject;
			break;
		case "null":
			return "null";
			break;
		case "function":
			// throw "Json::Serialize::Object(): cannot serialize object of type \"function\"";
			// return "\""+theObject+"\"";
			/* if (::Json.Serialize.ignoreFunctions)
			{
				return "null";
				break;
			} */
			
			return ::Json.Serialize.Function(theObject, options, curIndent);
			break;
		case "instance":
			// throw "Json::Serialize::Object(): cannot serialize object of type \""+typeof theObject+"\"";
			// return "\""+theObject+"\"";
			return ::Json.Serialize.Instance(theObject, options, curIndent);
			break;
		case "file":
		case "regexp":
			// throw "Json::Serialize::Object(): cannot serialize object of type \""+typeof theObject+"\"";
			// return "\""+theObject+"\"";
			return ::Json.Serialize.Instance(theObject, options, curIndent);
			break;
		case "class":
			// throw "Json::Serialize::Object(): cannot serialize object of type \"class\"";
			// return "\""+theObject+"\"";
			return ::Json.Serialize.Class(theObject, options, curIndent);
			break;
		default:
			return ""+theObject;
			break;
	}
}

function Json::Serialize::ToString(theObject, indent=2)
{
	local options;
	if (theObject instanceof ::Json.Serialize.SerializerOptions)
	{
		options = indent;
	}
	else
	{
		local lineSeper;
		local itemSeper;
		if (indent > 0)
		{
			lineSeper = "\n";
			itemSeper = " ";
		}
		else
		{
			lineSeper = "";
			itemSeper = "";
		}
		options = ::Json.Serialize.SerializerOptions(indent, lineSeper, itemSeper);
	}
	
	return ::Json.Serialize.Object(theObject, options, 0);
}

function Json::Serialize::ToFile(filepath, theObject, indent=2)
{
	local wStr = ::Json.Serialize.ToString(theObject, indent);
	// printl("Json::Serialize::ToFile(): wStr="+wStr);
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

