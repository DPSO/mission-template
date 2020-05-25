// LOADING GEAR
//player setUnitLoadout (player getVariable ["current_loadout", []]);
[player, [missionNamespace, "myLoadout"]] call BIS_fnc_loadInventory;

/// ---------------------------------------------------------------
// kill the rabbits 
/// ---------------------------------------------------------------

// Disable Ambient Animals
[{time > 0}, {enableEnvironment [false, true];}] call CBA_fnc_waitUntilAndExecute;

/// ---------------------------------------------------------------
// Enhanced High & Low Script										
// https://forums.bohemia.net/forums/topic/189776-enhanced-high-low-script/	
/// ---------------------------------------------------------------

_ehls = [] execVM "EHL\EHL.sqf";
waitUntil {scriptDone _ehls};


/// ---------------------------------------------------------------
// Shut the hell up  - Mute Orders and Reports					
/// ---------------------------------------------------------------

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;
