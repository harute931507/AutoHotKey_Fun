#IfWinActive ahk_class LaunchUnrealUWindowsClient
status = off

XButton2::
status := status=="on"?"off":"on"

If (status = "off")
	SetTimer, F_Control, Off
Else
	SetTimer, F_Control, 0
Return


F_Control:

if ( GetColor(746,952)=="0xEAE3B1" )
{
	sleep 550 
	Loop ,10
	{ 
		send {f down}
		sleep 10 
		send {f up}
	}
}
Return

GetColor(x,y)
{
	PixelGetColor, color, x, y, Fast RGB
	return %color%
}