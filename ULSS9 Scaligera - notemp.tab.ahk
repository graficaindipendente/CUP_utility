#Requires AutoHotkey v1.1+
#NoEnv
#SingleInstance Force
SendMode Input

global NoteContent := ""
global guiCreated := false
global caseLower := true

; Variabile per monitorare il tempo di pressione
F3::
    KeyWait, F3, D ; Attende che il tasto F3 venga premuto
    StartTime := A_TickCount ; Salva il tempo in cui il tasto viene premuto
    KeyWait, F3 ; Aspetta che il tasto venga rilasciato

    ; Verifica se il tasto è stato tenuto premuto per almeno 1 secondo
    if (A_TickCount - StartTime >= 1000) {
 




            if (guiCreated) {
                guiCreated := false
                NoteContent := ""
                Gui, Destroy
            }







    }
    return

SaveToDesktop:
{
    GuiControlGet, EditBox
    StringSplit, lines, EditBox, `n
    FirstLine := lines1
    FileSafeName := RegExReplace(FirstLine, "[\\/:*?""<>|]", "")
    if (FileSafeName = "")
        FileSafeName := "vuoto"

    FilePath := A_Desktop . "\" . FileSafeName . ".txt"
    FileAppend, %EditBox%, %FilePath%
    return
}

ToggleCase:
{
    GuiControlGet, EditBox
    if (caseLower) {
        EditBox := Format("{:L}", EditBox)
    } else {
        EditBox := Format("{:U}", EditBox)
    }
    caseLower := !caseLower
    GuiControl,, EditBox, %EditBox%
    return
}

GuiClose:
GuiEscape:
{
    guiCreated := false
    NoteContent := ""
    Gui, Destroy
    return
}

!F3::
NumLock::
{
    if (guiCreated) {
        guiCreated := false
        NoteContent := ""
        Gui, Destroy
    }
    return
}
