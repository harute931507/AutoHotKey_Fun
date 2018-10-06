#IfWinActive ahk_class LaunchUnrealUWindowsClient
F1::
MouseGetPos, mouseX, mouseY
PixelGetColor, color, %mouseX%, %mouseY%, RGB
StringRight color,color,10 ;
tooltip, %mouseX%,%mouseY% is %color%
return
#Persistent 
#SingleInstance
v_Enable=0
XButton2::
{
v_Enable:=!v_Enable
If (v_Enable=0)
SetTimer, Label, Off
Else
SetTimer, Label,
}
Return
Label:
SetTimer, Label, 0
if ( GetColor(1162,634)=="0xF8AD6E" ) ;
{
sleep 2900
send {f down}
sleep 30
send {f up}
send {f down}
sleep 30
send {f up}
send {f down}
sleep 30
send {f up}
send {f down}
sleep 30
send {f up}
send {f down}
sleep 30
send {f up}
sleep 30
send {f down}
sleep 30
send {f up}
send {f down}
sleep 30
send {f up}
}
Return
;
GetColor(x,y)
{
PixelGetColor, color, x, y, RGB
StringRight color,color,10 ;
return color
}
#MaxHotkeysPerInterval 1000
