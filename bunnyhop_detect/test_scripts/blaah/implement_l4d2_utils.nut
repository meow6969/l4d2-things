

::L4D2ImplementData <-
{
	LoadedFiles = []
}


::L4D2ImplementedFuncs <- 
{
	function printl(line="")
	{
		print(line+"\n");
	}
	function IncludeScript(scriptPath)
	{
		//print("meow\n");
		if (::L4D2ImplementData.LoadedFiles.find(scriptPath) != null)
			return;
		//printl("cat");
		::L4D2ImplementData.LoadedFiles.append(scriptPath);
		dofile(scriptPath);
	}
	// errAtMaxLen means the function will raise an error once the string exceeds 16383 chars in length since thats the max that this function supports in L4D2
	// readZeroByte means the function will return the leading zero byte that gets written from StringToFile
	function FileToString(filePath, errAtMaxLen=true, readZeroByte=false) // -> string or null if cannot read file (for wutever reason)
	{
		local f;
		try 
		{
			f = file(filePath, "r");
		}
		catch (e)
		{
			if (e == "cannot open file") return null;
			throw e;
		}
		local chunkSize = 512;
		local maxLen = 16383;
		local readType = 'c';  // char 8 bit signed integer
		local r = "";
		// f.eos() returns null when the pointer hasnt reached end
		while (f.eos() == null)
		{
			local b = f.readblob(chunkSize);
			while (b.eos() == null)
			{
				r += b.readn(readType).tochar();
			}
			if (errAtMaxLen && r.len() > 16383) throw "reached maxLen";
		}
		if (!readZeroByte && r.len() > 0 && r[r.len() - 1] == 0)
		{
			r = r.slice(0, -1);
		}
		return r;
	}
	// StringToFile has a bug that writes a zero byte at the end of the file
	function StringToFile(fPath, wData, saveZeroByte=true)
	{
		local chunkSize = 512;
		local writeType = 'c';
		// uname isnt a valid command on windows, so it doesnt return 0
		local isUnix = system("uname") == 0;
		local newFp = "";
		local lastSlash = -1;
		foreach (i, c in fPath)
		{
			c = c.tochar();
			if (c == "\\" || c == "/") 
			{
				lastSlash = i;
				if (isUnix) c = "/";
				else c = "\\";
			}
			newFp += c;
		}
		
		if (lastSlash != -1)
		{
			local wPath = newFp.slice(0, lastSlash + 1);
			local sysCmd;
			if (isUnix) sysCmd = "mkdir -p \""+wPath+"\"";
			else sysCmd = "mkdir \""+wPath+"\"";
			system(sysCmd);
			local wName = newFp.slice(lastSlash + 1);
			fPath = newFp;
		}


		local f = file(fPath, "w+");
		local b = blob(chunkSize);
		local bSize = 0;
		if (saveZeroByte) wData += "\x00";
		foreach (c in wData)
		{
			if (b.eos())
			{
				f.writeblob(b);
				b = blob(chunkSize);
				bSize = 0;
			}
			b.writen(c, writeType);
			bSize++;
		}
		b.resize(bSize);
		f.writeblob(b);
	}
	
	function SpawnEntityFromTable(clsN, tbl)
	{
		return ::L4D2ImplementedSingletons.Entities._CreateNewEntity(clsN, tbl);
	}

	function AddThinkToEnt(ent, fName)
	{
		ent.thinkFunc = ent.GetScriptScope()[fName];
	}

	function __CollectEventCallbacks(tbl, funcStart, callbackType, listener)
	{
		
	}

	function RegisterScriptGameEventListener(eventName)
	{

	}

	function LocalTime(a)
	{
		local d = date();
		a["second"]          <- d["sec"];
		a["minute"]          <- d["min"];
		a["hour"]            <- d["hour"];
		a["day"]             <- d["day"];
		a["month"]           <- d["month"];
		a["dayofweek"]       <- d["wday"];
		a["dayofyear"]       <- d["yday"];
		a["daylightsavings"] <- 0;
	}
}

::L4D2ImplementedClasses <-
{

}

class L4D2ImplementedClasses.Vector
{
	x = 0;
	y = 0;
	z = 0;

	constructor(xVal=0, yVal=0, zVal=0)
	{
		this.x = xVal;
		this.y = yVal;
		this.z = zVal;
	}
}

class L4D2ImplementedClasses.CBaseEntity
{
	// subEnts		= [];
	targetname		= "worldspawn";
	modelname		= null;
	className		= "worldspawn";
	scriptScope		= null;
	thinkFunc		= null;
	start_disabled	= null;
	RefireTime		= null;
	
	constructor(clsN, tbl)
	{
		this.className	= clsN;
		foreach (key, val in tbl)
		{
			this[key] = val;
		}
	}

