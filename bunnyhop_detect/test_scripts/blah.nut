function StringReplace(s, o, r)
	{
		print("s=\""+s+"\",o=\""+o+"\",r="+r+"\"\n");
		local ex = regexp(o);
		local res = ex.search(s);
		local newStr = "";
		local i = 0;
		local res;
		while ((res = ex.search(s, i)) != null)
		{
			print("begin="+res.begin+",end="+res.end+",slice=\""+s.slice(res.begin, res.end)+"\"\n");
			newStr = newStr+s.slice(i, res.begin)+r;
			i = res.end;
		}
		newStr = newStr+s.slice(i);
		print("newStr=\""+newStr+"\"\n");
	}

function LocalTime(a=null)
	{
		local d = date();
		return {
			second = d["sec"],
			minute = d["min"],
			hour = d["hour"],
			day = d["day"],
			month = d["month"],
			dayofweek = d["wday"],
			dayofyear = d["yday"],
			daylightsavings = 0
		}
	}

StringReplace("kat kitty kat mkateow katkat", "kat", "kitten");
print("\n");
StringReplace("STEAM_1:1:234234234".slice(6), ":", "_");

print(LocalTime({})["day"]);

