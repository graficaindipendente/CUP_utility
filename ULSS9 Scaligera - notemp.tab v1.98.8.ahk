#Requires AutoHotkey v1.1+
#NoEnv
#SingleInstance Force
SendMode Input

global NoteContent := ""
global guiCreated := false

F3::
{
    ; Salva il contenuto corrente della clipboard
    ClipSaved := ClipboardAll
    Clipboard := ""       ; Svuota per nuova copia
    Send ^c
    ClipWait, 0.5
    if (Clipboard = "")
    {
        MsgBox, Testo non selezionato o non copiabile.
        Clipboard := ClipSaved
        return
    }
Clipboard := RegExReplace(Clipboard, "m)^\s+|\s+$", "")  ; Rimuove spazi e TAB all'inizio e alla fine di ogni riga

    ; Aggiunge il nuovo paragrafo
    NoteContent .= (NoteContent ? "`n`n" : "") . Clipboard
    Clipboard := ClipSaved

    if (!guiCreated) {
        ; Crea la GUI
        Gui, +Resize +AlwaysOnTop -MaximizeBox -MinimizeBox
        Gui, Margin, 10, 10
        Gui, Font, s10, Comfortaa
        Gui, Add, Edit, vEditBox w350 h150,
        
        ; Calcola posizione in basso a destra
        SysGet, Mon, MonitorWorkArea
        x := MonRight - 400  ; larghezza + margine
        y := MonBottom - 220 ; altezza + margine

        Gui, Show, x%x% y%y%, note.tab
        guiCreated := true
    }

    GuiControl,, EditBox, %NoteContent%
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
