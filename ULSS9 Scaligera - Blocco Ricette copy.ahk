; Mostra una finestra 100x100 in alto a destra con un'immagine

; Calcolo della posizione in alto a destra
SysGet, MonitorWidth, 0
xPos := MonitorWidth -1800
yPos := 50

Gui, -Caption +AlwaysOnTop +ToolWindow

Gui, Add, Picture, w200 h200, numPad.png
Gui, Show, x%xPos% y%yPos% w220 h220, NumpadPreview
return

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
NumpadAdd::
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
CoordMode, Pixel, Window
PixelGetColor, Colore, 856, 430, RGB
if (Colore = 0xFFFFBD)
{
Send, {Numpad7} 
}
else
{
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
Sleep,  6000
CoordMode, Mouse, Window
CoordMode, Pixel, Window
MouseMove, 518, 350, 0
PixelGetColor, Colore, 518, 350, RGB
if (Colore = 0x08246B)
{
Send, {Numpad8} 
}
}
return



;►►►►►► SECONDA PARTE
Numpad0::
Send, !c
Sleep, 200
MouseMove, 422, 263
Click
Sleep, 200
MouseMove, 334, 345
Click
Sleep, 200
Send, !f
Sleep, 200
Send, !a
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
Sleep, 500
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 100
CoordMode, Pixel, Window
PixelGetColor, Colore, 514, 362, RGB
if (Colore = 0x08246B)
{
Send, {Numpad9} 
Sleep, 200
}
else
{
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 100
}
return

;►►►►►► SECONDA PARTE CON INSERIMENTO DI UNA PRENOTAZIONE
Numpad1::
Send, {Tab}
Sleep, 200
Send, {Down}
Sleep, 200
Send, {Numpad0}
return

;►►►►►► SECONDA PARTE CON INSERIMENTO DI DUE PRENOTAZIONI complete
Numpad2::
Send, {Tab}
Sleep, 200
Send, {Down}
Sleep, 200
Send, {Tab}
Sleep, 200
Send, {Tab}
Sleep, 200
Send, {Down}
Sleep, 200
Send, {Numpad0}
return

Numpad3::
Send, {Tab}
Sleep, 200
Send, {Down}
Sleep, 200
Send, {Tab}
Sleep, 200
Send, {Tab}
Sleep, 200
Send, {Tab}
Sleep, 200
Send, {Down}
Sleep, 200
Send, {Numpad0}
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



;►►►►►► errore diabete
Numpad6::
Send, !i
Sleep, 200
MouseMove, 422, 263
Click
Sleep, 200
MouseMove, 334, 345
Click
Sleep, 200
Send, !f
Sleep, 200
Send, !a
Sleep, 200
Send, !f
Sleep, 200
Send, !c
Sleep, 600
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
Sleep,  6000
CoordMode, Pixel, Window
PixelGetColor, Colore, 518, 350, RGB
if (Colore = 0x08246B)
{
Send, {Numpad8} 
}
return
;►►►►►► SE RICETTA GIA' BLOCCATA
Numpad8::
Send, {Space}
Sleep, 200
Send, !u
Sleep, 200
Send, {Esc}
Sleep, 200
Send, !p
Sleep, 200
Send, {Down}
Sleep, 100
Send, {Enter} 
Sleep, 200
MouseMove, 388, 271
Click
Sleep, 200
MouseMove, 388, 286
Sleep, 300
MouseMove, 388, 271
Click
Sleep, 300
MouseMove, 388, 286
Click
Sleep, 300
Send, !c
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
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 100
return



;►►►►►► FINE ERRORI ►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►


NumpadSub::
Send !{Tab}
return



;►►►►►► PRESELEZIONE (INIZIO) ►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►
NumpadMult::
Send, Esc
Sleep, 200
Send, Esc
Sleep, 200
Send, !p
Sleep, 200
Send, {Down}
Sleep, 100
Send, {Enter} 
Sleep, 200
MouseMove, 388, 271
Click
Sleep, 200
MouseMove, 388, 286
Sleep, 300
MouseMove, 388, 271
Click
Sleep, 300
MouseMove, 388, 286
Click
Sleep, 300
Send, !c
Sleep, 200
return