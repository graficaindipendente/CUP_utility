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