/*
This is that place where people usually put credits....
I don't give a fuck about credits :) Shix is a babe. Wolf is a god.
JK: If you're gunna edit it for yourself: FINE... Don't go all Tyler777 on us and just upload other peoples work :D
*/

/*  - Config Start - */
_donatorMode = true;
_donors = ['76561198134905171'];
AdvancedBankingMode = false; // ================= !!!THIS IS MEGA IMPORTANT!!! ( IF YOU USE ADVANCED BANKING THEN THIS (NEEDS) TO BE SET TO TRUE OTHERWISE (IF YOU USE ENIGMA) LEAVE IT AS FALSE) ================//

orderIDcharacters = "[SG]"; //Characters to be displayed at the start of each unique order number (can be a community name abbreviation ie: ESG (Evolved Survival Gaming)

//Box One Config
_Box1Name = "Starter";
Box1Items = [
['Exile_Item_Flag',1],
['Exile_Item_Matches',2],
['Exile_Item_CookingPot',1],
['Exile_Item_CanOpener',1],
['Exile_Item_Handsaw',1],
['Exile_Item_Grinder',1],
['Exile_Item_CampFireKit',1],
['Exile_Item_WorkBenchKit',1]
];
box1Cost = 3000;
box1DonorCost = 1000;

//Box Two Config
_Box2Name = "Supplies";
Box2Items = [
['Exile_Item_EMRE',2],
['Exile_Item_GloriousKnakworst',2],
['Exile_Item_InstantCoffee',1],
['Exile_Item_PowerDrink',1],
['Exile_Item_Beer',1],
['Exile_Item_EnergyDrink',1],
['Exile_Item_CampFireKit',1],
['Exile_Item_Matches',1],
['Exile_Item_CookingPot',1]
];
box2Cost = 2000;
box2DonorCost = 1000;

//Box Three Config
_Box3Name = "CCTV";
Box3Items = [
['Exile_Item_Codelock',2],
['Exile_Item_BaseCameraKit',6],
['Exile_Item_Laptop',1]
];
box3Cost = 15000;
box3DonorCost = 1000;

//Box Four Config
_Box4Name = "Small";
Box4Items = [
['Exile_Item_Codelock',2],
['Exile_Item_WoodDoorKit',2],
['Exile_Item_WoodFloorKit',18],
['Exile_Item_WoodFloorPortKit',1],
['Exile_Item_WoodGateKit',1],
['Exile_Item_WoodPlank',10],
['Exile_Item_WoodStairsKit',1],
['Exile_Item_WoodSupportKit',4],
['Exile_Item_WoodWallKit',16],
['Exile_Item_WorkBenchKit',1]
];
box4Cost = 40000;
box4DonorCost = 1000;

//Box Five Config
_Box5Name = "Large";
Box5Items = [
['Exile_Item_Codelock',2],
['Exile_Item_WoodDoorKit',4],
['Exile_Item_WoodFloorKit',25],
['Exile_Item_WoodGateKit',2],
['Exile_Item_WoodPlank',15],
['Exile_Item_WoodStairsKit',2],
['Exile_Item_WoodSupportKit',4],
['Exile_Item_WoodWallKit',20],
['Exile_Item_WorkBenchKit',1]
];
box5Cost = 60000;
box5DonorCost = 1000;

//Box Six Config
_Box6Name = "Upgrade";
Box6Items = [
['Exile_Item_FortificationUpgrade',10],
['Exile_Item_SafeKit',2],
['Exile_Item_CamoTentKit',4],
['Exile_Item_Foolbox',1],
['Exile_Item_PortableGeneratorKit',1],
['Exile_Item_FloodLightKit',5],
['Exile_Item_DuctTape',3]
];
box6Cost = 50000;
box6DonorCost = 1000;

/*  - Config End -   */

if ((_donatorMode) && (getPlayerUID player in _donors)) then {
  box1Cost = box1DonorCost;
  box2Cost = box2DonorCost;
  box3Cost = box3DonorCost;
  box4Cost = box4DonorCost;
  box5Cost = box5DonorCost;
  box6Cost = box6DonorCost;
};

disableSerialization;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];

//set XM8 title
(_display displayCtrl 4004) ctrlSetStructuredText (parseText (format ["<t align='center' font='RobotoMedium'>eBase</t>"]));

//Hides all xm8 apps controlls then deletes them for a smooth transition
_xm8Controlls = [991,881,992,882,993,883,994,884,995,885,996,886,997,887,998,888,999,889,9910,8810,9911,8811,9912,8812];
{
    _fade = _display displayCtrl _x;
    _fade ctrlSetFade 1;
    _fade ctrlCommit 0.5;
} forEach _xm8Controlls;
{
    ctrlDelete ((findDisplay 24015) displayCtrl _x);
} forEach _xm8Controlls;
uiSleep 0.2;


