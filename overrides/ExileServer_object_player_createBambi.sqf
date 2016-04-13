/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

private["_sessionID","_requestingPlayer","_spawnLocationMarkerName","_bambiPlayer","_accountData","_spawnAreaPosition","_spawnAreaRadius","_direction","_position","_clanID","_clanName","_parachuteNetID","_spawnType","_parachuteObject"];
_sessionID = _this select 0;
_requestingPlayer = _this select 1;
_spawnLocationMarkerName = _this select 2;
_bambiPlayer = _this select 3;
_accountData = _this select 4;
_spawnAreaPosition = getMarkerPos _spawnLocationMarkerName;
_spawnAreaPosition set [2, getNumber(configFile >> "CfgSettings" >> "BambiSettings" >> "parachuteDropHeight")];
_spawnAreaRadius = getNumber(configFile >> "CfgSettings" >> "BambiSettings" >> "spawnZoneRadius");
_direction = random 360;
_position = [_spawnAreaPosition, _spawnAreaRadius] call ExileClient_util_math_getRandomPositionInCircle;
_name = name _requestingPlayer;
_clanID = (_accountData select 4);
_clanName = (_accountData select 5);
if !((typeName _clanID) isEqualTo "SCALAR") then
{
 _clanID = -1;
 _clanName = "";
};
_bambiPlayer setPosATL [_position select 0,_position select 1,0];
_bambiPlayer disableAI "FSM";
_bambiPlayer disableAI "MOVE";
_bambiPlayer disableAI "AUTOTARGET";
_bambiPlayer disableAI "TARGET";
_bambiPlayer setDir _direction;
_bambiPlayer setName _name;
_bambiPlayer setVariable ["ExileMoney", (_accountData select 0)];
_bambiPlayer setVariable ["ExileScore", (_accountData select 1)];
_bambiPlayer setVariable ["ExileKills", (_accountData select 2)];
_bambiPlayer setVariable ["ExileDeaths", (_accountData select 3)];
_bambiPlayer setVariable ["ExileClanID", _clanID];
_bambiPlayer setVariable ["ExileClanName", _clanName];
_bambiPlayer setVariable ["ExileHunger", 100];
_bambiPlayer setVariable ["ExileThirst", 100];
_bambiPlayer setVariable ["ExileAlcohol", 0];
_bambiPlayer setVariable ["ExileName", _name];
_bambiPlayer setVariable ["ExileOwnerUID", getPlayerUID _requestingPlayer];
_bambiPlayer setVariable ["ExileIsBambi", true];
_bambiPlayer setVariable ["ExileXM8IsOnline", false, true];
_parachuteNetID = "";
if ((getNumber(configFile >> "CfgSettings" >> "BambiSettings" >> "parachuteSpawning")) isEqualTo 1) then
{
 if ((getNumber(configFile >> "CfgSettings" >> "BambiSettings" >> "haloJump")) isEqualTo 1) then
 {
  _bambiPlayer addBackpackGlobal "B_Parachute";
  _bambiPlayer setPosATL _position;
  _spawnType = 2;
 }
 else
 {
  _parachuteObject = createVehicle ["Steerable_Parachute_F", _position, [], 0, "CAN_COLLIDE"];
  _parachuteObject setDir _direction;
  _parachuteObject setPosATL _position;
  _parachuteObject enableSimulationGlobal true;
  _parachuteNetID = netId _parachuteObject;
  _spawnType = 1;
 };
}
else
{
 _spawnType = 1;
};

