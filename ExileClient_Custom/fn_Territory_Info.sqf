/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 *
 * Author: 			Jamchiv01
 * Last Moddified: 	15/12/15
 * Description: 	Handles the output for territory information.
 */

private["_nObject","_territoryName","_territoryCount","_territoryLevel", "_territoryRadius", "_territoryInfo", "_objectLimit", "_ItemsRemaining","_Heading", "_DoubleLineBreak", "_Linebreak", "_line1", "_line2","_line3", "_line4", "_Final"];

ExileCustom_Admins = ['76561198042737639","76561197961449998","76561198074172179","76561198065666063","76561198061772335'];

if(getPlayerUID player in ExileCustom_Admins) then {
	_nObject = nearestObject [player, "Exile_Construction_Flag_Static"];
	if(!isNull _nObject) then {
		_nObject = nearestObject [player, "Exile_Construction_Flag_Static"];
		_territoryName = _nObject getVariable ["ExileTerritoryName", ""];
		_territoryCount = _nObject getVariable ["ExileTerritoryNumberOfConstructions", 0];
		_territoryLevel = _nObject getVariable ["ExileTerritoryLevel", 0];
		_territoryRadius = _nObject getVariable ["ExileTerritorySize", 0];
		_territoryInfo = (getArray(missionConfigFile >> "CfgTerritories" >> "prices")) select (_territoryLevel - 1);
		_objectLimit = _territoryInfo select 2;
		_ItemsRemaining = _objectLimit - _territoryCount;
		_nextProtectionMoneyDueDate = _nObject getVariable ["ExileTerritoryMaintenanceDue", [0, 0, 0, 0, 0]];
		_dateTimeString = format 
		[
			"%1-%2-%3 %4:%5",
			_nextProtectionMoneyDueDate select 0,
			_nextProtectionMoneyDueDate select 1,
			_nextProtectionMoneyDueDate select 2,
			_nextProtectionMoneyDueDate select 3,
			_nextProtectionMoneyDueDate select 4
		];
		_ownerUID = _nObject getVariable ["ExileOwnerUID", ""];
		_Heading = parseText format["<t size='2.0'><t color='#ff0000'>Territory: %1</t></t>", _territoryName];
		_DoubleLineBreak = parseText "<br /><br />"; 
		_Linebreak = parseText "<br />"; 
		
		_line1 = parseText format["<t align='center'>Owner UID: %1</t>", _ownerUID];
		_line2 = parseText format["<t align='center'>Constructions: %1</t>", _territoryCount];
		_line3 = parseText format["<t align='center'>Items Remaining: %1</t>", _ItemsRemaining];
		_line4 = parseText format["<t align='center'>Territory Level: %1</t>", _territoryLevel];
		_line5 = parseText format["<t align='center'>Territory Radius: %1</t>", _territoryRadius];
		_line6 = parseText format["<t align='center'>Protection Money Due: %1</t>", _dateTimeString];
		
		_Final = composeText [_Heading, _DoubleLineBreak, _line1, _Linebreak, _line2, _Linebreak, _line3, _Linebreak, _line4, _Linebreak, _line5, _Linebreak, _line6];  
		hint _Final;
	} else {
		_Heading = parseText "<t size='2.0'><t color='#ff0000'>Error</t></t>";  
		_Spacer = parseText "<br /><br />";  
		_Message = parseText "<t align='center'>You are not standing in a territory, something went wrong.</t>";
		_Final = composeText [_Heading, _Spacer, _Message];      
		hint _Final;
	};
} else {
	_nObject = nearestObject [player, "Exile_Construction_Flag_Static"];
	if(!isNull _nObject) then {
		_nObject = nearestObject [player, "Exile_Construction_Flag_Static"];
		_territoryName = _nObject getVariable ["ExileTerritoryName", ""];
		_territoryCount = _nObject getVariable ["ExileTerritoryNumberOfConstructions", 0];
		_territoryLevel = _nObject getVariable ["ExileTerritoryLevel", 0];
		_territoryRadius = _nObject getVariable ["ExileTerritorySize", 0];
		_territoryInfo = (getArray(missionConfigFile >> "CfgTerritories" >> "prices")) select (_territoryLevel - 1);
		_objectLimit = _territoryInfo select 2;
		_ItemsRemaining = _objectLimit - _territoryCount;
		_nextProtectionMoneyDueDate = _nObject getVariable ["ExileTerritoryMaintenanceDue", [0, 0, 0, 0, 0]];
		_dateTimeString = format 
		[
			"%1-%2-%3 %4:%5",
			_nextProtectionMoneyDueDate select 0,
			_nextProtectionMoneyDueDate select 1,
			_nextProtectionMoneyDueDate select 2,
			_nextProtectionMoneyDueDate select 3,
			_nextProtectionMoneyDueDate select 4
		];
		_Heading = parseText format["<t size='2.0'><t color='#00CC00'>Territory: %1</t></t>", _territoryName];  
		_DoubleLineBreak = parseText "<br /><br />"; 
		_Linebreak = parseText "<br />"; 
		
		_line1 = parseText format["<t align='center'>Constructions: %1</t>", _territoryCount];
		_line2 = parseText format["<t align='center'>Items Remaining: %1</t>", _ItemsRemaining];
		_line3 = parseText format["<t align='center'>Territory Level: %1</t>", _territoryLevel];
		_line4 = parseText format["<t align='center'>Territory Radius: %1</t>", _territoryRadius];
		_line5 = parseText format["<t align='center'>Protection Money Due: %1</t>", _dateTimeString];
		_Final = composeText [_Heading, _DoubleLineBreak, _line1, _Linebreak, _line2, _Linebreak, _line3, _Linebreak, _line4];  
		hint _Final;
	} else {
		_Heading = parseText "<t size='2.0'><t color='#ff0000'>Error</t></t>";  
		_Spacer = parseText "<br /><br />";  
		_Message = parseText "<t align='center'>You are not standing in a territory, something went wrong.</t>";
		_Final = composeText [_Heading, _Spacer, _Message];      
		hint _Final;
	};
};