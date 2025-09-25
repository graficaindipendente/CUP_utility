F9::  ; 
    WinActivate, ahk_class TscShellContainerClass
    WinMove, ahk_class TscShellContainerClass,, 0, 0
    MsgBox, [F11] procedura inserendo NRE`n`n[F12] seconda parte`n`n[Ins] errore medico base`n`n[Pause] errore diabete`n`n[F10] senza inserimento NRE`n`n[CTRL+F12] gia bloccata
return

F11::
Send, ^c            
Sleep, 200
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass  
Sleep, 200
Send, ^v            
Sleep, 200
Send, {Enter}       
Sleep, 600
Send, {Space}       
Sleep, 200
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 200
Send, {Right}
Sleep, 200
Send, ^c
Sleep, 600
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
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
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 100
Send, {Right}
Sleep, 200
Send, {Right}
Sleep, 200
Send, op
Sleep, 200
Send, {Enter} 
Sleep, 200
Send, {Left}
Sleep, 200
Send, {Left}
Sleep, 200
Send, {Left}
Sleep, 200
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

^F12::
Send, {Space}
Sleep, 200
Send, !u
Sleep, 200
Send, {Esc}
Sleep, 200
Send, !r
Sleep, 200
Send, {Down}
Sleep, 100
Send, {Down}
Sleep, 100
Send, {Down}
Sleep, 100
Send, {Enter} 
Sleep, 200
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 100
Send, {Right}
Sleep, 200
Send, {Right}
Sleep, 200
Send, gia
Sleep, 200
Send, {Enter} 
Sleep, 200
Send, {Left}
Sleep, 200
Send, {Left}
Sleep, 200
Send, {Left}
return

F10::
Send, ^c            
Sleep, 200
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, ^v            
Sleep, 200
Send, {Enter}       
Sleep, 600
Send, {Space}       
Sleep, 200
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1 
Sleep, 200
Send, {Right}
Sleep, 200
Send, ^c
Sleep, 600
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass 
return


