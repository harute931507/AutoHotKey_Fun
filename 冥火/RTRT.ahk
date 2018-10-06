#IfWinActive ahk_class LaunchUnrealUWindowsClient
F1::
MouseGetPos, mouseX, mouseY
PixelGetColor, color, %mouseX%, %mouseY%, RGB
StringRight color,color,10 ;
tooltip, %mouseX%,%mouseY% is %color%
return
XButton1::
#Persistent
SetTimer, pressN, 0
pressN:
if ( GetColor(940,900)=="0x1E201A" ) ;
{
send 2
send 2
send 2
}
else 
if ( GetColor(885,902)=="0xA47565" ) ;
{
send 1
}
if ( GetColor(940,900)=="0x1E201A" ) ;
{
send 2
}
if ( GetColor(940,900)=="0x1E201A" and GetColor(1155,635)=="0xBA92AE" ) ;
{
send 2
}
if ( GetColor(940,900)=="0x1E201A" and GetColor(985,899)=="0x3960E3" ) ;
{
send 2
}
if ( GetColor(985,899)=="0x3960E3" and GetColor(945,888)=="0x25363A"and GetColor(1169,899)=="0xFEF9AA"  or GetColor(1167,889)=="0x5C4C22" or GetColor(1173,900)=="0xEFD404" ) ;
{
send 2
send 3
}
{
send 2
}
if ( GetColor(885,899)=="0x101010" and GetColor(1155,635)=="0xBA92AE" ) ;
{
send f
}
if ( GetColor(883,900)=="0xFFFFFF" and GetColor(1155,635)=="0xBA92AE" ) ;
{
send f
}
if ( GetColor(881,899)=="0xB1A69D" and GetColor(1155,635)=="0xBA92AE" ) ;
{
send f
}
{
send r
}
{
send t
}
Return
XButton1 UP::
SetTimer, pressN, Off
Return

GetColor(x,y)
{
PixelGetColor, color, x, y, RGB
StringRight color,color,10 ;
return color
}
