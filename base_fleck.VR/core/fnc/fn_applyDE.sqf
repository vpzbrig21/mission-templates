/*
 * Author: Soro
 * Apply a german Loadout to an Soldier
 *
 * Arguments:
 * 0: The first argument <STRING>
 * 1: The second argument <OBJECT>
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * [player, "de_jg_rfl"] call pzbrig21_fnc_applyDE
 *
 * Public: [Yes/No]
 */

_unit = param [0, player];
_loadout = param [1, "de_jg_rfl"];

switch (_loadout) do {
    //JgBtl 1
    //Gruppenführer (Squadleader)
    case ("de_jg_sql"): {
        _unit setVariable ["ace_medical_medicClass", 2, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [["BWA3_G36A2","","BWA3_acc_LLM01_irlaser","BWA3_optic_RSAS_G36A2",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Leader_Fleck",[["ACE_EntrenchingTool",1],["ACRE_SEM52SL",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_DM32_Purple",1,1]]],[],"PBW_Helm1_fleck","BWA3_G_Combat_black",["BWA3_Vector","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Truppführer (Teamleader)
    case ("de_jg_ftl"): {
        _unit setVariable ["ace_medical_medicClass", 2, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [["BWA3_G36A2_AG40","","BWA3_acc_LLM01_irlaser","BWA3_optic_RSAS_G36A2",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Leader_Fleck",[["ACE_EntrenchingTool",1],["ACRE_SEM52SL",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1],["BWA3_DM32_Purple",1,1],["BWA3_30Rnd_556x45_G36",8,30],["1Rnd_HE_Grenade_shell",2,1],["UGL_FlareWhite_F",1,1],["UGL_FlareRed_F",1,1]]],[],"PBW_Helm1_fleck","BWA3_G_Combat_black",["BWA3_Vector","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //EEH-B (Medic)
    case ("de_jg_cfr"): {
        _unit setVariable ["ace_medical_medicClass", 2, true]; _unit setVariable ["ace_isEngineer", 0, true];
        _unit setUnitLoadout [["BWA3_G36A1","","BWA3_acc_LLM01_irlaser","",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Medic_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1]]],["BWA3_Kitbag_Fleck_Medic",[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_packingBandage",20],["ACE_tourniquet",12],["ACE_surgicalKit",1],["ACE_morphine",10],["ACE_epinephrine",12],["ACE_atropine",8],["ACE_adenosine",8],["ACE_salineIV_500",2],["ACE_salineIV_250",4],["ACE_salineIV",2]]],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //PzF3 Schütze (Rifleman AT)
    case ("de_jg_pzf"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 0, true];
        _unit setUnitLoadout [["BWA3_G36A1","","BWA3_acc_LLM01_irlaser","",[],[],""],["BWA3_PzF3","","","",["BWA3_PzF3_Tandem",1],[],""],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1]]],[],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //MG Hilfsschütze (Assistant Automatic Rifleman)
    case ("de_jg_mgh"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 0, true];
        _unit setUnitLoadout [["BWA3_G36A1","","BWA3_acc_LLM01_irlaser","",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1]]],["BWA3_Kitbag_Fleck",[["BWA3_120Rnd_762x51_Tracer",6,120]]],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //MG4 Schütze (Automatic Rifleman)
    case ("de_jg_mg4"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 0, true];
        _unit setUnitLoadout [["BWA3_MG4","","BWA3_acc_LLM01_irlaser","BWA3_optic_ZO4x30_RSAS",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_MachineGunner_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1],["BWA3_200Rnd_556x45",2,200]]],["BWA3_Kitbag_Fleck",[["BWA3_200Rnd_556x45",3,200]]],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //MG3 Schütze (Heavy Mashine Gunner)
    case ("de_jg_mg3"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 0, true];
        _unit setUnitLoadout [["BWA3_MG3","","","",[],[],"BWA3_bipod_MG3"],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_MachineGunner_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1],["BWA3_DM32_Purple",1,1],["BWA3_120Rnd_762x51_Tracer",2,120]]],["BWA3_Kitbag_Fleck",[["BWA3_120Rnd_762x51_Tracer",3,120]]],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //MG5 Schütze (Heavy Mashine Gunner)
    case ("de_jg_mg5"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 0, true];
        _unit setUnitLoadout [["BWA3_MG5","","BWA3_acc_VarioRay_irlaser","BWA3_optic_ZO4x30_RSAS_brown",["BWA3_120Rnd_762x51_soft",120],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_MachineGunner_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1],["BWA3_120Rnd_762x51_Tracer",2,120]]],["BWA3_Kitbag_Fleck",[["BWA3_120Rnd_762x51_Tracer",2,120]]],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Gruppenscharfschütze G28 (Marksmen)
    case ("de_jg_zf1"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 0, true];
        _unit setUnitLoadout [["BWA3_G28","","BWA3_acc_VarioRay_irlaser","BWA3_optic_PMII_DMR_MicroT1_rear",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Marksman_Fleck",[["ACE_EntrenchingTool",1],["ACE_RangeCard",1],["ACE_ATragMX",1],["ACE_Kestrel4500",1],["ACE_DAGR",1],["ACRE_SEM52SL",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1],["BWA3_10Rnd_762x51_G28",10,10]]],[],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Grenadier
    case ("de_jg_gre"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 0, true];
        _unit setUnitLoadout [["BWA3_G36A1_AG40","","BWA3_acc_LLM01_irlaser","",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Grenadier_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1],["BWA3_30Rnd_556x45_G36",8,30],["1Rnd_HE_Grenade_shell",4,1]]],[],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Pionier
    case ("de_jg_eng"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [["BWA3_G36A1","","BWA3_acc_LLM01_irlaser","",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1]]],["BWA3_AssaultPack_Fleck",[["MineDetector",1],["ACE_DefusalKit",1],["ToolKit",1],["ACE_M26_Clacker",1],["DemoCharge_Remote_Mag",2,1]]],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Schütze (Rifleman)
    case ("de_jg_rfl"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 0, true];
        _unit setUnitLoadout [["BWA3_G36A1","","BWA3_acc_LLM01_irlaser","",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1]]],[],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Scharfschütze
    case ("de_jg_snp"): {
        _unit setVariable ["ace_medical_medicClass", 1, true]; _unit setVariable ["ace_isEngineer", 1, true];
        _unit setUnitLoadout [["BWA3_G29","","","BWA3_optic_M5Xi_MSR_MicroT2",["BWA3_10Rnd_86x70_G29",10],[],"BWA3_bipod_Atlas"],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Marksman_Fleck",[["ACE_EntrenchingTool",1],["ACE_RangeCard",1],["ACE_ATragMX",1],["ACE_Kestrel4500",1],["ACE_DAGR",1],["ACRE_SEM52SL",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1],["BWA3_10Rnd_86x70_G29",6,10]]],[],"PBW_Helm1_fleck","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Beobachter
    case ("de_jg_spo"): {
        _unit setVariable ["ace_medical_medicClass", 1, true]; _unit setVariable ["ace_isEngineer", 1, true];
        _unit setUnitLoadout [["BWA3_G36A1","","BWA3_acc_LLM01_irlaser","",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform2_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Rifleman_Fleck",[["ACE_EntrenchingTool",1],["ACRE_SEM52SL",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_30Rnd_556x45_G36",8,30],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1]]],["BWA3_AssaultPack_Fleck",[["ACE_Tripod",1],["ACE_SpottingScope",1],["ACE_ATragMX",1],["ACE_DAGR",1],["ACE_Kestrel4500",1],["BWA3_10Rnd_86x70_G29",4,10]]],"PBW_Helm1_fleck","BWA3_G_Combat_black",["BWA3_Vector","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Hubschrauber Pilot
    case ("de_hf_pil"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [[],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform_Helipilot",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM32_Purple",2,1]]],[],[],"H_PilotHelmetHeli_B","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Hubschrauber Co-Pilot
    case ("de_hf_cop"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [[],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform_Helipilot",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM32_Purple",2,1]]],[],[],"H_PilotHelmetHeli_B","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Hubschrauber Crew
    case ("de_hf_crw"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [[],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform_Helipilot",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM32_Purple",2,1]]],[],[],"H_CrewHelmetHeli_B","PBW_Balaclava_schwarz",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Tiger Pilot
    case ("de_hf_cpt"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [[],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform_Helipilot",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM32_Purple",2,1]]],[],[],"BWA3_Knighthelm","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
    };
    //Tiger WSO
    case ("de_hf_wso"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [[],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform_Helipilot",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_IR_Strobe_Item",1],["BWA3_15Rnd_9x19_P8",2,15],["BWA3_DM25",1,1],["BWA3_DM32_Purple",2,1]]],[],[],"BWA3_Knighthelm","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
    };
    //Panzer Kommandant
    case ("de_pz_cmd"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [["hgun_PDW2000_F","","","",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform_Crew_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Fleck",[["BWA3_15Rnd_9x19_P8",2,15],["30Rnd_9x21_Mag",4,30],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1]]],[],"H_HelmetCrew_I","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Panzer Richtschütze
    case ("de_pz_gun"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [["hgun_PDW2000_F","","","",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform_Crew_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Fleck",[["BWA3_15Rnd_9x19_P8",2,15],["30Rnd_9x21_Mag",4,30],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1]]],[],"H_HelmetCrew_I","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
    //Panzer Fahrer
    case ("de_pz_drv"): {
        _unit setVariable ["ace_medical_medicClass", 0, true]; _unit setVariable ["ace_isEngineer", 2, true];
        _unit setUnitLoadout [["hgun_PDW2000_F","","","",[],[],""],[],["BWA3_P8","","","",[],[],""],["BWA3_Uniform_Crew_Fleck",[["ACE_fieldDressing",10],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",4]]],["BWA3_Vest_Fleck",[["BWA3_15Rnd_9x19_P8",2,15],["30Rnd_9x21_Mag",4,30],["BWA3_DM25",1,1],["BWA3_DM51A1",1,1]]],[],"H_HelmetCrew_I","BWA3_G_Combat_black",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
    };
};
