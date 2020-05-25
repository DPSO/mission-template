////////////////////////////////////////////////////////////////////////////////
//                           initServer.sqf                                   //
//              this file is executed on the server                           //
////////////////////////////////////////////////////////////////////////////////	
	
// WAITING FOR SERVER
waitUntil {time > 0};
waitUntil {!isNil "BIS_fnc_init"};

{_x disableAI "RADIOPROTOCOL"} forEach allUnits;



