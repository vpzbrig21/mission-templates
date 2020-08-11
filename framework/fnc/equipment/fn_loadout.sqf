/*
 * Author: Soro and Foxy
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
 * [player, "rfl", 0, 0, 0, false] call vbw_fnc_loadout
 *
 * Public: [Yes/No]
 */

 //Initialise Parameters
 params [
    ["_unit", objNull],
    ["_unitLoadout", "rfl"],
    ["_unitRank", 0],
    ["_medLevel", 0],
    ["_engLevel", 0],
    ["_eodLevel", false],
    "_uniformFormal",
    "_uniformCombat",
    "_uniformCrewman",
    "_headgearFormal",
    "_headgearCombat",
    "_headgearCombatLead",
    "_headgearCrewman",
    "_vestLeader",
    "_vestMedic",
    "_vestRifleman",
    "_vestGrenadier",
    "_vestMarksmen",
    "_vestMachineGunner",
    "_vsetAssMachineGunner",
    "_vestCrewman",
    "_backpack1",
    "_backpack2",
    "_backpackExpl",
    "_backpackMedic",
    "_mainWeapon",
    "_mainWeaponGre",
    "_mainWeaponZF",
    "_mainWeaponMG",
    "_mainWeaponCrewman",
    "_mainMag",
    "_mgMag",
    "_zfMag",
	"_pzfWeapon",
	"_pzfMag",
    "_crewMag",
    "_vbwNationParam",
    "_vbwCamoParam",
    "_vbwMachineGunParam",
    "_vbwAssaultRifleParam",
    "_vbwMarksmenRifleParam",
    "_vbwEnableCrewmanLoadoutParam"
];

/*
	Nation and Camo
*/
_vbwNationParam = "vbwPlayedNation" call BIS_fnc_getParamValue;
_vbwCamoParam = "vbwNationCamo" call BIS_fnc_getParamValue;

