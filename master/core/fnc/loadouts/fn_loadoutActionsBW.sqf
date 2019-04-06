/*
 * Author: Soro
 * Adds actions to an object for loadouts
 *
 * Arguments:
 * 0: The first argument <OBJECT>
 * 1: The second argument <STRING>
 * 2: The third argument <NUMBER>
 * 3: The fourth argument <NUMBER>
 * 4: The fifth argument <NUMBER>
 * 5: The sixth argument <BOOL>
 *
 * Example:
 * [object] call pb21_fnc_loadoutActionsBW
 *
 * Public: [Yes/No]
 */

_object = param [0, objNull];

_object addAction ["<t color='#DF0101'>Feldanzug Grundform</t>",{[player, "feldanzug", 0, 2, 2, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#40FF00'>Gruppenführer</t>",{[player, "sql", 6, 1, 1, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#40FF00'>Stellv. Gruppenführer</t>",{[player, "ftl", 5, 1, 1, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#DF0101'>Schütze</t>",{[player, "rfl", 0, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#DF0101'>Schütze AG40</t>",{[player, "gre", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#DF0101'>Schütze PzF3</t>",{[player, "pzf", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#DF0101'>Sanitäter B</t>",{[player, "mdb", 3, 1, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#DF0101'>MG1 (Rheinmetall MG3)</t>",{[player, "mg1", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#DF0101'>MG2 (G36)</t>",{[player, "mg2", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#00BFFF'>ZF-Schütze</t>",{[player, "g3z", 2, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#00BFFF'>MG4 Schütze</t>",{[player, "mg4", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#00BFFF'>MG5 Schütze</t>",{[player, "mg5", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#00BFFF'>Pionier</t>",{[player, "pio", 2, 0, 1, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#00BFFF'>Kampfmittelbeseitiger (EOD)</t>",{[player, "eod", 4, 0, 2, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
_object addAction ["<t color='#00BFFF'>Sanitäter C</t>",{[player, "mdc", 4, 2, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
