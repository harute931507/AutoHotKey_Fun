#IfWinActive ahk_class LaunchUnrealUWindowsClient
#Persistent

F1::
	MouseGetPos, MouseX, MouseY
	PixelGetColor, color, %MouseX%, %MouseY%, RGB
	MsgBox The color at (%MouseX%, %MouseY%) is %color%
return