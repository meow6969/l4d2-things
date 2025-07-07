
# meow bunnyhop detect  

this is a fork of (simple bunnyhop detect)[https://steamcommunity.com/sharedfiles/filedetails/?id=2256379828]  
this one is heavily modified to add new features and alter bunny hop detection  
the included json.nut is a vscript json serializer and deserializer that supports the entire json standard  
you can use it in your own mods if you want to, i worked very hard on it  
just put `IncludeScript("json.nut");` at the top of your vscript file  
then you can serialize json to a file with `::Json.Serialize.ToFile(file_path, my_table);`, or you can serialize it to a string with `local json_string = ::Json.Serialize.ToString(my_table);`  
and you can deserialize json from a file with `local my_table = ::Json.Deserialize.File(file_path);` or you can deserialize it from a string with `local my_table = ::Json.Deserialize.String(json_string);`  

