dofile("json.nut");

local jsonData = "{\"meow\": \"ca\\\"cat\", \"gam\\\"er\": null}";
// local jsonData = "{\"meow\": \"ca\\tcat\"}";


printl("raw: ");
printl(jsonData);
printl();

local des = ::Json.Deserialize.String(jsonData);

printl("deserialize: ");
::Json.Utils.PrintThing(des);
printl();

printl("formatted serialize: ");
printl(::Json.Serialize.ToString(des));
printl();

printl("serialize: ");
printl(::Json.Serialize.ToString(des, 0));

