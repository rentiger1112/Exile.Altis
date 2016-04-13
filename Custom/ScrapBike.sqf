if !((vehicle player) isEqualTo player) exitWith {}; //MAKE SURE WE ARE ON FEET

if (typeOf cursorTarget == "Exile_Bike_MountainBike") then {
    deletevehicle cursorTarget;
    player playMove "AinvPknlMstpSnonWnonDr_medic3";
    player additem "Exile_Item_DuctTape";
	uiSleep 1;
    ["Success",["Personal Bike Packed! Duct Tape Returned!"]] call ExileClient_gui_notification_event_addNotification;
};