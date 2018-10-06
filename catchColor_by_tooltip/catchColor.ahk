#IfWinActive ahk_class LaunchUnrealUWindowsClient
F1::
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%, RGB
Tooltip, %mouseX%,%mouseY% is %color%
SetTimer, RemoveToolTip, 10000
return

RemoveToolTip:
Tooltip
return