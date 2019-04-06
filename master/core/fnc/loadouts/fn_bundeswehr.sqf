/*
 * Author: Soro
 * Apply a german Loadout to an Soldier
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
 * [player, "rfl", 0, 0, 0, false] call pb21_fnc_bundeswehr
 *
 * Public: [Yes/No]
 */

/*
_unit = param [0, player];
_unitLoadout = param [2, "rfl"];
_unitRank = param [3, 0];
_medLevel = param [4, 0];
_engLevel = param [5, 0];
_eodLevel = param [6, false];
*/

params [
    ["_unit", objNull],
    ["_unitLoadout", "rfl"],
    ["_unitRank", 0],
    ["_medLevel", 0],
    ["_engLevel", 0],
    ["_eodLevel", false],
    ["_weaponType",0],
    "_uniform1",
    "_uniform2",
    "_headgear1",
    "_headgear2",
    "_headgear3",
    "_vestLeader",
    "_vestMedic",
    "_vestRifleman",
    "_vestGrenadier",
    "_vestMarksmen",
    "_vestMachineGunner",
    "_backpack1",
    "_backpack2",
    "_backpack3",
    "_backpack4",
    "_mainWeapon",
    "_mainWeaponGre",
    "_mainMag"
];


/*
    Set Camo Type
*/
_camoType = ["Camotype", 0] call BIS_fnc_getParamValue;
if (_camoType == 0) then {
    _uniform1 = "PBW_Uniform1_fleck";
    _uniform2 = selectRandom ["PBW_Uniform3_fleck","PBW_Uniform3K_fleck"];
    _headgear1 = "PBW_muetze1_fleck";
    _headgear2 = selectRandom ["PBW_Helm1_fleck","PBW_muetze2_fleck"];
    _headgear3 = selectRandom ["PBW_Helm1_fleck_H","PBW_Helm1_fleck_HBO","PBW_Helm1_fleck_HBOD"];
    _vestLeader = "BWA3_Vest_Leader_Fleck";
    _vestMedic = "BWA3_Vest_Medic_Fleck";
    _vestRifleman = "BWA3_Vest_Rifleman_Fleck";
    _vestGrenadier = "BWA3_Vest_Grenadier_Fleck";
    _vestMarksmen = "BWA3_Vest_Marksman_Fleck";
    _vestMachineGunner = "BWA3_Vest_MachineGunner_Fleck";
    _backpack1 = "B_LegStrapBag_black_F";
    _backpack2 = "BWA3_AssaultPack_Fleck";
    _backpack3 = "BWA3_Kitbag_Fleck_Medic";
    _backpack4 = "BWA3_Kitbag_Fleck";
} else {
    _uniform1 = "PBW_Uniform1_tropen";
    _uniform2 = selectRandom ["PBW_Uniform3_tropen","PBW_Uniform3K_tropen"];
    _headgear1 = "PBW_muetze1_tropen";
    _headgear2 = selectRandom ["PBW_Helm1_tropen","PBW_muetze2_tropen"];
    _headgear3 = selectRandom ["PBW_Helm1_tropen_H","PBW_Helm1_tropen_HBO","PBW_Helm1_tropen_HBOD"];
    _vestLeader = "BWA3_Vest_Leader_Tropen";
    _vestMedic = "BWA3_Vest_Medic_Tropen";
    _vestRifleman = "BWA3_Vest_Rifleman_Tropen";
    _vestGrenadier = "BWA3_Vest_Grenadier_Tropen";
    _vestMarksmen = "BWA3_Vest_Marksman_Tropen";
    _vestMachineGunner = "BWA3_Vest_MachineGunner_Tropen";
    _backpack1 = "B_LegStrapBag_black_F";
    _backpack2 = "BWA3_AssaultPack_Tropen";
    _backpack3 = "BWA3_Kitbag_Tropen_Medic";
    _backpack4 = "BWA3_Kitbag_Tropen";
};

