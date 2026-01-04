# Documentation on the included json.nut  

the included json.nut is a vscript json serializer and deserializer that supports the entire json standard  
you can use it in your own mods if you want to, i worked very hard on it  
just put `IncludeScript("json.nut");` at the top of your vscript file (or `dofile("json.nut");` if you are not running the script in L4D2)  
then you can serialize json to a file with `::Json.Serialize.ToFile(file_path, my_table);`, or you can serialize it to a string with `local json_string = ::Json.Serialize.ToString(my_table);`  
and you can deserialize json from a file with `local my_table = ::Json.Deserialize.File(file_path);` or you can deserialize it from a string with `local my_table = ::Json.Deserialize.String(json_string);`  
  
you can also serialize and deserialize classes  
deserialization:  
 * do `local my_instance = ::Json.Deserialize.StringToClass(json_string, MyClass)`  
 * or, from a file: `local my_instance = ::Json.Deserialize.FileToClass(file_path, MyClass)`  

serialization:  (serialization of classes is the same as serialization of tables)  
 * do `local json_string = ::Json.Serialize.ToString(my_table);`  
 * or, to a file: `::Json.Serialize.ToFile(file_path, my_table)`  

functions & sub class members are ignored  

class serialization & deserialization support member attributes  
 * the `json_name<string>` attribute will make the class member serialize and deserialize to a different name than what they are referenced as in squirrel  
   * EX: `</ json_name = "player-name" />`
   * this can be useful if the naming scheme of the json files you are using are different from the naming scheme of your squirrel code

 * the `json_ignore<bool>` attribute will cause the serializer to ignore serialization of this member  
   * EX: `</ json_ignore = true />`  

 * the `json_type<class|string>` attribute will specify to the deserializer what the member type should be. this should be either a `class` object, or `"array"` or `"table"`. nothing else  
   * EX: `</ json_type = "table" />`  

 * the `json_sub_type<class>` attribute will specify to the deserializer what the sub type of this member should be. this should only be used when the base type is an `"array"` or `"table"`. this will cause the deserializer to deserialize the child objects of this member as the class you define it as. this should only be a `class` object, nothing else.  
   * EX: `</ json_type = ::MyClasses.MeowClass />`  

NOTES:
 * `json_type` does not *need* to be specified when you supply `json_sub_type`, it just ensures that the correct type gets deserialized  
 * if the value specified in the json file is the same as the default class member value, both `json_type` and `json_sub_type` will not do anything  
 * helpful behavior of this is that if the `json_sub_type` class is updated with a new member, all of the child objects will automatically get filled out by the default value of the class  
 * the constructor() function of the class is not called, the classes are instantiated with `class.instance()`  
 
### here is some example usage of the json attributes from my bhop detector mod:  

