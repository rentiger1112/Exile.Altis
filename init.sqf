  if (isDedicated || isServer) then
{
	"do_MakeBike" addPublicVariableEventHandler
	{
		_parameters = (_this select 1);
		_parameters2  =(_parameters select 1);
		diag_log format ["createVehicleRequested %1 ", _parameters];
		veh = createVehicle["Exile_Bike_MountainBike", _parameters2 , [] ,0 , "NONE"];
	};
};


if (hasInterface) then
{
	"PV_ZCP_zupastic" addPublicVariableEventHandler {
		_messageArray = _this select 1;
		hint parseText (format [
			"<t color='#00aeff' size='2' align='center'>%1</t><br /><t align='center'>%2</t><br/>",
			_messageArray  select 0,_messageArray  select 1
		]);
	};
	[] spawn
	{
		waitUntil{!isNil 'ExileClientLoadedIn'};
		[5, {{player reveal _x;} forEach (player nearObjects 10);}, [], true] call ExileClient_system_thread_addTask;
	};
};

if(hasInterface) then{
	[] execVM "scripts\rearm\service_point.sqf";
};


[] execVM "scripts\APOC_Airdrop_Assistance\init.sqf";
[] execVM "scripts\statusBar\statusbar.sqf";
[] execVM "scripts\ZCP\zcp.sqf";
[] execVm "apps\ExileSecurity\Init.sqf";
[] execVM "scripts\killmsgs\KillMessages.sqf";
[] execVM "scripts\rearm\takegive_poptab_init.sqf";
[] execVM "img\logo.sqf";
