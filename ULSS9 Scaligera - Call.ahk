;■■■ START & CLOSE CALL ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
F9::
{
    startTime := A_TickCount  
    KeyWait, F9
    KeyWait, F5
    elapsed := A_TickCount - startTime  

    if (elapsed < 250) {

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

        SetTitleMatchMode, 2
        WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
        WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    
        if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
            ; Esegue un clic sinistro alle coordinate assolute (schermo)
        MouseClick, left, 321, 585
        }    }
}
return

;■■■■ ANSWER & CLOSE PRELIEVI CALL ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
F12::
{
    startTime := A_TickCount 
    KeyWait, F12 
    elapsed := A_TickCount - startTime
    if (elapsed < 250) {
        SetTitleMatchMode, 2
        WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
        WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome
            if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
        MouseClick, left, 390, 559
            Sleep, 100
            MouseClick, left, 97, 238, 2
            Sleep, 200
            Send, ^c
        } 
    } else {
    SetTitleMatchMode, 2
    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
    MouseClick, left, 326, 557
}
}
}
return

;■■■■ HOLD on PRELIEVI ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Pause::
{
    SetTitleMatchMode, 2
    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome

    if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
        ; Esegue un clic sinistro alle coordinate assolute (schermo)
    MouseClick, left, 382, 280
    } else {
        MsgBox, La finestra non è attiva.
    }
}
return