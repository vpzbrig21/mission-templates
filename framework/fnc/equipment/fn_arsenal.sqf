/*
 * Author: Soro
 * Apply an arsenal with German weapons to an object.
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
 * [box1] call vbw_fnc_arsenal
 *
 * Public: [Yes/No]
 */

params [
    ["_object", objNull],
];

[_object,
	[
		if (condition) then {
			
		};
	]
] call ace_arsenal_fnc_initBox;