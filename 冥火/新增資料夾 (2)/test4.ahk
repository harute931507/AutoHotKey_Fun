#IfWinActive ahk_class LaunchUnrealUWindowsClient

;------
;Declare
;------
status := "off"
count1 := 0
count2 := 0
count3 := 0
countf := 0

;------
;HotKeys
;------
XButton2::
	SetTimer, RTR, 80
	setTimer, RTT, 80
return

XButton2 UP::
	SetTimer, RTR, Off
	setTimer, RTT, Off
Return

2::
	count2 := 0
	setTimer, RTT, Off
	setTimer, XButton2, -10
	while ( count2 < 6 )
	{
		send 222
		sleep 15
		count2++
	}
return

f::
	countf := 0
	setTimer, RTT, Off
	setTimer, XButton2, -10
	while ( countf < 6 )
	{
		send fff
		sleep 15
		countf++
	}
return

3::
	count3 := 0
	while ( count3 < 6 )
	{
		send 333
		sleep 15
		count3++
	}
return

1::
	count1 := 0
	while ( count1 < 6 )
	{
		send 1
		sleep 15
		count1++
	}
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
RTR:
	send r
return

RTT:
	send t
return

RemoveToolTip:
	Tooltip
return


;------
;測試用
;按下2f 中斷原Timer並停頓後繼續執行