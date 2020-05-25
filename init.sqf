﻿////////////////////////////////////////////////////////////////////////////////
//                           init.sqf                                         //
//              this file is executed on both server and clients              //
////////////////////////////////////////////////////////////////////////////////

// =========================================================================================================
//  INITIALIZATION
// =========================================================================================================


// Disable Ambient Animals
[{time > 0}, {enableEnvironment [false, true];}] call CBA_fnc_waitUntilAndExecute;


// =========================================================================================================
// Shut the hell up  - Mute Orders and Reports
// =========================================================================================================

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;

// =========================================================================================================
// INITIALIZING ARTILLERY COMPUTER FUNCTIONS
// =========================================================================================================

enableEngineArtillery false;