if (_vbwNationParam == 0) then {
    switch (_vbwCamoParam) do {//case(0) == default
        //Wintertarn 80s
        case(2): {
            _uniformFormal = "gm_ge_army_uniform_soldier_parka_80_win";
            _uniformCombat = "gm_ge_army_uniform_soldier_parka_80_win";
            _headgearFormal = "gm_ge_headgear_beret_grn_infantry";
            _headgearCombat = "gm_ge_headgear_m62_win_pap_01";
            _headgearCombatLead = "gm_ge_headgear_m62_net";
            _vestLeader = "gm_ge_army_vest_80_leader";
            _vestMedic = "gm_ge_army_vest_80_medic";
            _vestRifleman = "gm_ge_army_vest_80_rifleman";
            _vestGrenadier = "gm_ge_army_vest_80_rifleman";
            _vestMarksmen = "gm_ge_army_vest_80_rifleman";
            _vestMachineGunner = "gm_ge_army_vest_80_machinegunner";
            _vsetAssMachineGunner = "gm_ge_army_vest_80_rifleman";
            _backpack1 = "gm_ge_army_backpack_80_oli";
            _backpack2 = "gm_ge_army_backpack_80_oli";
            _backpackExpl = "gm_ge_backpack_satchel_80_blk";
            _backpackMedic = "gm_ge_backpack_satchel_80_san";
        };
        //Olivtarn 80s
        default: {
            _uniformFormal = "gm_ge_army_uniform_soldier_80_oli";
            _uniformCombat = selectRandom ["gm_ge_army_uniform_soldier_80_oli", "gm_ge_army_uniform_soldier_parka_80_oli"];
            _headgearFormal = "gm_ge_headgear_beret_grn_infantry";
            _headgearCombat = "gm_ge_headgear_m62";
            _headgearCombatLead = "gm_ge_headgear_m62_net";
            _vestLeader = "gm_ge_army_vest_80_leader";
            _vestMedic = "gm_ge_army_vest_80_medic";
            _vestRifleman = "gm_ge_army_vest_80_rifleman";
            _vestGrenadier = "gm_ge_army_vest_80_rifleman";
            _vestMarksmen = "gm_ge_army_vest_80_rifleman";
            _vestMachineGunner = "gm_ge_army_vest_80_machinegunner";
            _vsetAssMachineGunner = "gm_ge_army_vest_80_rifleman";
            _backpack1 = "gm_ge_army_backpack_80_oli";
            _backpack2 = "gm_ge_army_backpack_80_oli";
            _backpackExpl = "gm_ge_backpack_satchel_80_blk";
            _backpackMedic = "gm_ge_backpack_satchel_80_san";
        };
    };
} if (_vbwNationParam == 1) then {
    switch (_vbwCamoParam) do {//case(0) == default
        //Tropentarn mit SpliSchtz 90s
        case(1): {
            _uniformFormal = "";
            _uniformCombat = "";
            _headgearFormal = "";
            _headgearCombat = "";
            _headgearCombatLead = "";
            _vestLeader = "";
            _vestMedic = "";
            _vestRifleman = "";
            _vestGrenadier = "";
            _vestMarksmen = "";
            _vestMachineGunner = "";
            _vsetAssMachineGunner = "";
            _backpack1 = "";
            _backpack2 = "";
            _backpackExpl = "";
            _backpackMedic = "";
        };
        //Flecktarn mit SpliSchtz 90s
        default: {
            _uniformFormal = "";
            _uniformCombat = "";
            _headgearFormal = "";
            _headgearCombat = "";
            _headgearCombatLead = "";
            _vestLeader = "";
            _vestMedic = "";
            _vestRifleman = "";
            _vestGrenadier = "";
            _vestMarksmen = "";
            _vestMachineGunner = "";
            _vsetAssMachineGunner = "";
            _backpack1 = "";
            _backpack2 = "";
            _backpackExpl = "";
            _backpackMedic = "";
        };
    };
} else {
    switch (_vbwCamoParam) do {//case(0) == default
        //Tropentarn mit IdZ modern
        case(1): {
            _uniformFormal = "";
            _uniformCombat = "";
            _headgearFormal = "";
            _headgearCombat = "";
            _headgearCombatLead = "";
            _vestLeader = "";
            _vestMedic = "";
            _vestRifleman = "";
            _vestGrenadier = "";
            _vestMarksmen = "";
            _vestMachineGunner = "";
            _vsetAssMachineGunner = "";
            _backpack1 = "";
            _backpack2 = "";
            _backpackExpl = "";
            _backpackMedic = "";
        };
        //Flecktarn mit IdZ modern
        default: {
            _uniformFormal;
            _uniformCombat;
            _headgearFormal;
            _headgearCombat;
            _headgearCombatLead;
            _vestLeader;
            _vestMedic;
            _vestRifleman;
            _vestGrenadier;
            _vestMarksmen;
            _vestMachineGunner;
            _vsetAssMachineGunner;
            _backpack1;
            _backpack2;
            _backpackExpl;
            _backpackMedic;
        };
    };
};

_vbwEnableCrewmanLoadoutParam = "vbwEnableCrewmanLoadout" call BIS_fnc_getParamValue;

if (_vbwEnableCrewmanLoadoutParam == 0) then {
    switch (_vbwNationParam) do {
        //Crew 80s
        case 0: {
            _uniformCrewman = "gm_ge_army_uniform_crew_80_oli";
            _vestCrewman = "gm_ge_army_vest_80_crew";
            _headgearCrewman = selectRandom ["gm_ge_headgear_headset_crew_oli", "gm_ge_headgear_hat_80_oli", "gm_ge_headgear_crewhat_80_blk"];
        };
        //Crew 90s
        case 1: {
            _uniformCrewman = ;
            _vestCrewman = ;
            _headgearCrewman = ;
        };
        //Crew Modern
        case value: {
            
            _uniformCrewman = ;
            _vestCrewman = ;
            
        };
        default {
            _uniformCrewman = ;
            _vestCrewman = ;
            _headgearCrewman = ;
        }; 
    };
};

_vbwEnablePilotLoadoutParam = "vbwEnablePilotLoadout" call BIS_fnc_getParamValue;

