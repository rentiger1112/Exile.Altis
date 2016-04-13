/*
 	Name: init.sqf
  Author: Happydayz - Enigma
  Copyright (c) 2016 Happydayz
  This work is licensed under the Creative Commons Attribution-NonCommercial 4.0 International License.
  To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
  This work is built to work with Exile Mod for Arma 3 and as such contains code from that mod.
  Huge thanks to Exile Devs for the fantastic work they have done with their Mod!
*/


ThermalAllowed = true;



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////DO NOT CHANGE BELOW THIS LINE/////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*

XM8 Security was built using and heavily based upon the Arma 3 Exile Base Camera Security System.
http://www.exilemod.com

Enigma Logo Courtesy of Robin Inkysloth
https://www.flickr.com/photos/mysight/8132415082/in/photolist-doCKF9-7avPas-pbgQhY-ga3RFt-BaxHM-dbs52V-dc66Yd-7EfxUE-6b6jXU-4mKT24-dc5QT6-5d72yF-cM16xW-eVWGUK-sGDNU-7L6DYj-68eGPg-4LGnpz-Rcha4-6cBYMW-6fFqAg-CT3RG-7L2HQD-5Gpqz-7L6FpU-dc5j9s-eVWLyr-bPANWD-PEibz-HaRM8-8Gd8W8-4BfNM9-AiXpG-7PkYB-dbs64Q-5yXqQ6-319pZS-sVnv-uwPEj-7Rtodz-7MUVYV-4zyozE-7L2FJx-dsS86K-5F8wtu-obniuQ-4BfP3Y-dbrYy1-eVWSUM-dbs58p

Alarm system Based upon:
File: fn_copLights.sqf
Author: [GSN] Pager & [GSN] Paronity
Website: GSNGaming.com
Date Created: 2.24.2015
Date Modified: 3.3.2015 v1.3

*/

private ['_code', '_function', '_file'];

{
    _code = '';
    _function = _x select 0;
    _file = _x select 1;

    _code = compileFinal (preprocessFileLineNumbers _file);

    missionNamespace setVariable [_function, _code];
}
forEach
[

		['ExileSecurity_Territory', 'apps\ExileSecurity\ExileSecurity_Territory.sqf'],
		['ExileSecurity_onTerritoryDropDownChanged', 'apps\ExileSecurity\ExileSecurity_onTerritoryDropDownChanged.sqf'],
		['ExileSecurity_baseTerritory_event_onLoad', 'apps\ExileSecurity\ExileSecurity_baseTerritory_event_onLoad.sqf'],
		['ExileSecurity_handleTerritorySelection', 'apps\ExileSecurity\ExileSecurity_handleTerritorySelection.sqf'],
		['ExileSecurity_VisionMode', 'apps\ExileSecurity\ExileSecurity_VisionMode.sqf'],
		['ExileSecurity_Alarm', 'apps\ExileSecurity\ExileSecurity_Alarm.sqf'],
		['ExileSecurity_AlarmSound', 'apps\ExileSecurity\ExileSecurity_AlarmSound.sqf'],
		['ExileSecurity_AlarmLights', 'apps\ExileSecurity\ExileSecurity_AlarmLights.sqf'],
		['ExileSecurity_AlarmTimer', 'apps\ExileSecurity\ExileSecurity_AlarmTimer.sqf'],
  	['ExileSecurity_baseCameras_onCameraDropDownChanged', 'apps\ExileSecurity\ExileSecurity_baseCameras_onCameraDropDownChanged.sqf'],
		['ExileSecurity_baseCamera_event_onLoad', 'apps\ExileSecurity\ExileSecurity_baseCamera_event_onLoad.sqf'],
		['ExileSecurity_onMouseMoving', 'apps\ExileSecurity\ExileSecurity_onMouseMoving.sqf'],
		['ExileSecurity_onMouseButtonDown', 'apps\ExileSecurity\ExileSecurity_onMouseButtonDown.sqf'],
		['ExileSecurity_onMouseButtonUp', 'apps\ExileSecurity\ExileSecurity_onMouseButtonUp.sqf'],
		['ExileSecurity_onConnectButtonClick', 'apps\ExileSecurity\ExileSecurity_onConnectButtonClick.sqf'],
		['ExileSecurity_onConnectLoad', 'apps\ExileSecurity\ExileSecurity_onConnectLoad.sqf'],
		['ExileSecurity_onUnload', 'apps\ExileSecurity\ExileSecurity_onUnload.sqf'],
		['ExileSecurity_togglePower', 'apps\ExileSecurity\ExileSecurity_togglePower.sqf'],
		['ExileSecurity_ExitApp', 'apps\ExileSecurity\ExileSecurity_ExitApp.sqf'],
		['ExileSecurity_MenuSlide', 'apps\ExileSecurity\ExileSecurity_MenuSlide.sqf'],
		['ExileSecurity_SettingsCreate', 'apps\ExileSecurity\ExileSecurity_SettingsCreate.sqf'],
		['ExileSecurity_CloseSettings', 'apps\ExileSecurity\ExileSecurity_CloseSettings.sqf'],
		['ExileSecurity_mouseControl_buildlimits', 'apps\ExileSecurity\ExileSecurity_mouseControl_buildlimits.sqf']

	];
