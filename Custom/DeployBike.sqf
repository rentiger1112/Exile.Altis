if !((vehicle player) isEqualTo player) exitWith {}; //stops the script if user runs it while on or in vehicle.

if ("Exile_Item_DuctTape" in magazines player) then //checks to see if required items are in players inventory. 
{
		titleText ["", "PLAIN DOWN"];	
		player removeAction DeployBikeAction; //
		player removeItem "Exile_Item_DuctTape"; // remove the required item so infinite bikes cannot be deployed.
		player playActionNow "Medic"; //the animation used to deploy bike
		_spawnPos = player modelToWorld [0,10,0]; // where in relation to the player the bike spawns.  offset from players position by 10m
		_spawnDir = (getDir player) -90; // what degree rotation the bike spawns in. It has to be set but its redundant as it doesnt really matter. 
		do_MakeBike = [player, _spawnPos, _spawnDir]; // takes the previously two lines and tells the variable do_makebike to use them. 
		uiSleep 3; // a set time inbetween.  
		publicVariableServer "do_MakeBike"; // make the variable public so the code in the init file picks it up.
		uiSleep 1;
		["<t size = '.8'>Bike Deployed - Duct tape used</t>",0,0,2,0.5] spawn bis_fnc_dynamictext;
		systemchat("Bike deployed");
}
else
{
	["<t size = '.8'>Deploying a bike requires duct tape</t>",0,0,2,0.5] spawn bis_fnc_dynamictext;
	systemchat("Deploying a bike requires duct tape");
};



/**
SQF TUTORIAL (THE BASICS)


_var1 = 1;
_var2 = 0.5;

if(_var1 >= _var2) then {
	hint "Var 1 is Greater than or equalk to Var 2!!!!":
} else {
	hint "Var 2 is Greaterthan or equal to Var 1!!!";
};

*/