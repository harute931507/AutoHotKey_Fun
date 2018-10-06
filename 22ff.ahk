#IfWinActive ahk_class LaunchUnrealUWindowsClient

status := "off"
count := 0

+Esc::
ExitAPP


2::
send {2 down}
while ( count < 4 )
{	
	if(mod(count,2) = 1)
	{
		send {2 down}
		sleep 40
	}
	send 2
	sleep 5
	send 2
	sleep 5
	send 2
	sleep 5
	send 2
	count++
}
count = 0
return

f::
send {f down}
Random, timeF, 40,90
loop 3
{
	sleep timeF
	send f
	sleep 10
	send f
	sleep 10
	send {f down}
}
send f
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