_weaponType = ["Weapontype", 0] call BIS_fnc_getParamValue;
switch (_weaponType) do {
    case (0): {
        _mainWeapon = ["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""];
        _mainWeaponGre = ["BWA3_G36A2_AG40","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""];
        _mainMag = "BWA3_30Rnd_556x45_G36";
    };
    case (1): {
        _mainWeapon = ["hlc_rifle_G36A1","","BWA3_acc_VarioRay_irlaser_black","HLC_Optic_G36dualoptic35x2d",[],[],"HLC_Bipod_G36"];
        _mainWeaponGre = ["hlc_rifle_G36A1AG36","","BWA3_acc_VarioRay_irlaser_black","HLC_Optic_G36dualoptic35x2d",[],[],""];
        _mainMag = "hlc_30rnd_556x45_EPR_G36";
    };
    case (2): {
        _mainWeapon = ["hlc_rifle_G36V","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_ZO4x30_RSAS",[],[],""];
        _mainWeaponGre = ["hlc_rifle_G36VAG36","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_ZO4x30_RSAS",[],[],""];
        _mainMag = "hlc_30rnd_556x45_EPR_G36";
    };
};

/*
    Set Unit Loadout
*/
switch (_unitLoadout) do {
    case ("feldanzug"): {
        _unit setUnitLoadout [[],[],[],[_uniform1,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[],[],_headgear1,"",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Squadleader
    case ("sql"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestLeader,[["ACE_EntrenchingTool",1],["ACRE_SEM52SL_ID_1",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["BWA3_DM32_Green",1,1],["BWA3_DM32_Red",1,1],["BWA3_DM32_Yellow",1,1]]],[_backpack1,[["mts_whistle_FOX40",1],["BWA3_1Rnd_Flare_Illum",12,1],["BWA3_1Rnd_Flare_Multistar_Red",8,1],["BWA3_1Rnd_Flare_Singlestar_Green",4,1],["Chemlight_blue",4,1],["Chemlight_red",4,1],[["BWA3_P2A1","","","",[],[],""],1]]],_headgear3,"BWA3_G_Combat_black",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman
    case ("rfl"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestRifleman,[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],[],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman AG40
    case ("gre"): {
        _unit setUnitLoadout [["BWA3_G36A2_AG40","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestGrenadier,[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["BWA3_30Rnd_556x45_G36",8,30],["1Rnd_HE_Grenade_shell",6,1]]],[],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman PzF3
    case ("pzf"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],["BWA3_PzF3","","","",["BWA3_PzF3_Tandem",1],[],""],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestRifleman,[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],[],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman Pionier
    case ("pio"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestRifleman,[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],[_backpack2,[["ToolKit",1],["ACE_Fortify",1]]],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman Eod
    case ("eod"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestRifleman,[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],[_backpack2,[["ACE_DefusalKit",1],["ACE_Clacker",1],["ACE_M26_Clacker",1],["MineDetector",1],["DemoCharge_Remote_Mag",4,1]]],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman San B
    case ("mdb"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestMedic,[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],[_backpack3,[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_EarPlugs",4],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_tourniquet",12],["ACE_packingBandage",20],["ACE_surgicalKit",1],["adv_aceCPR_AED",1],["ACE_salineIV",4],["ACE_salineIV_250",4],["ACE_salineIV_500",4]]],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman San C
    case ("mdc"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestMedic,[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],[_backpack3,[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_EarPlugs",4],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_tourniquet",12],["ACE_packingBandage",20],["ACE_surgicalKit",1],["adv_aceCPR_AED",1],["ACE_salineIV",4],["ACE_salineIV_250",4],["ACE_salineIV_500",4],["ACE_personalAidKit",4]]],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman MG1
    case ("mg1"): {
        _unit setUnitLoadout [["BWA3_MG3","","","",[],[],"BWA3_bipod_MG3"],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestMachineGunner,[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["BWA3_120Rnd_762x51_Tracer",2,120]]],[_backpack4,[["BWA3_120Rnd_762x51_Tracer",2,120]]],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman MG2
    case ("mg2"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestRifleman,[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],[_backpack4,[["BWA3_120Rnd_762x51_Tracer",6,120]]],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman MG5
    case ("mg5"): {
        _unit setUnitLoadout [["BWA3_MG5","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_ZO4x30_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestMachineGunner,[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["BWA3_120Rnd_762x51_Tracer",2,120]]],[_backpack4,[["BWA3_120Rnd_762x51_Tracer",6,120]]],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman MG4
    case ("mg4"): {
        _unit setUnitLoadout [["BWA3_MG4","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_ZO4x30_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestMachineGunner,[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["BWA3_200Rnd_556x45",2,200]]],[_backpack4,[["BWA3_200Rnd_556x45",3,200]]],_headgear2,"BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman G3-ZF
    case ("g3z"): {
        _unit setUnitLoadout [["hlc_rifle_g3sg1","","","hlc_optic_STANAGZF2D_G3",[],[],""],[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACE_ATragMX",1]]],[_vestMarksmen,[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["hlc_20rnd_762x51_b_G3",6,20]]],[],_headgear2,"BWA3_G_Combat_black",["ACE_VectorDay","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    case ("sqlt"): {
        _unit setUnitLoadout [_mainWeapon,[],["BWA3_P8","","","",[],[],""],[_uniform2,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[_vestLeader,[["ACE_EntrenchingTool",1],["ACRE_SEM52SL_ID_1",1],[_mainMag,8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["BWA3_DM32_Green",1,1],["BWA3_DM32_Red",1,1],["BWA3_DM32_Yellow",1,1]]],[_backpack1,[["mts_whistle_FOX40",1],["BWA3_1Rnd_Flare_Illum",12,1],["BWA3_1Rnd_Flare_Multistar_Red",8,1],["BWA3_1Rnd_Flare_Singlestar_Green",4,1],["Chemlight_blue",4,1],["Chemlight_red",4,1],[["BWA3_P2A1","","","",[],[],""],1]]],_headgear3,"BWA3_G_Combat_black",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
    };
};


/*
    Set Unit Rank
*/
switch (_unitRank) do {
    case (0): {_unit setUnitRank "PRIVATE"};
    case (1): {_unit setUnitRank "CORPORAL"};
    case (2): {_unit setUnitRank "SERGEANT"};
    case (3): {_unit setUnitRank "LIEUTENANT"};
    case (4): {_unit setUnitRank "CAPTAIN"};
    case (5): {_unit setUnitRank "MAJOR"};
    case (6): {_unit setUnitRank "COLONEL"};
};

/*
    Set Unit Variables
*/
_unit setVariable ["ACE_medical_medicClass", _medLevel, true];
_unit setVariable ["ACE_isEngineer", _engLevel, true];
_unit setVariable ["ACE_isEOD", _eodLevel, true];
