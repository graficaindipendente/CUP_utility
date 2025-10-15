;►►►►►► GUIDA
F9::  ; 
    ; WinActivate, ahk_class TscShellContainerClass
    ; WinMove, ahk_class TscShellContainerClass,, 0, 0
    MsgBox, GUIDA`n`n[F5] apri l'applicativo`n`n[F2] procedura di inserendo NRE`n`n[F4] ciclo intero post NRE`n`n`n[num0] SENZA selezionare prestazioni`n`n[num1] selezionando UNA prestazione`n`n[num2] selezionando DUE prestazioni`n`n[num3] n/d`n`n`n[num4] errore doppia anagrafica`n`n[num5] n/d`n`n[num6] errore diabete`n`n[num7] errore telefono base`n`n[num8] errore ricetta gia bloccata`n`n[num9] errore medico base`n`n`n[numLock] o [F8] uscita emergenza
return
;►►►►►► SOSPENSIONE
; NumLock::
;     Suspend, Toggle
;     if (A_IsSuspended)
;         TrayTip, SOSPESO, SOSPESO!, 1
; return
;►►►►►► USCITA EMERG
F8::ExitApp
NumLock::ExitApp
;►►►►►► INIZIO
F2::
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



;►►►►►► SECONDA PARTE
Numpad0::
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

;►►►►►► SECONDA PARTE CON INSERIMENTO DI UNA PRENOTAZIONE
Numpad1::
Send, {Tab}
Sleep, 200
Send, {Down}
Sleep, 200
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
;►►►►►► SECONDA PARTE CON INSERIMENTO DI DUE PRENOTAZIONI
Numpad2::
Send, {Tab}
Sleep, 200
Send, {Tab}
Sleep, 200
Send, {Tab}
Sleep, 200
Send, {Down}
Sleep, 200
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



;►►►►►► ERRORI ►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►
;►►►►►► ERRORI ►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►
;►►►►►► errore doppio nominativo
Numpad4::
Send, !c
Sleep, 200
Send, {Space}       
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
;►►►►►► errore telefono
Numpad7::
Send, {Space}
Sleep, 200
MouseMove, 785, 430
Click
Sleep, 200
Send, null
Sleep, 200
MouseMove, 825, 356
Click
Sleep, 200
MouseMove, 775, 680
Click
Sleep, 200
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 200
Send, ^c            
Sleep, 200
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 200
Send, ^v
Sleep, 200
Send, {Enter} 
return
;►►►►►► SE RICETTA GIA' BLOCCATA
Numpad8::
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
;►►►►►► ERRORE MEDICO BASE
Numpad9::
Send, {Space}
Sleep, 600
Send, !f    
Sleep, 200
Send, !c     
Sleep, 600
return

;►►►►►► ERRORE DIABETE
Numpad6::
Send, {Space}
Sleep, 200
Send, !u    
Sleep, 200
Send, !c     
Sleep, 200
Send, !f   
Sleep, 200
Send, !c     
Sleep, 200
return

;►►►►►► FINE ERRORI ►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►


F4::
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
Send, ^c            
Sleep, 1000
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