	function Think()
	{
		if (this.thinkFunc != null)
			this.thinkFunc();
	}

	function ConnectOutput(event, funcName)
	{

	}

	function GetName()
	{
		return this.targetname;
	}

	function GetClassname()
	{
		return this.className;
	}

	function ValidateScriptScope()
	{
		this.scriptScope = {};
	}

	function GetScriptScope()
	{
		return this.scriptScope; // .weakref();
	}
}
// _allEntities <- [],

class L4D2ImplementedClasses.EntitiesHandle extends L4D2ImplementedClasses.CBaseEntity
{
	allEnts = [];

	constructor()
	{
		this.allEnts = [];
		this.allEnts.append(::L4D2ImplementedClasses.CBaseEntity("worldspawn", {"targetname": "worldspawn"}));
	}

	function _CreateNewEntity(clsN, tbl)
	{
		local ent = ::L4D2ImplementedClasses.CBaseEntity(clsN, tbl);
		allEnts.append(ent);
		return ent;
	}

	function FindByKey(handlePrev, key, name)
	{
		local foundPrev;
		if (handlePrev == null) foundPrev = true;
		else foundPrev = false;
		foreach (_, ent in this.allEnts)
		{
			if (!foundPrev)
			{
				if (ent == handlePrev)
				{
					foundPrev = true;
				}
				continue;
			}
			if (ent[key]() == name) return ent;
		}
		return null;
	}

	function FindByName(handlePrev, name)
	{
		return this.FindByKey(handlePrev, "GetName", name);
	}

	function FindByClassname(handlePrev, name)
	{
		return this.FindByKey(handlePrev, "GetClassname", name);
	}
}

class L4D2ImplementedClasses.CDirector
{
	function GetMapName()
	{
		return "c1m1_hotel";
	}
}

::L4D2ImplementedSingletons <-
{
	Entities = L4D2ImplementedClasses.EntitiesHandle(),
	Director = L4D2ImplementedClasses.CDirector()
}
	
	

::L4D2ImplementUtils <-
{
	function LoadThing(n, t, curT=null, force=false)
	{
		local setRt = curT == null;
		if (setRt) curT = getroottable();
		if (!force && n in curT)
			return false; // throw "L4D2ImplementUtils::LoadFunction(): force=false and \""+funcName+"()\" already in root table!";
		curT[n] <- t;
		if (setRt) setroottable(curT);
		print("[IMPLEMENTL4D2]: implemented "+typeof t+" \""+n+"\"\n");
		return true;
	}

	function LoadThings(srcT, curT=null, force=false)
	{
		local setRt = curT == null;
		if (setRt) curT = getroottable();
		foreach (name, o in srcT)
		{
			this.LoadThing(name, o, curT, force);
			// if (this.LoadThing(name, o, curT, force))
			// 	print("[IMPLEMENTL4D2]: implemented "+typeof o+" \""+name+"\"\n");
		}
		if (setRt) setroottable(curT);
	}

	function LoadSingletons(curT=null, force=false)
	{
		this.LoadThings(::L4D2ImplementedSingletons, curT, force);
	}

	function LoadSingleton(sName, force=true)  // -> bool false=function not added, true=function added
	{
		if (!(sName in ::L4D2ImplementedSingletons)) throw "L4D2ImplementUtils::LoadSingleton(): \""+sName+"()\" not found!";
		return this.LoadThing(sName, ::L4D2ImplementedSingletons[sName], null, force)
	}

	function LoadClasses(curT=null, force=false)
	{
		this.LoadThings(::L4D2ImplementedClasses, curT, force);
	}

	function LoadClass(clsName, force=true)  // -> bool false=function not added, true=function added
	{
		if (!(clsName in ::L4D2ImplementedClasses)) throw "L4D2ImplementUtils::LoadClass(): \""+clsName+"()\" not found!";
		return this.LoadThing(clsName, ::L4D2ImplementedClasses[clsName], null, force)
	}

	function LoadFunctions(curT=null, force=false)
	{
		this.LoadThings(::L4D2ImplementedFuncs, curT, force);
	}

	function LoadFunction(funcName, force=true)  // -> bool false=function not added, true=function added
	{
		if (!(funcName in ::L4D2ImplementedFuncs)) throw "L4D2ImplementUtils::LoadFunction(): \""+funcName+"()\" not found!";
		return this.LoadThing(funcName, ::L4D2ImplementedFuncs[funcName], null, force)
	}

	function LoadAll(force=false)
	{
		local curT = getroottable();
		this.LoadFunctions(curT, force);
		this.LoadClasses(curT, force);
		this.LoadSingletons(curT, force);
		setroottable(curT);
	}
}

::L4D2ImplementUtils.LoadAll();





