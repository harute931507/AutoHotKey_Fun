#IfWinActive ahk_class LaunchUnrealUWindowsClient
XButton1:: 
#Persistent
SetTimer, pressN, 0
pressN:
if ( GetColor(996,874)=="0x234988" and GetColor(1166,879)=="0xFFF880" or GetColor(1164,868)=="0x5E4F1E" or GetColor(1170,867)=="0xF4DD74") ; 注：投掷花粉；向日葵；冷却中的向日葵（取色灰色区域右上角，即RB的B后面）；大向日葵（大向日葵靠近发光边缘取色）
{
send 3
}
if ( GetColor(895,874)=="0x898448" ) ; 注：常春藤
{
send 1
}
{
send r 左键设置为R
send t 右键设置为T
}
if ( GetColor(949,872)=="0x8DD492" ) ; 注：荆棘藤
{
send 2
}
if ( GetColor(898,880)=="0x0D0B09" and GetColor(1155,627)=="0xEBE9E0") ; 注：常春藤11秒冷却时取色（取色11的后面的1上）
{
send f
}
if ( GetColor(896,875)=="0xEBEBEB" and GetColor(1155,627)=="0xEBE9E0") ; 注：常春藤8秒冷却时取色（取色数字8上，本人取的8的顶端）
{
send f
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
return