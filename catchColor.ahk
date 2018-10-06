#IfWinActive ahk_class LaunchUnrealUWindowsClient
F1::
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%, RGB
MsgBox Position : (%MouseX%, %MouseY%)`nColor : %color%
return