```Squirrel
class ::BhopClasses.BhopChainData
{
    // tells the deserializer that, although this member has a default value type of null, when it does receive data this member will be an array
    // that holds ::BhopClasses.BhopData instances
    </ json_type = "array", json_sub_type = ::BhopClasses.BhopData />
    bhopChain                  = null;           // list[BhopData]

    bhopVels                   = 0;              // float<velocity> (additive)
    maxVel                     = 0;              // float<velocity>

    // this means the groundTime member will not be serialized when made into json
    </ json_ignore = true />
    groundTime                 = 0;              // int<tick>

    score                      = 0;              // float
    timeString                 = "";

    // this means the player member will not be serialized when made into json
    </ json_ignore = true />
    player                     = null;           // Player
}

class ::BhopClasses.PlayerSettings
{
    Admin                      = false;
    IgnoreBhop                 = false;
    IgnorePerfectJumps         = false;
    TotalBhops                 = 0;
    HighestVelocity            = 0;
    TotalDistanceBhopped       = 0;

    // this has a default value of null, but if this field is filled out i want it to be deserialized as a ::BhopClasses.BhopChainData object
    </ json_type = ::BhopClasses.BhopChainData />
    BestBhop                   = null;

    Name                       = null;
}

class ::BhopClasses.ScoringSettings
{
    BhopCountMult              = 0.2;
    BhopAvgVelocityMult        = 2.0;
}

class ::BhopClasses.BhopConfig
{
    // the ConfigPath member wont be written to the json file
    </ json_ignore = true />
    ConfigPath                 = "simple_bunnyhop_detect/bhop_detect_condition.json";

    // the ConfigAltered member wont be written to the json file
    </ json_ignore = true />
    ConfigAltered              = false;

    BunnyDetectCount           = 3;
    BunnyTickLeniency          = 3;

    // this is an instance, however the json deserializer will detect this as a ::BhopClasses.ScoringSettings type, and knows to deserialize to that type
    // this means that if you added a new member to the ScoringSettings class, for example "BhopMaxVelocityMult", it would get properly deserialized & serialized
    // if you for some reason wanted to disable this behavior, you could add
    // </ json_type = "table" />
    // this would cause the json deserializer to set ScoringSettings to a table 
    ScoringSettings            = ::BhopClasses.ScoringSettings();

    NumLeaderboardSlots        = 5;
    LeaderboardOnRoundEnd      = true;
    
    // this is an instance and the json deserializer will properly detect its class and deserialize properly
    // i have added the json_type attribute to show that that attribute makes no difference in how this member is serialized
    // this means you can put the json_type attribute just to be verbose in your code
    </ json_type = ::BhopClasses.PlayerSettings />
    DefaultPlayerSettings      = ::BhopClasses.PlayerSettings();

    // this json_sub_type means that the deserializer will deserialize the values of this table as a ::BhopClasses.PlayerSettings class
    // if i wanted to be verbose, i could also add the json_type attribute, however i dont need to do this as the deserializer will get the
    // type of the parent object from the default value
    // if the default value was null instead, i would need to put the json_type attribute, and it would look like:
    // </ json_type = "table", json_sub_type = ::BhopClasses.PlayerSettings />
    </ json_sub_type = ::BhopClasses.PlayerSettings />
    PlayerSettings             = {};             // dict[steamID<str>, PlayerSettings[dict]]

    // the BunnyTickerEnt member wont be written to the json file
    </ json_ignore = true />

    // the BunnyTickerEnt member wont be written to the json file
    BunnyTickerEnt             = null;

    // the BunnyUtilsTickerEnt member wont be written to the json file
    </ json_ignore = true />
    BunnyUtilsTickerEnt        = null;

    // the ConfigTickerEnt member wont be written to the json file
    </ json_ignore = true />
    ConfigTickerEnt            = null;

    // the JumpingList member wont be written to the json file
    </ json_ignore = true />
    JumpingList                = {};             // dict[str<steamID>, BhopChainData]

    // the PlayerInitList member wont be written to the json file
    </ json_ignore = true />
    PlayerInitList             = [];             // list[userid]
                                                 // this helps us keep track of what players are initialized
    // the build_num member wont be written to the json file
    </ json_ignore = true />
    build_num=35
}

::BhopVars <- ::BhopClasses.BhopConfig();

// here is the code where i serialize & deserialize the ::BhopVars instance
::BhopFunc <-
{
    function loadFile()
    {
        printl("Bunnyhop detect condition (build num "+::BhopVars.build_num+") :  successfully reload !! yay!");
        local path = ::BhopVars.ConfigPath;
        local file = FileToString(path);

        if(!file)
        {
            printl("not file !!");
            ::BhopFunc.WriteConfig(path);
            return;
        }
        
        printl("file="+file);

        try
        {
            ::BhopVars <- ::Json.Deserialize.StringToClass(file, ::BhopClasses.BhopConfig);
        }
        catch(error)
        {
            throw "Bunnyhop detect config parse error: "+error;
        }
        printl("loaded bunny hop config:");

        // here i use the ::Json.Serialize.ToString() method to print the contents of the ::BhopVars instnace
        // this is a very helpful use of the function since it by default pretty prints the class with an indent of 2
        printl(::Json.Serialize.ToString(::BhopVars));
        ::BhopFunc.WriteConfig();
    }

    function WriteConfig(path=null)
    {
        if (path == null) path = ::BhopVars.ConfigPath;

        // the special class based logic is only needed when deserializing
        // serializing classes is no different than serializing any other object
        ::Json.Serialize.ToFile(path, ::BhopVars);
    }
}
```

