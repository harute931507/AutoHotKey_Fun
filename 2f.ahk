#IfWinActive ahk_class LaunchUnrealUWindowsClient

status := "off"

+Esc::
ExitAPP

2::
count := 0
while ( count < 8 )
{
	send 2
	sleep 30
	count++
}
return

3::
loop 4
{
	send 3
	sleep 30
}
return

f::
countf := 0
while ( countf < 6)
{
	send f
	sleep 40
	countf++
}
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