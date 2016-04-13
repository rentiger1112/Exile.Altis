/*
	File: rules.sqf
	For exile edited by Repentz
*/
disableSerialization;
[
	"",
	0,
	0.2,
	10,
	0,
	0,
	8
] spawn BIS_fnc_dynamicText;

createDialog "RscDisplayWelcome";

_display = findDisplay 999999;
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayctrl 2400;
_textSpoiler = _display displayctrl 1101;
_text2 = _display displayCtrl 1102;

_message = "";
_message = _message + "<t align='center' size='8' shadow='0'></t><br />";
_message = _message + "<t align='center' size='2' shadow='0'>Welcome to <a href='http://stealthgamers.net' color='#ff9900'>Stealth Gamers</a>, Arma 3 Altis Exile Custom!</t><br />";
_message = _message + "______________________________________________________________________________________<br /><br />";
_message = _message + "<t align='center' size='1' shadow='0'><a href='ts.stealthgamers.net' color='#ff9900'>TS3</a>: ts.stealthgamers.net<br />";
_message = _message + "Click this link to get to our website: <a href= 'http://stealthgamers.net' color='#ff9900'>Our Website</a><br />";
_message = _message + "Click this link to report a bug: <a href= 'http://stealthgamers.net/index.php?/forums/forum/24-report-server-bugs/' color='#ff9900'>Report a bug</a> This helps us out alot!<br />";
_message = _message + "Click this link for support: <a href= 'http://stealthgamers.net/index.php?/forums/forum/22-help-support/' color='#ff9900'>Support</a> This helps you out alot!</t><br /><br />";
_message = _message + "______________________________________________________________________________________<br /><br />";
_message = _message + "<t align='center' size='1' shadow='0'><t color='#ff9900'>Keybinds:</t><br />";
_message = _message + "<t color='#ff9900'>6</t> : XM8<br />";
_message = _message + "<t color='#ff9900'>5</t> : Lower Sound<br />";
_message = _message + "<t color='#ff9900'>4</t> : Holster and Unholster weapon<br /><br />";
_message = _message + "<t color='#ff9900'>8</t> : Change View Distance<br /><br />";
_message = _message + "______________________________________________________________________________________<br /><br />";
_message = _message + "<t align='center' size='1' shadow='0'><t color='#ff9900'>Rules:</t><br />";
_message = _message + "- You will not exploit, duplicate, abuse, glitch, hack any mechanism on the server.<br /><br />";
_message = _message + "- You will report any exploitation, abuse, hacking, glitches, errors and/or bugs encountered on the server to the appropriate party.<br /><br />";
_message = _message + "- You understand that failure to report any breach in the rules of the server of another player makes you just as responsible as the offender.<br /><br />";
_message = _message + "- No building in military zones, across roads, or close to trader areas<br /><br />";
_message = _message + "- No camping outside safezones, stealing vehicles inside savezones, or harassing people inside safezones<br /><br />";
_message = _message + "- No racism, arguing over sidechat, talking in sidechat, or general harassment</t><br /><br />";
_message = _message + "Sincerely, <a color='#ff9900'>Stealth Gamers</a><br /><br />";


//Fill only the first text
_text1 ctrlSetStructuredText (parseText _message);

//Resize StructuredText component to display the scrollbar if needed
_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlcommit 0;
//Hide second text, spoiler text and button
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;
