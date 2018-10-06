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

;無法suspend停止timer ExitAPP可以但也不好按