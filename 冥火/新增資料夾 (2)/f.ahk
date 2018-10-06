#IfWinActive ahk_class LaunchUnrealUWindowsClient
F1::
MouseGetPos, mouseX, mouseY
PixelGetColor, color, %mouseX%, %mouseY%, RGB
StringRight color,color,10 ;
tooltip, %mouseX%¡A%mouseY%ÃC¦â¬O:%color%
return
#Persistent 
#SingleInstance
v_Enable=0
XButton1::
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
if ( GetColor(734,969)=="0xF9B47E" ) ;®ß²y
{
sleep 2400
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
