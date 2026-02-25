NumLock::ExitApp

NumpadDot::
InputBox, volte, Contatore, Quante ricette vuoi bloccare?, , 300, 150
if ErrorLevel
    return

Loop, %volte%
{
    Sleep, 3000 
ToolTip, Esecuzione Automatica %A_Index% di %volte%
Send, !{NumpadAdd}   
    Sleep, 3000
}
return


NumpadDiv::
InputBox, volte, Contatore, Quante ricette vuoi bloccare?, , 300, 150
if ErrorLevel
    return

Loop, %volte%
{
    Sleep, 1000 
ToolTip, Esecuzione Automatica %A_Index% di %volte%
Send, {NumpadAdd}   
    Sleep, 1000
}
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
MouseMove, 562, 344
Click
Sleep, 50
SendInput, ^a
Sleep, 100
SendInput, {Delete}    
Sleep, 100
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
Send, !{Numpad7} 
}
else
{
CoordMode, Pixel, Window
PixelGetColor, Colore2, 221, 569, RGB
if (Colore2 = 0x000000)
{
Send, !{Numpad4} 

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
result := ""

Gui, Add, Button, x10 y10 w140 h30 gButtonGiaBloccato1, GIA BLOCCATO
Gui, Add, Button, x160 y10 w140 h30 gButtonPrenotato1, PRENOTATO D1
Gui, Add, Button, x310 y10 w140 h30 gButtonAltro1, ALTRO
Gui, Show, w460 h50, LA RICETTA RISULTA BLOCCATA
return

ButtonGiaBloccato1:
result := "GIA BLOCCATO"
Gui, Destroy
Send, !{Numpad8}
return

ButtonPrenotato1:
result := "PRENOTATO D1"
Gui, Destroy
Send, !{Numpad5}
return

ButtonAltro1:
result := "ALTRO"
Gui, Destroy
Send, !{Numpad3}
return
    
}
}
}

Sleep,  200
CoordMode, Pixel, Window
PixelGetColor, Bianco, 242, 183, RGB
PixelGetColor, C2, 751, 180, RGB
if (Bianco = 0xFFFFFF && C2 = 0xFFFFFF)
{
Send, !{Numpad0} 
}

Sleep, 200
CoordMode, Pixel, Window
PixelGetColor, C1, 441, 181, RGB
PixelGetColor, C2, 751, 180, RGB
if (C1 = 0xFFFF63 && C2 = 0xFFFFFF)
{
Send, !{Numpad1} 
}
else
{
Sleep, 200
CoordMode, Pixel, Window
PixelGetColor, C4, 751, 180, RGB
if (C4 = 0xFFFF63)
{
Send, !{Numpad2} 
}}}
return


;►►►►►► SECONDA PARTE
!Numpad0::
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
Send, !{Numpad9} 
Sleep, 200
}
else
{
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 100
}
Sleep, 1500
SoundBeep
return

;►►►►►► SECONDA PARTE CON INSERIMENTO DI UNA PRENOTAZIONE
!Numpad1::
Send, {Tab}
Sleep, 200
Send, {Down}
Sleep, 200
Send, !{Numpad0}
return

;►►►►►► SECONDA PARTE CON INSERIMENTO DI DUE PRENOTAZIONI complete
!Numpad2::
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
Send, !{Numpad0}
return



;►►►►►► ERRORI ►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►►
;►►►►►► errore doppio nominativo
!Numpad4::
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
result := ""

Gui, Add, Button, x10 y10 w140 h30 gButtonGiaBloccato2, GIA BLOCCATO
Gui, Add, Button, x160 y10 w140 h30 gButtonPrenotato2, PRENOTATO D1
Gui, Add, Button, x310 y10 w140 h30 gButtonAltro2, ALTRO
Gui, Show, w460 h50, LA RICETTA RISULTA BLOCCATA
return

ButtonGiaBloccato2:
result := "GIA BLOCCATO"
Gui, Destroy
Send, !{Numpad8}
return

ButtonPrenotato2:
result := "PRENOTATO D1"
Gui, Destroy
Send, !{Numpad5}
return

ButtonAltro2:
result := "ALTRO"
Gui, Destroy
Send, !{Numpad3}
return
}

Sleep,  200
CoordMode, Pixel, Window
PixelGetColor, Bianco, 242, 183, RGB
PixelGetColor, C2, 751, 180, RGB
if (Bianco = 0xFFFFFF && C2 = 0xFFFFFF)
{
Send, !{Numpad0} 
}

Sleep, 200
CoordMode, Pixel, Window
PixelGetColor, C1, 441, 181, RGB
PixelGetColor, C2, 751, 180, RGB
if (C1 = 0xFFFF63 && C2 = 0xFFFFFF)
{
Send, !{Numpad1} 
}
else
{
Sleep, 200
CoordMode, Pixel, Window
PixelGetColor, C4, 751, 180, RGB
if (C4 = 0xFFFF63)
{
Send, !{Numpad2} 
}}
return



;►►►►►► errore diabete
!Numpad6::
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
!Numpad7::
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
result := ""