_Box1Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 851];
_Box1Btn ctrlSetPosition [(7 - 3) * (0.025), (6 - 2) * (0.04)];
_Box1Btn ctrlCommit 0;
_Box1Btn ctrlSetFontHeight 0.05;
_Box1Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box1Name, box1Cost]));
_Box1Btn ctrlSetEventHandler ["ButtonClick", "[1]call fnc_preview_Load; boxCost = box1Cost;boxDonorCost = box1DonorCost; BoxItems = Box1Items;"];

_Box2Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 852];
_Box2Btn ctrlSetPosition [(14 - 3) * (0.025), (6 - 2) * (0.04)];
_Box2Btn ctrlCommit 0;
_Box2Btn ctrlSetFontHeight 0.05;
_Box2Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box2Name, box2Cost]));
_Box2Btn ctrlSetEventHandler ["ButtonClick", "[2]call fnc_preview_Load; boxCost = box2Cost;boxDonorCost = box2DonorCost; BoxItems = Box2Items;"];

_Box3Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 853];
_Box3Btn ctrlSetPosition [(7 - 3) * (0.025), (11.5 - 2) * (0.04)];
_Box3Btn ctrlCommit 0;
_Box3Btn ctrlSetFontHeight 0.05;
_Box3Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box3Name, box3Cost]));
_Box3Btn ctrlSetEventHandler ["ButtonClick", "[3]call fnc_preview_Load; boxCost = box3Cost;boxDonorCost = box3DonorCost; BoxItems = Box3Items;"];

_Box4Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 854];
_Box4Btn ctrlSetPosition [(14 - 3) * (0.025), (11.5 - 2) * (0.04)];
_Box4Btn ctrlCommit 0;
_Box4Btn ctrlSetFontHeight 0.05;
_Box4Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box4Name, box4Cost]));
_Box4Btn ctrlSetEventHandler ["ButtonClick", "[4]call fnc_preview_Load; boxCost = box4Cost;boxDonorCost = box4DonorCost; BoxItems = Box4Items;"];

_Box5Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 855];
_Box5Btn ctrlSetPosition [(7 - 3) * (0.025), (17 - 2) * (0.04)];
_Box5Btn ctrlCommit 0;
_Box5Btn ctrlSetFontHeight 0.05;
_Box5Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box5Name, box5Cost]));
_Box5Btn ctrlSetEventHandler ["ButtonClick", "[5]call fnc_preview_Load; boxCost = box5Cost;boxDonorCost = box5DonorCost; BoxItems = Box5Items;"];

_Box6Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 856];
_Box6Btn ctrlSetPosition [(14 - 3) * (0.025), (17 - 2) * (0.04)];
_Box6Btn ctrlCommit 0;
_Box6Btn ctrlSetFontHeight 0.05;
_Box6Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box6Name, box6Cost]));
_Box6Btn ctrlSetEventHandler ["ButtonClick", "[6]call fnc_preview_Load; boxCost = box6Cost;boxDonorCost = box6DonorCost; BoxItems = Box6Items;"];


_BuyBtn = _display ctrlCreate ["RscButtonMenu", 857];
_BuyBtn ctrlSetPosition [(20.85 - 3) * (0.025),(10.5 - 2) * (0.04),0.125,1 * (0.04)];
_BuyBtn ctrlCommit 0;
_BuyBtn ctrlSetText "Buy Now";
_BuyBtn ctrlSetEventHandler ["ButtonClick", "[] spawn fnc_buycrate;"];


_ItemsList = _display ctrlCreate ["RscListBox", 858];
_ItemsList ctrlSetPosition [(26.6 - 3) * (0.025),(8 - 2) * (0.04),(0.32),14 * (0.04)];
_ItemsList ctrlCommit 0;
_ItemsList ctrlSetText "Cancel";
_ItemsList ctrlSetEventHandler ["ButtonClick", "call fnc_goBack"];

_ranNumArr = ['1','2','3','4','5','6','7','8','9','0'];
a1 = _ranNumArr call BIS_fnc_selectRandom;
a2 = _ranNumArr call BIS_fnc_selectRandom;
a3 = _ranNumArr call BIS_fnc_selectRandom;
a4 = _ranNumArr call BIS_fnc_selectRandom;
a5 = _ranNumArr call BIS_fnc_selectRandom;
a6 = _ranNumArr call BIS_fnc_selectRandom;
a7 = _ranNumArr call BIS_fnc_selectRandom;

