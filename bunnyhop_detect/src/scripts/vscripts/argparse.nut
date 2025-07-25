if (!("ArgParse" in getroottable()))
{
	::ArgParse <-
	{
		
	}
}

function ArgParse::Split(s, sp)
{
	local r = [];
	local token = "";
	local part = "";
	if (sp == "")
	{
		throw "ArgParse::Strip(): split cannot be \"\"";
	}
	foreach (c in s)
	{
		c = c.tochar();
		token += c;
		part += c;
		if (token.len() > sp.len())
		{
			token = token.slice(1);
		}
		if (token == sp)
		{
			token = "";
			// local nya = 
			r.append(part.slice(0, -(sp.len())));
			part = "";
		}
	}
	r.append(part);
	return r;
}

function ArgParse::GetArgList(s)
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
					{
						arg += "\\";
					}
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
				{
					break;
				}
				r.append(arg);
				arg = "";
				break;
			default:
				arg += c;
				break;
		}
	}
	if (arg != "")
	{
		r.append(arg);
	}
	return r;
}

