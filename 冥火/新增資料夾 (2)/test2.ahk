#IfWinActive ahk_class LaunchUnrealUWindowsClient

status := "off"

+Esc::
ExitAPP

XButton1::
#Persistent
SetTimer, RT, 20

return


RT:
send r
return

^p::
Suspend
Tooltip, %status%, 20, 40
status := status=="on"?"off":"on"
SetTimer, RemoveToolTip, 1500
return

RemoveToolTip:
Tooltip
return

;�L�ksuspend����timer ExitAPP�i�H���]���n��