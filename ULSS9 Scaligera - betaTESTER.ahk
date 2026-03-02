AppsKey::
{

    Gui, Add, Button, gA1 X10 y10 w200 h30, ADD
    Gui, Add, Button, gA2 X10 y50 w200 h30, Telefono
    Gui, Add, Button, gA3 X10 y90 w200 h30, 0xNRE
    Gui, Add, Button, gA4 X10 y130 w200 h30, Gia' Bloccata
    Gui, Add, Button, gA5 X10 y170 w200 h30, Errore Medico

    Gui, Add, Button, gB1 X220 y10 w200 h30, HIGH CICLO 
    Gui, Add, Button, gB2 X220 y50 w200 h30, Doppia Anagrafica
    Gui, Add, Button, gB3 X220 y90 w200 h30, 1xNRE
    Gui, Add, Button, gB4 X220 y130 w200 h30, Bloccata D1
    Gui, Add, Button, gB5 X220 y170 w200 h30, Errore Diabete

    Gui, Add, Button, gC1 X430 y10 w200 h30, LOW CICLO
    Gui, Add, Button, gC2 X430 y50 w200 h30, C2 null
    Gui, Add, Button, gC3 X430 y90 w200 h30, 2xNRE
    Gui, Add, Button, gC4 X430 y130 w200 h30, Altro
    Gui, Add, Button, gC5 X430 y170 w200 h30, C5 null

    Gui, Show, x600 y700, SELEZIONA FUNZIONE
    return
}

A1:
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 200
Send, {NumpadAdd} 
    return
A2:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad7} 
    return
A3:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad0} 
    return
A4:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad8} 
    return
A5:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad9} 
    return
B1:
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 200
Send, !{NumpadDiv} 
    return
B2:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad4} 
    return
B3:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad1} 
    return
B4:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad5} 
    return
B5:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad6} 
return

C1:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{NumpadDot} 
    return
C2:
return
C3:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad2} 
    return
C4:
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, !{Numpad3} 
    return

C5:
return