NumLock::ExitApp
F10::
InputBox, volte, Contatore, Quante volte deve partire lo script?, , 300, 150
if ErrorLevel
    ExitApp

Loop, %volte%
{
    ; === AZIONE DA RIPETERE ===
Send, {NumpadAdd}   
    ToolTip, Esecuzione %A_Index% di %volte%
    Sleep, 20000
}

ToolTip
MsgBox, Fatto! Script eseguito %volte% volte.
ExitApp