Gui, Add, Button, x10 y10 w140 h30 gButtonGiaBloccato0, GIA BLOCCATO
Gui, Add, Button, x160 y10 w140 h30 gButtonPrenotato0, PRENOTATO D1
Gui, Add, Button, x310 y10 w140 h30 gButtonAltro0, ALTRO
Gui, Show, w460 h50, LA RICETTA RISULTA BLOCCATA
return

ButtonGiaBloccato0:
result := "GIA BLOCCATO"
Gui, Destroy
Send, !{Numpad8}
return

ButtonPrenotato0:
result := "PRENOTATO D1"
Gui, Destroy
Send, !{Numpad5}
return

ButtonAltro0:
result := "ALTRO"
Gui, Destroy
Send, !{Numpad3}
return
}
return
;►►►►►► SE RICETTA GIA' BLOCCATA
!Numpad8::
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

;►►►►►► SE RICETTA GIA' BLOCCATA
!Numpad5::
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
Send, preno
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

;►►►►►► SE RICETTA GIA' BLOCCATA
!NumPad3::
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
Send, altro
Sleep, 200
Send, {Enter} 
Sleep, 200
Send, {Right}
Sleep, 200
Send, {Right}
Sleep, 200
Send, {Up}
Sleep, 500
InputBox, motivo, , Inserisci motivo?
SendInput, %motivo%
Sleep, 200
Send, {Enter} 
Sleep, 150
Send, {Left}
Sleep, 150
Send, {Left}
Sleep, 150
Send, {Left}
Sleep, 150
Send, {Left}
Sleep, 150
Send, {Left}
Sleep, 150
return

;►►►►►► ERRORE MEDICO BASE
!Numpad9::
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






!NumpadAdd::
Sleep, 800
Clipboard :=
Sleep, 800
Send, ^c            
Sleep, 800
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass  
Sleep, 800
CoordMode, Pixel, Window
PixelGetColor, A1, 190, 475, RGB
PixelGetColor, A2, 389, 673, RGB
if (A1 = 0xFFFFBD && A2 = 0x08246B)
{
MouseMove, 562, 344
Click
Sleep, 300
SendInput, ^a
Sleep, 800
SendInput, {Delete}    
Sleep, 800
Send, ^v            
Sleep, 800
Send, {Enter}       
Sleep, 800
Send, {Space}       
Sleep, 800
WinActivate, ahk_class Chrome_WidgetWin_1
WinWaitActive, ahk_class Chrome_WidgetWin_1
Sleep, 800
Send, {Right}
Sleep, 800
Send, ^c
Sleep, 1200
WinActivate, ahk_class TscShellContainerClass
WinWaitActive, ahk_class TscShellContainerClass
Sleep, 600
CoordMode, Pixel, Window
PixelGetColor, Colore10, 856, 430, RGB
if (Colore10 = 0xFFFFBD)
{
Send, !{Numpad7} 
}
else
{
CoordMode, Pixel, Window
PixelGetColor, Colore20, 221, 569, RGB
if (Colore20 = 0x000000)
{
Send, !{Numpad4} 

}
else
{

Send, ^c
Sleep, 600
Send, {Enter} 
Sleep, 1200
MouseMove, 775, 680
Click
Sleep, 800
Send, ^v
Sleep, 800
Send, {Enter} 
Sleep,  10000
CoordMode, Pixel, Window
PixelGetColor, Colore00, 518, 350, RGB
if (Colore00 = 0x08246B)
{
result := ""

Gui, Add, Button, x10 y10 w140 h30 gButtonGiaBloccato10, GIA BLOCCATO
Gui, Add, Button, x160 y10 w140 h30 gButtonPrenotato10, PRENOTATO D1
Gui, Add, Button, x310 y10 w140 h30 gButtonAltro10, ALTRO
Gui, Show, w460 h50, LA RICETTA RISULTA BLOCCATA
return

ButtonGiaBloccato10:
result := "GIA BLOCCATO"
Gui, Destroy
Send, !{Numpad8}
return

ButtonPrenotato10:
result := "PRENOTATO D1"
Gui, Destroy
Send, !{Numpad5}
return

ButtonAltro10:
result := "ALTRO"
Gui, Destroy
Send, !{Numpad3}
return
    
}
}
}

Sleep,  1000
CoordMode, Pixel, Window
PixelGetColor, Bianco00, 242, 183, RGB
PixelGetColor, C200, 751, 180, RGB
if (Bianco00 = 0xFFFFFF && C200 = 0xFFFFFF)
{
Send, !{Numpad0} 
}

Sleep, 1000
CoordMode, Pixel, Window
PixelGetColor, C100, 441, 181, RGB
PixelGetColor, C200, 751, 180, RGB
if (C100 = 0xFFFF63 && C200 = 0xFFFFFF)
{
Send, !{Numpad1} 
}
else
{
Sleep, 1000
CoordMode, Pixel, Window
PixelGetColor, C400, 751, 180, RGB
if (C400 = 0xFFFF63)
{
Send, !{Numpad2} 
}}}
return