
F5::
F9::
{
    startTime := A_TickCount   ; Registra il momento in cui il tasto è stato premuto

    KeyWait, F5                 ; Aspetta che il tasto venga rilasciato

    elapsed := A_TickCount - startTime  ; Calcola il tempo trascorso

    if (elapsed < 1000) {
        ; Azione per pressione breve (meno di 1 secondo)
        ClipSaved := ClipboardAll
        Clipboard := ""
    
        Send, ^c
        ClipWait, 1
        if (ErrorLevel) {
            Clipboard := ClipSaved
            return
        }
    
        phone := Clipboard
        phone := StrReplace(phone, " ", "") 
    
        WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
        WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome, , 2
        if (ErrorLevel) {

            Clipboard := ClipSaved
            return
        }
    
        Sleep, 10 
        CoordMode, Mouse, Window
    
        MouseClick, left, 115, 618
        Sleep, 10
        Clipboard := phone
        Send, ^v
        Sleep, 10
        MouseClick, left, 388, 614
        Sleep, 10
        Clipboard := ClipSaved
    } else {
        ; Azione per pressione lunga (1 secondo o più)
        SetTitleMatchMode, 2
        WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
        WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    
        if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
            ; Esegue un clic sinistro alle coordinate assolute (schermo)
        MouseClick, left, 321, 585
        } else {
        }    }
}
return


