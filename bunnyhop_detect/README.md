
# meow bunnyhop detect  

this is a fork of [simple bunnyhop detect](https://steamcommunity.com/sharedfiles/filedetails/?id=2256379828)  
this one is heavily modified to add new features and alter bunny hop detection  

# config documentation  

```jsonc
// FILE: "Left 4 Dead 2/left4dead2/ems/meow_bhop_detect/config.json"
{
   
  // these are the settings that a player will be assigned with when they first join the server
  // some of the only useful things to change are "IgnorePerfectJumps" and "IgnoreBhops"
  // you could set both or either of those to true if you dont want new players to have to deal with the bhop detector
  "DefaultPlayerSettings": {
    // for documentation on what these do, scroll to the next code block
    "TotalDistanceBhopped": 0, 
    "IgnorePerfectJumps": false, 
    "BestBhop": null, 
    "Admin": false, 
    "HighestVelocity": 0, 
    "IgnoreBhop": false, 
    "TotalBhops": 0,
    "Name": null 
  }, 
  // this decides the fewest number of bhops in a bhop chain before it qualifies as a actual bhop
  // a "BunnyDetectCount" of 3 means the player must make at least 3 bhops until it qualifies as a actual bhop
  "BunnyDetectCount": 3, 
  // this decides how many ticks the player can be on the ground continuously before a bhop chain is broken
  // a "BunnyTickLeniency" value of 1 means that the player must get a perfect jump every time
  // while a "BunnyTickLeniency" value of 3 means that the player can be on the ground for up to 3 ticks before jumping again until their bhop chain is broken
  "BunnyTickLeniency": 2, 
  // this is the minimum velocity someone needs to be at before a bhop chain will start to be counted
  "BunnyMinStartingVel": 0,
  // this decides the maximum amount of players that will be reported from the "!bhop leaderboard" command
  "NumLeaderboardSlots": 5, 
  // this defines whether or not the session leaderboard will be displayed when the survivors have beat the finale
  "LeaderboardOnGameEnd": true
}
```

```jsonc
// FILE: "Left 4 Dead 2/left4dead2/ems/meow_bhop_detect/players/*.json"
// this folder contains json files containing PlayerSettings player data
// the file is named after the players steam id, except ":" is replaced with "_"
// you shouldnt need to edit PlayerSettings, unless you are giving yourself Admin
// PlayerSettings just holds data for the users settings and their bhop related statistics
{
  // the total distance bhopped by this user
  "TotalDistanceBhopped": 999336, 
  // the best bhop chain that the bhop detector has tracked
  "BestBhop": {
    // the highest velocity achieved during this bhop chain
    "maxVel": 390.552, 
    // the added "vel" member values of each member of the "bhopChain" array
    "bhopVels": 5095.36, 
    "bhopChain": [
      {
        // the speed the player was going when they landed
        "vel": 220, 
        // the amount of ticks the player was in the air
        "airTime": 18          
      }, 
      ...
    ], 
    // this is the score of this bhop chain, which is used by the leaderboard functions
    "score": 881,
    // the date the bhop chain happened (YYYY/MM/DD)
    "timeString": "2025/10/6"
  }, 
  // setting this to true means the player has access to the !bhop settings command
  // this should only be set to true for people you truly trust
  "Admin": true, 
  // highest velocity this user ever achieved while bhopping
  "HighestVelocity": 552.781, 
  // the username of the user
  "Name": "elitezrule2", 
  // the total amount of bhops the user has ever made
  "TotalBhops": 6418, 
  // whether or not this user receives the "perfect jump!" notification when they make a perfect jump
  "IgnorePerfectJumps": false, 
  // whether or not this user is ignored by the script entirely
  "IgnoreBhop": false     
}
```

```jsonc
// FILE: "Left 4 Dead 2/left4dead2/ems/meow_bhop_detect/sessions/*.json"
// this folder contains bhop session data for the bhop session leaderboard
// the bhop session leaderboard is a leaderboard that is tracked from the start of the campaign to the end of the campaign
// these files are temporary files, you shouldnt edit them
{
  // these fields are documented in the previous code block
  "STEAM_1:1:460132072": {
    "maxVel": 348.471, 
    "bhopVels": 4455.9, 
    "playerSteamID": "STEAM_1:1:460132072", 
    "bhopChain": [
      {
        "vel": 219.996, 
        "airTime": 18      
      }, 
      ...
    ], 
    "timeString": "2025/8/28", 
    "score": 775  
  }, 
  ...
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
   `!bhop settings "BunnyTickLeniency" 5`  

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


