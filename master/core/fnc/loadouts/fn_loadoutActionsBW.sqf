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

params [
    ["_object", objNull],
    ["_camoType",0],
    ["_weaponType",0]
];

_camoType = ["Camotype", 0] call BIS_fnc_getParamValue;
_weaponType = ["Weapontype", 0] call BIS_fnc_getParamValue;

if (_camoType == 0 and _weaponType ==0 or _camoType == 0 and _weaponType == 1) then {
    _object addAction ["<t color='#FFF633'>Feldanzug Grundform</t>",{[player, "feldanzug", 0, 2, 2, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#FF5733'>Gruppenführer</t>",{[player, "sql", 6, 1, 1, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#FF5733'>Stellv. Gruppenführer</t>",{[player, "ftl", 5, 1, 1, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>Schütze</t>",{[player, "rfl", 0, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>Schütze AG40</t>",{[player, "gre", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>Schütze PzF3</t>",{[player, "pzf", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>Sanitäter B</t>",{[player, "mdb", 3, 1, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>MG1 (Rheinmetall MG3)</t>",{[player, "mg1", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>MG2 (G36)</t>",{[player, "mg2", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#33E9FF'>ZF-Schütze</t>",{[player, "g3z", 2, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#33E9FF'>Kampfmittelbeseitiger (EOD)</t>",{[player, "eod", 4, 0, 2, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#33E9FF'>Sanitäter C</t>",{[player, "mdc", 4, 2, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
} else {
    _object addAction ["<t color='#FFF633'>Feldanzug Grundform</t>",{[player, "feldanzug", 0, 2, 2, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#FF5733'>Gruppenführer</t>",{[player, "sql", 6, 1, 1, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#FF5733'>Stellv. Gruppenführer</t>",{[player, "ftl", 5, 1, 1, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>Schütze</t>",{[player, "rfl", 0, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>Schütze AG40</t>",{[player, "gre", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>Schütze PzF3</t>",{[player, "pzf", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>Sanitäter B</t>",{[player, "mdb", 3, 1, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>MG1 (Rheinmetall MG3)</t>",{[player, "mg1", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#74FF33'>MG2 (G36)</t>",{[player, "mg2", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#33E9FF'>ZF-Schütze</t>",{[player, "g3z", 2, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#33E9FF'>MG4 Schütze</t>",{[player, "mg4", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#33E9FF'>MG5 Schütze</t>",{[player, "mg5", 1, 0, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#33E9FF'>Kampfmittelbeseitiger (EOD)</t>",{[player, "eod", 4, 0, 2, true] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
    _object addAction ["<t color='#33E9FF'>Sanitäter C</t>",{[player, "mdc", 4, 2, 0, false] call pb21_fnc_bundeswehr;},nil,1.5,true,true,"","true",5,false,""];
};
