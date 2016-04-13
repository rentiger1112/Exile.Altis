_requestingPlayer = select 1;
_accountData = select 2;
_bambiPlayer = select 3;
_score = (_accountData select 1);

  if((getPlayerUID _requestingPlayer) in ["76561198016748759"]) then {
  {
       clearWeaponCargo _bambiPlayer; // clears items
       clearMagazineCargo _bambiPlayer; // clears items
       _bambiPlayer forceAddUniform "Exile_Uniform_Woodland"; // adds uniforms
       _bambiPlayer addVest "V_HarnessOGL_gry";
       _bambiPlayer addHeadgear "H_RacingHelmet_1_black_F";
       _bambiPlayer addWeapon "Exile_Item_XM8";
       _bambiPlayer addWeapon "ItemCompass";
       _bambiPlayer addWeapon "ItemMap";
       _bambiPlayer addWeapon "ItemRadio";
       _bambiPlayer addWeapon "ItemGPS";
       _bambiPlayer addItem "NVGoggles_INDEP";
       _bambiPlayer assignItem "NVGoggles_INDEP";
       _bambiPlayer addBackpack "B_Carryall_cbr";        //Adds backpack to the player in question
       [player,"MMG_01_hex_F",4] call BIS_fnc_addWeapon;    //Adds a weapon to the player
       {player addPrimaryWeaponItem _x} forEach ["muzzle_snds_93mmg","acc_pointer_IR","optic_Nightstalker","bipod_02_F_hex"];
       _bambiPlayer addItemToVest "Exile_Item_EnergyDrink";
       _bambiPlayer addItemToVest "Exile_Item_InstaDoc";
       _bambiPlayer addItemToVest "Exile_Item_DuctTape";
       _bambiPlayer addItemToUniform "Exile_Item_Bandage";
       _bambiPlayer addItemToUniform "Exile_Item_Wrench";
} else {
  if ((getPlayerUID _requestingPlayer) in ["76561198065666063"]) then {
  {
    clearWeaponCargo _bambiPlayer; // clears items
    clearMagazineCargo _bambiPlayer; // clears items
    _bambiPlayer forceAddUniform "Exile_Uniform_Woodland"; // adds uniforms
    _bambiPlayer addVest "V_HarnessOGL_gry";
    _bambiPlayer addHeadgear "H_RacingHelmet_1_black_F";
    _bambiPlayer addWeapon "Exile_Item_XM8";
    _bambiPlayer addWeapon "ItemCompass";
    _bambiPlayer addWeapon "ItemMap";
    _bambiPlayer addWeapon "ItemRadio";
    _bambiPlayer addWeapon "ItemGPS";
    _bambiPlayer addItem "NVGoggles_INDEP";
    _bambiPlayer assignItem "NVGoggles_INDEP";
    _bambiPlayer addBackpack "B_Carryall_cbr";        //Adds backpack to the player in question
    [player,"srifle_GMG_camo_F",5] call BIS_fnc_addWeapon;    //Adds a weapon to the player
    {player addPrimaryWeaponItem _x} forEach ["optic_LRPS"];      //Adds attachments
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
