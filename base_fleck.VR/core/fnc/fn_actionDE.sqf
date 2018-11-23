/*
 * Author: Soro
 * Apply loadout selection to an Object (DE)
 *
 * Arguments:
 * 0: <OBJECT> The object where the Actions should be added
 * 1: <INTEGER> Selected Loadout Group (0 = JG, 1 = HF, 2 = PZ)
 * 2: <INTEGER> Selected Arsenal Type (0 = Off, 1 = Limited, 2 = Full)
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * [object,0,0] call pzbrig21_fnc_actionDE
 *
 * Public: Yes
 */

_object = param [0, objNull];
_type = param [1,0];
_arsenal = param [2,1];

switch (_type) do {
    case (0): {
        _object addAction ["<t color='#40FF00'>Gruppenführer</t>",{[player,"de_jg_sql"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#40FF00'>Truppführer</t>",{[player,"de_jg_ftl"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>Schütze</t>",{[player,"de_jg_rfl"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>Schütze EEH-B</t>",{[player,"de_jg_cfr"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>Schütze AG40</t>",{[player,"de_jg_gre"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>Schütze PzF3</t>",{[player,"de_jg_pzf"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>Pionier</t>",{[player,"de_jg_eng"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>MG4 Schütze</t>",{[player,"de_jg_mg4"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>MG Hilfsschütze</t>",{[player,"de_jg_mgh"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>MG3 Schütze</t>",{[player,"de_jg_mg3"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>MG5 Schütze</t>",{[player,"de_jg_mg5"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>Zielfernrohrschütze</t>",{[player,"de_jg_zf1"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#00BFFF'>Scharfschütze</t>",{[player,"de_jg_snp"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#00BFFF'>Beobachter</t>",{[player,"de_jg_spo"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
    };
    case (1): {
        _object addAction ["<t color='#40FF00'>Pilot</t>",{[player,"de_hf_pil"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#40FF00'>Co-Pilot</t>",{[player,"de_hf_cop"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#40FF00'>Crew</t>",{[player,"de_hf_crw"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>Tiger Pilot</t>",{[player,"de_hf_cpt"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#DF0101'>Tiger WSO</t>",{[player,"de_hf_wso"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
    };
    case (2): {
        _object addAction ["<t color='#40FF00'>Panzer Kommandant</t>",{[player,"de_pz_cmd"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#40FF00'>Panzer Richtschütze</t>",{[player,"de_pz_gun"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
        _object addAction ["<t color='#40FF00'>Panzer Fahrer</t>",{[player,"de_pz_drv"] call pzbrig21_fnc_applyDE;},nil,1.5,true,true,"","true",5,false,""];
    };
};

switch (_arsenal) do {
    case (0): {
        [_object, false] call ace_arsenal_fnc_initBox;
    };
    case (1): {
        [_object] call pzbrig21_fnc_arsenalDE;
    };
    case (2): {
        [_object, true] call ace_arsenal_fnc_initBox;
    };
};
