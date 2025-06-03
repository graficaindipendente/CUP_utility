#Requires AutoHotkey v1.1+
#NoEnv
#SingleInstance Force
SendMode Input

global NoteContent := ""
global guiCreated := false
global caseLower := true ; Stato per il toggle maiuscolo/minuscolo

F3::
{
    ClipSaved := ClipboardAll
    Clipboard := ""
    Send ^c
    ClipWait, 0.5
    if (Clipboard = "")
    {
        MsgBox, Testo non selezionato o non copiabile.
        Clipboard := ClipSaved
        return
    }
    Clipboard := RegExReplace(Clipboard, "m)^\s+|\s+$", "")

    NoteContent .= (NoteContent ? "`n`n" : "") . Clipboard
    Clipboard := ClipSaved

    if (!guiCreated) {
        Gui, +Resize +AlwaysOnTop -MaximizeBox -MinimizeBox
        Gui, Margin, 10, 10
        Gui, Font, s10, Comfortaa
        Gui, Add, Edit, vEditBox w350 h150

        Gui, Add, Button, gSaveToDesktop x10 y+10 w150, save
        Gui, Add, Button, gToggleCase x+10 yp w150, lowercase

        SysGet, Mon, MonitorWorkArea
        x := MonRight - 400
        y := MonBottom - 250

        Gui, Show, x%x% y%y%, notemp.tab
        guiCreated := true
    }

    GuiControl,, EditBox, %NoteContent%
    return
}

SaveToDesktop:
{
    GuiControlGet, EditBox
    ; Estrai la prima riga
    StringSplit, lines, EditBox, `n
    FirstLine := lines1
    ; Rimuove caratteri non validi per nomi file
    FileSafeName := RegExReplace(FirstLine, "[\\/:*?""<>|]", "")
    ; Se vuota, usa un nome di fallback
    if (FileSafeName = "")
        FileSafeName := "vuoto"

    FilePath := A_Desktop . "\noteTemp_" . FileSafeName . ".txt"
    FileAppend, %EditBox%, %FilePath%
    MsgBox, 64, Salvato, Salvato come:`n%FilePath%
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
