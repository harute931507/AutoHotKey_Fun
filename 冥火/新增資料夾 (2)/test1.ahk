#IfWinActive ahk_class LaunchUnrealUWindowsClient

XButton1::
#Persistent
SetTimer, RT, 20

return


RT:
send r
return

;可執行 但無法終止