_score = (_accountData select 1);
if((getPlayerUID _requestingPlayer) in ["76561198016748759"]) then {
     clearWeaponCargo _bambiPlayer; // clears items
     clearMagazineCargo _bambiPlayer; // clears items
     _bambiPlayer forceAddUniform "U_O_FullGhillie_sard"; // adds uniforms
     _bambiPlayer addVest "V_HarnessOGL_gry";
     _bambiPlayer addWeapon "Exile_Item_XM8";
     _bambiPlayer addWeapon "ItemCompass";
     _bambiPlayer addWeapon "ItemMap";
     _bambiPlayer addWeapon "ItemRadio";
     _bambiPlayer addWeapon "ItemGPS";
      _bambiPlayer addWeapon "Rangefinder";
     _bambiPlayer addItem "NVGoggles_INDEP";
     _bambiPlayer assignItem "NVGoggles_INDEP";
     _bambiPlayer addBackpack "B_Carryall_cbr";
      _bambiPlayer addItemToBackpack "HandGrenade";
      _bambiPlayer addWeapon "srifle_GM6_camo_F";
      _bambiPlayer addPrimaryWeaponItem "optic_KHS_blk";
      _bambiPlayer addMagazines ["5Rnd_127x108_Mag", 4];
      _bambiPlayer addWeapon "hgun_Pistol_heavy_01_F";
      _bambiPlayer addHandgunItem "muzzle_snds_acp";
      _bambiPlayer addMagazines ["11Rnd_45ACP_Mag", 3];
     _bambiPlayer addItemToVest "Exile_Item_EMRE";
     _bambiPlayer addItemToVest "Exile_Item_EnergyDrink";
     _bambiPlayer addItemToVest "Exile_Item_InstaDoc";
     _bambiPlayer addItemToVest "Exile_Item_DuctTape";
     _bambiPlayer addItemToUniform "Exile_Item_Bandage";
     _bambiPlayer addItemToUniform "Exile_Item_Wrench";
} else {
	if ((getPlayerUID _requestingPlayer) in ["76561198065666063"]) then {
		clearWeaponCargo _bambiPlayer; // clears items
		clearMagazineCargo _bambiPlayer; // clears items
		_bambiPlayer forceAddUniform "U_O_FullGhillie_sard"; // adds uniforms
		_bambiPlayer addVest "V_HarnessOGL_gry";
		_bambiPlayer addWeapon "Exile_Item_XM8";
		_bambiPlayer addWeapon "ItemCompass";
		_bambiPlayer addWeapon "ItemMap";
		_bambiPlayer addWeapon "ItemRadio";
		_bambiPlayer addWeapon "ItemGPS";
    _bambiPlayer addWeapon "Rangefinder";
		_bambiPlayer addItem "NVGoggles_INDEP";
		_bambiPlayer assignItem "NVGoggles_INDEP";
		_bambiPlayer addBackpack "B_Carryall_cbr";
    _bambiPlayer addItemToBackpack "HandGrenade";
    //_bambiPlayer [player,"srifle_GM6_camo_F",4] call BIS_fnc_addWeapon;
  //  _bambiPlayer {player addPrimaryWeaponItem _x} forEach ["optic_KHS_blk"];
  //  _bambiPlayer [player,"hgun_Pistol_heavy_01_F",4] call BIS_fnc_addWeapon;
  //  _bambiPlayer {player addHandgunItem _x} forEach ["muzzle_snds_acp"];
    _bambiPlayer addWeapon "srifle_GM6_camo_F";
    _bambiPlayer addPrimaryWeaponItem "optic_KHS_blk";
    _bambiPlayer addMagazines ["5Rnd_127x108_Mag", 4];
    _bambiPlayer addWeapon "hgun_Pistol_heavy_01_F";
    _bambiPlayer addHandgunItem "muzzle_snds_acp";
    _bambiPlayer addMagazines ["11Rnd_45ACP_Mag", 3];
		_bambiPlayer addItemToVest "Exile_Item_EMRE";
		_bambiPlayer addItemToVest "Exile_Item_EnergyDrink";
		_bambiPlayer addItemToVest "Exile_Item_InstaDoc";
		_bambiPlayer addItemToVest "Exile_Item_DuctTape";
		_bambiPlayer addItemToUniform "Exile_Item_Bandage";
		_bambiPlayer addItemToUniform "Exile_Item_Wrench";
	} else {
		if(_score > 5000 && _score < 8000) then {
			clearWeaponCargo _bambiPlayer;
			clearMagazineCargo _bambiPlayer;
			hint "5 - 8k respect loadout attached";
			_bambiPlayer addWeapon 'Exile_Item_XM8';
			_bambiPlayer addWeapon "ItemCompass";
			_bambiPlayer addItemToUniform "Exile_Item_BBQSandwich_Cooked";
			_bambiPlayer addItemToUniform "Exile_Item_PlasticBottleFreshWater";
		} else {
			if(_score > 7999 && _score < 10000) then {
				clearWeaponCargo _bambiPlayer;
				clearMagazineCargo _bambiPlayer;
				hint "8 - 10k respect loadout attached";
				_bambiPlayer forceAddUniform "U_BG_leader";
				_bambiPlayer addVest "V_Rangemaster_belt";
				_bambiPlayer addWeapon 'Exile_Item_XM8';
				_bambiPlayer addWeapon "ItemCompass";
				_bambiPlayer addItemToVest "Exile_Item_BBQSandwich_Cooked";
				_bambiPlayer addItemToVest "Exile_Item_PlasticBottleFreshWater";
				_bambiPlayer addItemToVest "Exile_Item_PlasticBottleFreshWater";
			} else {
				if(_score > 9999 && _score < 15000) then {
					clearWeaponCargo _bambiPlayer;
					clearMagazineCargo _bambiPlayer;
					hint "10 - 15k respect loadout attached";
					_bambiPlayer forceAddUniform "U_BG_leader";
					_bambiPlayer addVest "V_BandollierB_oli";
					_bambiPlayer addWeapon 'Exile_Item_XM8';
					_bambiPlayer addWeapon "ItemCompass";
					_bambiPlayer addItemToVest "Exile_Item_BBQSandwich_Cooked";
					_bambiPlayer addItemToVest "Exile_Item_PlasticBottleFreshWater";
				} else {
					if(_score > 14999 && _score < 20000) then {
						clearWeaponCargo _bambiPlayer;
						clearMagazineCargo _bambiPlayer;
						hint "15 - 20k respect loadout attached";
						_bambiPlayer forceAddUniform "U_BG_leader";
						_bambiPlayer addVest "V_PlateCarrier1_rgr";
						_bambiPlayer addWeapon 'Exile_Item_XM8';
						_bambiPlayer addWeapon "ItemCompass";
						_bambiPlayer addItemToUniform "Exile_Item_BBQSandwich_Cooked";
						_bambiPlayer addItemToUniform "Exile_Item_PlasticBottleFreshWater";
					} else {
						if(_score > 19999 && _score < 30000) then {
							clearWeaponCargo _bambiPlayer;
							clearMagazineCargo _bambiPlayer;
							hint "20 - 30k respect loadout attached";
							_bambiPlayer forceAddUniform "U_BG_leader";
							_bambiPlayer addVest "V_PlateCarrier1_rgr";
							_bambiPlayer addWeapon "ItemGPS";
							_bambiPlayer addWeapon 'Exile_Item_XM8';
							_bambiPlayer addWeapon "ItemCompass";
							_bambiPlayer addItemToUniform "Exile_Item_BBQSandwich_Cooked";
							_bambiPlayer addItemToUniform "Exile_Item_PlasticBottleFreshWater";
						} else {
							if(_score > 29999) then {
								clearWeaponCargo _bambiPlayer;
								clearMagazineCargo _bambiPlayer;
								hint "30k+ respect loadout attached";
								_bambiPlayer forceAddUniform "U_I_CombatUniform";
								_bambiPlayer addVest "V_PlateCarrier1_rgr";
								_bambiPlayer addWeapon "ItemGPS";
								_bambiPlayer addWeapon 'Exile_Item_XM8';
								_bambiPlayer addWeapon "ItemCompass";
								_bambiPlayer addItemToUniform "Exile_Item_BBQSandwich_Cooked";
								_bambiPlayer addItemToUniform "Exile_Item_PlasticBottleFreshWater";
								_bambiPlayer addItemToUniform "Exile_Item_InstaDoc";
							};
						};
					};
				};
			};
		};
	};
};

_bambiPlayer addMPEventHandler ["MPKilled", {_this call ExileServer_object_player_event_onMpKilled}];
_bambiPlayer call ExileServer_object_player_database_insert;
_bambiPlayer call ExileServer_object_player_database_update;
[
 _sessionID,
 "createPlayerResponse",
 [
  _bambiPlayer,
  _parachuteNetID,
  str (_accountData select 0),
  str (_accountData select 1),
  (_accountData select 2),
  (_accountData select 3),
  100,
  100,
  0,
  (getNumber (configFile >> "CfgSettings" >> "BambiSettings" >> "protectionDuration")) * 60,
  _clanName,
  _spawnType
 ]
]
call ExileServer_system_network_send_to;
[_sessionID, _bambiPlayer] call ExileServer_system_session_update;
//[_requestingplayer, _accountdata,_bambiPlayer]  execVM "scripts\spawn\loadouts.sqf";
true