_userrating = _display ctrlCreate ["RscStructuredText", 1230];
_userrating ctrlSetPosition [(26.6 - 3) * (0.025),(6 - 2) * (0.04),(0.32),1.7 * (0.04)];
_userrating ctrlCommit 0;
_userrating ctrlSetStructuredText (parseText (format ["<t align='center'size='0.8'> Customer Ident: %2-%3%4<br/>(%1)",name player, orderIDcharacters, a1, a2]));
_userrating ctrlSetBackgroundColor [0.11,0.106,0.125,1];



_boxselected = 0;
fnc_preview_Load = {
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
_boxNum = _this select 0;
lbClear 858;

//Display list of items in the crate ^ can be defined in cfg.
switch (_boxNum) do {
    case (1): {
      {
        boxselected = 1;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box1Items;
    };
    case (2): {
      {
        boxselected = 2;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box2Items;
    };
    case (3): {
      {
        boxselected = 3;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box3Items;
    };
    case (4): {
      {
        boxselected = 4;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box4Items;
    };
    case (5): {
      {
        boxselected = 5;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box5Items;
    };
    case (6): {
      {
        boxselected = 6;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box6Items;
    };
  };
};

//has to be in a function because sheduling is cancer and this needs to sleep
fnc_deliverynotify = {
  uiSleep 20;
  hint format["Dear Customer: %1, Your order is complete and your package has been delivered right to your not-yet-existent front door - Buy it, build it, love it! - eBase.com",name player];
    ctrlEnable [857, true];
};

fnc_ordernotify = {
  hint format["Dear Customer: %1, thanks for your order! your order number is '%2-%3%4%5%6%7%8' - eBase.com",name player, orderIDcharacters, a1, a2, a3, a4, a5, a6, a6, a7];
};

fnc_makecrate= {
    [] spawn fnc_ordernotify;
    _playerPOS = getPOSATL player;
    _crate = createVehicle ["Exile_Container_StorageCrate", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
    _smokeshell = createVehicle ["SmokeShellRed", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
    clearMagazineCargoGlobal _crate;
    clearWeaponCargoGlobal _crate;
    clearItemCargoGlobal _crate;
    clearBackpackCargoGlobal _crate;
    {
        _crate addItemCargoGlobal [(_x select 0), (_x select 1)];
    } forEach BoxItems;
    _cratePOS = getPOSATL _crate;
    _parachute = "B_Parachute_02_F" createVehicle (_cratePOS);
    _parachute setPos _cratePOS;
    _crate attachTo [_parachute, [0, 0, 0.1] ];
    _smokeshell attachTo [_crate, [0, 0, 0.1] ];
    [] spawn fnc_deliverynotify;
};

//Actual Buy Function
fnc_buycrate = {
    if (ExileClientPlayerMoney >= boxCost) then
    {
        ctrlEnable [857, false];
        if (AdvancedBankingMode) then
        {
            ["buyRequest",["WALLET",str(boxCost)]] call ExileClient_system_network_send;
            [] spawn fnc_makecrate;
        }
        else
        {
            _newPoptabs = ExileClientPlayerMoney - boxCost;
            ENIGMA_UpdateStats = [player,_newPoptabs];
            publicVariableServer "ENIGMA_UpdateStats";
            [] spawn fnc_makecrate;
        };
    }
    else
    {
        (findDisplay 24015) closeDisplay 0;
        hint format["Dear Custom: %1, Your order has been declined due to insufficient funds",name player];
    };
};

//De_BigShix Cancel Button
_GoBackBtn = _display ctrlCreate ["RscButtonMenu", 1116];
_GoBackBtn ctrlSetPosition [(21.1 - 3) * (0.025),(13 - 2) * (0.04),4.5 * (0.025),1 * (0.04)];
_GoBackBtn ctrlCommit 0;
_GoBackBtn ctrlSetText "Cancel";
_GoBackBtn ctrlSetEventHandler ["ButtonClick", "call fnc_goBack"];


fnc_goBack = {
  _display = uiNameSpace getVariable ["RscExileXM8", displayNull];
  _Ctrls = [1116,851,852,853,854,855,856,857,858];
  {
      _ctrl = (_display displayCtrl _x);
      _ctrl ctrlSetFade 1;
      _ctrl ctrlCommit 0.25;
      ctrlEnable [_x, false];
  } forEach _Ctrls;
  execVM "apps\XM8Apps_Init.sqf";
  uiSleep 1;
  {
    ctrlDelete ((findDisplay 24015) displayCtrl _x);
  } forEach _Ctrls;
};
