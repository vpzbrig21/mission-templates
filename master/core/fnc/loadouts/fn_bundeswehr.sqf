/*
 * Author: Soro
 * Apply a german Loadout to an Soldier
 *
 * Arguments:
 * 0: The first argument <STRING>
 * 1: The second argument <OBJECT>
 *
 * Example:
 * [player, 0, "rifleman", 0, 0, 0, false] call pb21_fnc_bundeswehrFleck
 *
 * Public: [Yes/No]
 */

_unit = param [0, objNull];
_camo = param [1, 0];
_load = param [2, "rifle"];
_rank = param [3, 0];
_medLevel = param [4, 0];
_engLevel = param [5, 0];
_eodLevel = param [6, false];

/*
    Set Unit Variables
*/
_unit setVariable ["ACE_medical_medicClass", _medLevel, true];
_unit setVariable ["ACE_isEngineer", _engLevel, true];
_unit setVariable ["ACE_isEOD", _eodLevel, true];

/*
    Set Unit Rank
*/
switch (_rank) do {
    case (0): {_unit setUnitRank "PRIVATE"};
    case (1): {_unit setUnitRank "CORPORAL"};
    case (2): {_unit setUnitRank "SERGEANT"};
    case (3): {_unit setUnitRank "LIEUTENANT"};
    case (4): {_unit setUnitRank "CAPTAIN"};
    case (5): {_unit setUnitRank "MAJOR"};
    case (6): {_unit setUnitRank "COLONEL"};
};

/*
    Set Camo Type
*/
switch (_camo) do {
    case (0): {
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
        _backpack1 = "";
        _backpack2 = "";
        _backpack3 = "";
    };
    case (1): {
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
        _backpack1 = "";
        _backpack2 = "";
        _backpack3 = "";
    };
};

/*
    Set Unit Loadout
*/
switch (_load) do {
    case ("feldanzug"): {
        [[],[],[],[_uniform1,[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],[],[],_headgear1,"",[],["ItemMap","","","ItemCompass","ItemWatch",""]]
    };
    // Squadleader
    case ("sql"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_Leader_Fleck",[["ACE_EntrenchingTool",1],["ACRE_SEM52SL",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["BWA3_DM32_Green",1,1],["BWA3_DM32_Red",1,1],["BWA3_DM32_Yellow",1,1]]],["B_LegStrapBag_black_F",[]],"PBW_muetze2_fleck","BWA3_G_Combat_black",["ACE_VectorDay","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman
    case ("rfl"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],[],"PBW_muetze2_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman AG40
    case ("gre"): {
        _unit setUnitLoadout [["BWA3_G36A2_AG40","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_Grenadier_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["BWA3_30Rnd_556x45_G36",8,30],["1Rnd_HE_Grenade_shell",6,1]]],[],"PBW_muetze2_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman PzF3
    case ("pzf"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],["BWA3_PzF3","","","",["BWA3_PzF3_Tandem",1],[],""],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],[],"PBW_muetze2_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman Pionier
    case ("pio"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],["BWA3_AssaultPack_Fleck",[["ToolKit",1],["ACE_Fortify",1]]],"PBW_muetze2_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman Eod
    case ("eod"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],["BWA3_AssaultPack_Fleck",[["ACE_DefusalKit",1],["ACE_Clacker",1],["ACE_M26_Clacker",1],["MineDetector",1],["DemoCharge_Remote_Mag",4,1]]],"PBW_muetze2_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman San B
    case ("mdb"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_Medic_Fleck",[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],["BWA3_Kitbag_Fleck_Medic",[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_EarPlugs",4],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_tourniquet",12],["ACE_packingBandage",20],["ACE_surgicalKit",1],["adv_aceCPR_AED",1],["ACE_salineIV",4],["ACE_salineIV_250",4],["ACE_salineIV_500",4]]],"PBW_muetze2_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman San C
    case ("mdc"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_Medic_Fleck",[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],["BWA3_Kitbag_Fleck_Medic",[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_EarPlugs",4],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_tourniquet",12],["ACE_packingBandage",20],["ACE_surgicalKit",1],["adv_aceCPR_AED",1],["ACE_salineIV",4],["ACE_salineIV_250",4],["ACE_salineIV_500",4],["ACE_personalAidKit",4]]],"PBW_muetze2_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman MG1
    case ("mg1"): {
        _unit setUnitLoadout [["BWA3_MG3","","","",[],[],"BWA3_bipod_MG3"],[],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_MachineGunner_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1],["BWA3_120Rnd_762x51_Tracer",2,120]]],["BWA3_Kitbag_Fleck",[["BWA3_120Rnd_762x51_Tracer",2,120]]],"PBW_muetze2_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman MG2
    case ("mg2"): {
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_VarioRay_irlaser_black","BWA3_optic_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],["PBW_Uniform3K_fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",2,1],["BWA3_DM51A1",1,1]]],["BWA3_Kitbag_Fleck",[["BWA3_120Rnd_762x51_Tracer",6,120]]],"PBW_muetze2_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
    };
    // Rifleman MG3
};
