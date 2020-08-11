/*
    file: missionParameters.hpp
    Definiert die Missionsparameter
*/

class Params {
    class vbwPlayedNation {
        title = "Fraktion";
        values[] = {0,1,2};
        texts[] = {"Bundeswehr 80s","Bundeswehr 90s","Bundeswehr Modern"};
        default = 2;
    };
    class vbwNationCamo {
        title = "Tarnmuster";
        values[] = {0,1,2};
        texts[] = {"Flecktarn/Oliv","Tropen","Winter"};
        default = 0;
    };
    class vbwMachineGun {
        title = "Maschinengewehr";
        values[] = {0,1,2,3};
        texts[] = {"MG3 (GM)","MG3 (BWMod)","MG3 (NIArms)","MG5 (BWMod)"};
        default = 0;
    };
    class vbwAssaultRifle {
        title = "Sturmgewehr";
        values[] = {0,1,2,3};
        texts[] = {"G3 (GM)","G3 (NIArms)","G36 (BWMod)","G36 (NIArms)"};
        default = 3;
    };
    class vbwMarksmanRifle {
        title = "Marksmen-Gewehr";
        values[] = {0,1,2};
        texts[] = {"G3 (GM)", "G3 (NIArms)", "G28 (BWMod)"};
        default = 0;
    };
    class vbwEnableCrewmanLoadout {
        title = "Ausrüstung für Fahrzeugbesatzung laden?";
        values[] = {0,1};
        texts[] = {"Ja", "Nein"};
        default = 0;
    };
    class vbwEnablePilotLoadout {
        title = "Ausrüstung für Piloten laden?";
        values[] = {0,1};
        texts[] = {"Ja", "Nein"};
        default = 1;
    };
};
