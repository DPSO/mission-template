////////////////////////////////////////////////////////////////////////////////
//                           initPlayerLocal.sqf                              //
//                     this file is executed on clients                       //
////////////////////////////////////////////////////////////////////////////////
// =========================================================================================================
// INITIALIZING CLIENT
// =========================================================================================================


// Types "Fext" text on the screen, letter by letter, cursor blinking.
[
    [
        ["Fext Training Base", "<t size = '1.5' underline = '1'>%1</t><br/>"],
        ["Dropping Purple Smoke"],
        ["Stratis", "<t size = '1' font='puristaMedium'>%1</t>", 70]
    ], 1, 0.75, "<t align = 'center' shadow = '1' size = '1.0'>%1</t>"
] spawn BIS_fnc_typeText;

// =========================================================================================================
// DISPLAYING IMPORTANT INFORMATION AT STARTUP (WARNING, TIP, UPDATE INFO...)
// =========================================================================================================


// =========================================================================================================
// Enhanced High & Low Script														   										//
// https://forums.bohemia.net/forums/topic/189776-enhanced-high-low-script/	
// =========================================================================================================

	if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

	nul=[] execVM "EHL\EHL.sqf";

// =========================================================================================================
// kill the rabbits 
// =========================================================================================================

	// Disable Ambient Animals
	[{time > 0}, {enableEnvironment [false, true];}] call CBA_fnc_waitUntilAndExecute;


// =========================================================================================================
// INITIALIZING PLAYER
// =========================================================================================================
	// Shut the hell up  - Mute Orders and Reports
	{_x setSpeaker "NoVoice"} forEach allUnits;

	enableSentences false;
