F8::
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