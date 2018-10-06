#IfWinActive ahk_class LaunchUnrealUWindowsClient

#MaxHotkeysPerInterval 30

status := "off"


$2::	
	Send {2 down}
	Sleep 20
	Send {2 up}
	Send {2 down}
	Sleep 20
	Send {2 up}
	Send {2 down}
	Sleep 20
	Send {2 up}
	Send {2 down}
	Sleep 20
	Send {2 up}
	Send {2 down}
	Sleep 20
	Send {2 up}
Return


$f::	
	Send {f down}
	Sleep 20
	Send {f up}
	Send {f down}
	Sleep 20
	Send {f up}
	Send {f down}
	Sleep 20
	Send {f up}
	Send {f down}
	Sleep 20
	Send {f up}
	Send {f down}
	Sleep 20
	Send {f up}
Return


^p::
Suspend
	Tooltip, %status%, 20, 40
	status := status=="on"?"off":"on"
	SetTimer, RemoveToolTip, -1200
Return


RemoveToolTip:
	Tooltip
Return


+Esc::
	ExitAPP
Return