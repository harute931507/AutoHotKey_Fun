#IfWinActive ahk_class Notepad

;------
;Declare
;------
status := "off"


;------
;HotKeys
;------
XButton2::
	send lsl
	SetTimer, RT, 80
return

XButton2 UP::
	SetTimer, RT, Off
Return

2::
	setTimer, RT, Off
	send 2
	sleep 1000
	setTimer, RT, On
return

^p::
	Suspend
	Tooltip, %status%, 20, 40
	status := status=="on"?"off":"on"
	SetTimer, RemoveToolTip, 1500
return

+Esc::
	ExitAPP
return

;------
;Labels
;------
RT:
	send r
	send t
return

RemoveToolTip:
	Tooltip
return


;------
;在notepad裡測試用
;按下2 中斷原Timer並停頓後繼續執行