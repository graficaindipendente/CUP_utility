; Mostra una finestra 100x100 in alto a destra con un'immagine

; Calcolo della posizione in alto a destra
SysGet, MonitorWidth, 0
xPos := MonitorWidth -1920
yPos := 10

Gui, -Caption +AlwaysOnTop +ToolWindow

Gui, Add, Picture, w300 h200, numPad.png
Gui, Show, x%xPos% y%yPos% w300 h200, NumpadPreview
return



NumLock::ExitApp

NumpadDot::
MsgBox, NON IMPOSTATO
return


NumpadDiv::
InputBox, volte, Contatore, Quante ricette vuoi bloccare?, , 300, 150
if ErrorLevel
    return

Loop, %volte%
{
    ; === AZIONE DA RIPETERE ===
    Sleep, 1000 
    ToolTip, Esecuzione %A_Index% di %volte% 
Send, {NumpadAdd}   

    Sleep, 1000
}

ToolTip
MsgBox, Fatto! Sono state bloccate %volte% ricette.
return


;►►►►►► INIZIO
NumpadAdd::
Sleep, 200
Clipboard :=
Sleep, 200
Send, ^c            
Sleep, 200
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass  
Sleep, 200
CoordMode, Pixel, Window
PixelGetColor, A1, 190, 475, RGB
PixelGetColor, A2, 389, 673, RGB
if (A1 = 0xFFFFBD && A2 = 0x08246B)
{
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
PixelGetColor, Colore1, 856, 430, RGB
if (Colore1 = 0xFFFFBD)
{
Send, {Numpad7} 
}
else
{
CoordMode, Pixel, Window
PixelGetColor, Colore2, 221, 569, RGB
if (Colore2 = 0x000000)
{
Send, {Numpad4} 
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
CoordMode, Pixel, Window
PixelGetColor, Colore, 518, 350, RGB
if (Colore = 0x08246B)
{
Send, {Numpad8} 
}
}
}

Sleep,  200
CoordMode, Pixel, Window
PixelGetColor, Bianco, 242, 183, RGB
PixelGetColor, C2, 751, 180, RGB
if (Bianco = 0xFFFFFF && C2 = 0xFFFFFF)
{
Send, {Numpad0} 
}

Sleep, 200
CoordMode, Pixel, Window
PixelGetColor, C1, 441, 181, RGB
PixelGetColor, C2, 751, 180, RGB
if (C1 = 0xFFFF63 && C2 = 0xFFFFFF)
{
Send, {Numpad1} 
}
else
{
Sleep, 200
CoordMode, Pixel, Window
PixelGetColor, C4, 751, 180, RGB
if (C4 = 0xFFFF63)
{
Send, {Numpad2} 
}}}
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
CoordMode, Mouse, Window
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
Sleep, 2000
SoundBeep
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
Sleep,  6000
CoordMode, Pixel, Window
PixelGetColor, Colore, 518, 350, RGB
if (Colore = 0x08246B)
{
Send, {Numpad8} 
}

Sleep,  200
CoordMode, Pixel, Window
PixelGetColor, Bianco, 242, 183, RGB
PixelGetColor, C2, 751, 180, RGB
if (Bianco = 0xFFFFFF && C2 = 0xFFFFFF)
{
Send, {Numpad0} 
}

Sleep, 200
CoordMode, Pixel, Window
PixelGetColor, C1, 441, 181, RGB
PixelGetColor, C2, 751, 180, RGB
if (C1 = 0xFFFF63 && C2 = 0xFFFFFF)
{
Send, {Numpad1} 
}
else
{
Sleep, 200
CoordMode, Pixel, Window
PixelGetColor, C4, 751, 180, RGB
if (C4 = 0xFFFF63)
{
Send, {Numpad2} 
}}
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
MouseMove, 518, 350, 0
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
Sleep, 500

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
Sleep, 400

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