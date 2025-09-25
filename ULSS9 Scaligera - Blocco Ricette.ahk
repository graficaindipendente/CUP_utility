F11::
Send, ^c            
Sleep, 200
WinActivate, ahk_pid 14096
WinWaitActive, ahk_pid 14096        
Sleep, 200
Send, ^v            
Sleep, 200
Send, {Enter}       
Sleep, 600
Send, {Space}       
Sleep, 200
WinActivate, ahk_pid 17540
WinWaitActive, ahk_pid 17540 
Sleep, 200
Send, {Right}
Sleep, 200
Send, ^c
Sleep, 600
WinActivate, ahk_pid 14096
WinWaitActive, ahk_pid 14096    
Sleep, 200
Send, ^c
Sleep, 200
Send, {Enter} 
Sleep, 600
MouseMove, 775, 680
Click
Sleep, 200
Send, ^v
Sleep, 200
Send, {Enter} 
return

F12::
Send, !c
Sleep, 200
Send, !f
Sleep, 200
Send, !u
Sleep, 200
Send, !c
Sleep, 200
Send, !f
Sleep, 200
Send, !c
Sleep, 600
Send, !{Tab}
return

Insert::
Send, {Space}
Sleep, 600
Send, !f    
Sleep, 200
Send, !c     
Sleep, 600
Send, !{Tab}
return

Pause::
Send, {Space}
Sleep, 200
Send, !u
Sleep, 200
Send, !c
Sleep, 200
Send, !f
Sleep, 200
Send, !c
Sleep, 600
Send, !{Tab}
return



F10::
Send, ^c            
Sleep, 200
WinActivate, ahk_pid 14096
WinWaitActive, ahk_pid 14096    
Sleep, 200
Send, ^v            
Sleep, 200
Send, {Enter}       
Sleep, 600
Send, {Space}       
Sleep, 200
WinActivate, ahk_pid 17540
WinWaitActive, ahk_pid 17540 
Sleep, 200
Send, {Right}
Sleep, 200
Send, ^c
Sleep, 600
WinActivate, ahk_pid 14096
WinWaitActive, ahk_pid 14096    
return

F9::  ; ^ = Ctrl
    MsgBox, [F10] per procedura fino a NRE`n`n[F11] procedura dopo NRE`n`n[F12] terminare`n`n[Ins] errore medico base`n`n[Pause] errore diabete`n
return
