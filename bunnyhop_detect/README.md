
# meow bunnyhop detect  

this is a fork of [simple bunnyhop detect](https://steamcommunity.com/sharedfiles/filedetails/?id=2256379828)  
this one is heavily modified to add new features and alter bunny hop detection  

# config documentation  

```jsonc
// FILE: "Left 4 Dead 2/left4dead2/ems/simple_bunnyhop_detect/bhop_detect_condition.json"
{
  // you shouldnt need to edit this, unless you are giving yourself Admin
  // this just holds data for the users settings and their bhop related statistics
  "PlayerSettings": {
    // the players steam ID
    "STEAM_1:1:460132072": {
      // the total distance bhopped by this user
      "TotalDistanceBhopped": 89013.3, 
      "BestBhop": {
        // the highest velocity achieved during this bhop chain
        "maxVel": 310.78, 
        // the added "vel" member values of each member of the "bhopChain" array
        "bhopVels": 2846.57, 
        "bhopChain": [
          {
            "vel": 220.002, 
            "airTime": 12          
          }, 
          ...
        ], 
        // this is the score of this bhop chain, which is used by the leaderboard functions
        "score": 2277.25,
        // the date the bhop chain happened (YYYY/MM/DD)
	    "timeString": "2025/7/26"
      }, 
      // setting this to true means the player has access to the !bhop settings command
      // this should only be set to true for people you truly trust
      "Admin": true, 
      // highest velocity this user ever achieved while bhopping
      "HighestVelocity": 347.024, 
      // the username of the user
      "Name": "elitezrule2", 
      // the total amount of bhops the user has ever made
      "TotalBhops": 708, 
      // whether or not this user receives the "perfect jump!" chat message when they make a perfect jump
      "IgnorePerfectJumps": true, 
      // whether or not this user is ignored by the script entirely
      "IgnoreBhop": false    
    }, 
    ...  
  }, 
  // these are the constants values that control the scoring algorithm
  // bhopCountMult is multiplied by the number of bhops in the bhop chain
  // BhopAvgVelocityMult is multiplied by the average velocity of all bhops in the bhop chain
  // the final score is the product of the previous 2 operations
  // a higher BhopCountMult causes the amount of bhops to be more favored, while a higher BhopAvgVelocityMult causes bhop speed to be more favored
  "ScoringSettings": {
    "BhopCountMult": 0.4, 
    "BhopAvgVelocityMult": 2  
  }, 
  // these are the settings that a player will be assigned with when they first join the server
  // some of the only useful things to change are "IgnorePerfectJumps" and "IgnoreBhops"
  // you could set both or either of those to true if you dont want new players to have to deal with the bhop detector
  "DefaultPlayerSettings": {
    "TotalDistanceBhopped": 0, 
    "IgnorePerfectJumps": false, 
    "BestBhop": null, 
    "Admin": false, 
    "HighestVelocity": 0, 
    "IgnoreBhop": false, 
    "TotalBhops": 0  
  }, 
  // this decides the fewest number of bhops in a bhop chain before it qualifies as a actual bhop
  // a "BunnyDetectCount" of 3 means the player must make at least 3 bhops until it qualifies as a actual bhop
  "BunnyDetectCount": 3, 
  // this decides how many ticks the player can be on the ground continuously before a bhop chain is broken
  // a "BunnyTickLeniency" value of 1 means that the player must get a perfect jump every time
  // while a "BunnyTickLeniency" value of 3 means that the player can be on the ground for up to 3 ticks before jumping again until their bhop chain is broken
  "BunnyTickLeniency": 2, 
  // this decides the maximum amount of players that will be reported from the "!bhop leaderboard" command
  "NumLeaderboardSlots": 5, 
  // this defines whether or not the leaderboard will be displayed when the survivors have beat the finale
  "LeaderboardOnGameEnd": true
}
```

# command documentation  

```
bhop detector help command
  "!bhop"                             :  show this text
  "!bhop help"                        :  show this text
  "!bhop rules"                       :  show the current bhop detection config
  "!bhop settings <setting> <value>"  :  [ADMIN] change setting value
  "!bhop stats <playerName?>"         :  show your bhop stats, supply name for others' stats
  "!bhop leaderboard"                 :  display the bhop leaderboard
  "!bhop toggle"                      :  toggle bhop announcing for you
  "!bhop toggle perfectjump"          :  toggle perfect jump announcing for you
```

### input parsing 
 
bhop detector parses chat input similar to a computer command line  
quotation marks `""` will tell bhop detector that what is enclosed in them should be parsed as 1 argument  
 * for example, the input `"!bhop" "lead"er"board"` will be turned into the argument list `["!bhop", "leaderboard"]`  
   * this is because there is no unquoted spaces in `"lead"er"board"`, if instead it was `"lead" er "board"`, it would be read as `["lead", "er", "board"]`  
 * the input `!bhop stats "soft cookie"` will be turned into the argument list `["!bhop", "stats", "soft cookie"]`  

you can escape both spaces and quotation marks with a `\`  
 * for example, the input `!bhop lead\ er\ board` will be turned into the argument list `["!bhop", "lead er board"]`  
 * the input `!bhop stats soft\ cookie` turns into the argument list `["!bhop", "stats", "soft cookie"]`  

to type a single `\`, escape a `\` with a `\`  
 * for example, the input `!bhop stats \\\"weird"name"` turns into the argument list `["!bhop", "stats", '\"weirdname']`  
   * the `\\` turns into `\`, the `\"` turns into `"`, and the `"name"` is interpreted as `name`, giving us `\"weirdname`  

## !bhop <"help"?>  

shows the help menu 

```
bhop detector help command
  "!bhop"                             :  show this text
  "!bhop help"                        :  show this text
  "!bhop rules"                       :  show the current bhop detection config
  "!bhop settings <setting> <value>"  :  [ADMIN] change setting value
  "!bhop stats <playerName?>"         :  show your bhop stats, supply name for others' stats
  "!bhop leaderboard"                 :  display the bhop leaderboard
  "!bhop toggle"                      :  toggle bhop announcing for you
  "!bhop toggle perfectjump"          :  toggle perfect jump announcing for you
```

this response is only broadcast to you  

## !bhop rules

shows the values of the variables related to bhop scoring and bhop detection  

```
current bhop ruleset:
  tick leniency                       :  2    // "BunnyTickLeniency"
  detection count                     :  3    // "BunnyDetectCount"
scoring rules:
  bhop count mult                     :  0.4  // "ScoringSettings"|"BhopCountMult"
  bhop velocity mult                  :  2    // "ScoringSettings"|"BhopAvgVelocityMult"
```

this response is only broadcast to you  

## !bhop settings  

changes values of variables that are in the config file or the ::BhopVars instance  
if you are marked as an admin, you can change these values in game with a chat command  
 * for example, if you wanted to set the bunny tick leniency to 5 you can enter this message in chat:  
 * `!bhop settings "BunnyTickLeniency" 5`  

you can also change values inside of tables by seperating the table name and the member name with the pipe character "|"  
 * `!bhop settings DefaultPlayerSettings|IgnorePerfectJumps true`  

you can even change player settings:  
 * `!bhop settings PlayerSettings|STEAM_1:1:460132072|Admin true` (here, just replace the `STEAM_1:1:460132072` with your friends steam ID, for example to make them admin)  

or even alter their best bhop score:  
 * `!bhop settings "PlayerSettings|STEAM_1:1:460132072|BestBhop|score" 99999999`  

if it responds with `set!` then the value is properly changed  
this response is only broadcast to you  

## !bhop stats <playerName?>

shows the stats of yourself or another player  
provide the <playerName?> argument if you want to see someone elses stats, otherwise it will display yours
 * EX: `!bhop stats` -> display your stats
 * EX: `!bhop stats "reimu fumo"` -> display stats of the user named `reimu fumo`
 * playerName is case insensitive

```
high score: 2277.25, total distance bhopped: 89013.3, total bhops: 708, highest velocity: 347.024
```

this response is broadcast to everyone  

## !bhop leaderboard  

displays the bhop leaderboard  

```
  1: elitezrule2 2025/7/26, score: 2277.25, bhops: 11, max speed: 310.78
  2: Pinhead0703 2025/7/27, score: 1658.51, bhops: 9, max speed: 272.877
  ...
```

this response is only broadcast to you  

## !bhop toggle  

enables/disables the script for you specifically  
if you are ignored, your bhop stats will not be tracked, you will not see any bhop announcements, you will not see perfect jump announcements, and all commands that are marked as `broadcast to everyone` will not broadcast to you  
in effect, this is as if the mod is not present for you specifically  

```
you will now be ignored by the bhop detector!
```

this response is only broadcast to you  

## !bhop toggle perfectjump  

enables/disables perfect jump announcing for you specifically  
if you are perfectjump ignored, you will not see a chat message when you make a perfect jump  

```
you will no longer be notified of your perfect jumps!
```

this response is only broadcast to you  

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