if (_vbwEnablePilotLoadoutParam == 1) then {
    switch (_vbwNationParam) do {
        case 0: {
            _uniformPilot = "";
            _vestPilot = "";
            _headgearPilot = "";
        };
        case 1: {
            _uniformPilot = "";
            _vestPilot = "";
            _headgearPilot = "";
        };
        case 2: {
            _uniformPilot = "";
            _vestPilot = "";
            _headgearPilot = "";
        };
    };
};


/*
	Weapons (Machine Gun and Assault Rifle)
*/
_vbwMachineGunParam = "vbwMachineGun" call BIS_fnc_getParamValue;
_vbwAssaultRifleParam = "vbwAssaultRifle" call BIS_fnc_getParamValue;
_vbwMarksmenRifleParam = "vbwMarksmenRifle" call BIS_fnc_getParamValue;
_vbwLauncherParam = "vbwLauncherParam" call BIS_fnc_getParamValue;

switch (_vbwMachineGunParam) do {
    //MG3 GM
    case(0): {
        _mainWeaponMG = "gm_mg3_blk";
        _mgMag = "gm_120rnd_762x51mm_b_t_dm21_mg3_grn";
    };
    //MG3 BW
    case(1): {
        _mainWeaponMG = ;
        _mgMag = ;
    };
    //MG3 NIA
    case(2): {
        _mainWeaponMG = ;
        _mgMag = ;
    };
    //MG5 BW
    case(3): {
        _mainWeaponMG = ;
        _mgMag = ;
    };
};

switch (_vbwAssaultRifleParam) do {
    //G3 GM
    case(0): {
        _mainWeapon = "gm_g3a3_oli";
        _mainWeaponGre = "gm_g3a3_oli"; //Dazu Gewehrgranaten
        _mainMag = "gm_20rnd_762x51mm_b_t_dm21_g3_blk";
    };
    //G3 NIA
    case(1): {
        _mainWeapon = ;
        _mainWeaponGre = ;
        _mainMag = ;
    };
    //G36 BW
    case(2): {
        _mainWeapon = ;
        _mainWeaponGre = ;
        _mainMag = ;
    };
    //G36 NIA
    case(3): {
        _mainWeapon = ;
        _mainWeaponGre = ;
        _mainMag = ;
    };
};

switch (_vbwMarksmenRifleParam) do {
    //G3 GM
    case(0): {
        _mainWeaponZF = "gm_g3a3_oli"; //Dazu ZF
        _zfMag = "gm_20rnd_762x51mm_b_t_dm21_g3_blk";
    };
    //G3 NIA
    case(1): {
        _mainWeaponZF = ;
        _zfMag = ;
    };
    //G28 BW
    case(2): {
        _mainWeaponZF = ;
        _zfMag = ;
    };
};

switch (_vbwLauncherParam) do {
	//PzF 3	
	case(0): {
		_pzfWeapon = ;
		_pzfMag = ;
	};
	//PzF34
	case(1): {
		_pzfWeapon = ;
		_pzfMag = ;
	}
	//Bunkerfaust
	case(2): {
		_pzfWeapon = ;
		_pzfMag = ;
	}
};


/*
	Assamble unit loadout
	
*/
switch (_unitLoadout) do {
    case ("feldanzug"): {
        
    };
    // Squadleader
    case ("sql"): {

    };
    // Rifleman
    case ("rfl"): {

    };
    // Rifleman AG40
    case ("gre"): {
	
    };
    // Rifleman PzF3
    case ("pzf"): {

    };
    // Rifleman Eod
    case ("eod"): {

    };
    // Rifleman San B
    case ("mdb"): {

    };
    // Rifleman San C
    case ("mdc"): {

    };
    // Rifleman MG1
    case ("mg1"): {

    };
    // Rifleman MG2
    case ("mg2"): {

    };
    // Rifleman MG5
    case ("mg5"): {

    };
    // Rifleman MG4
    case ("mg4"): {

    };
    // Rifleman G3-ZF
    case ("g3z"): {

    };
};

/*
note:
Gren hat in 80s Gewehrgranaten,
PzF hat in 80s andere PzF,
*/

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
