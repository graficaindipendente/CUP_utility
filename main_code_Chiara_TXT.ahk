F8::
{
    Gui, PhoneStatus:Destroy
    Gui, PhoneStatus:New, +AlwaysOnTop +ToolWindow, F8 Esito Contatto 
    Gui, Font, s10
    Gui, Add, Text,, Seleziona un'opzione:

    percFile := A_ScriptDir . "\testi.txt"
    if !FileExist(percFile) {
        MsgBox, 48, Errore, Il file "testi.txt" non è stato trovato nella cartella dello script.
        return
    }

    ; Leggi ogni riga e crea bottoni
    Loop, Read, % percFile
    {
        riga := A_LoopReadLine
        if (Trim(riga) = "") || !InStr(riga, A_Tab)
            continue

        visuale := StrSplit(riga, A_Tab)[1]
        testo := StrSplit(riga, A_Tab)[2]

        ; Salva il testo associato al bottone in un oggetto
        id := "B" . A_Index
        bottoni_%id% := testo

        ; Crea il bottone con g-label dinamico
        Gui, Add, Button, gGestioneClick v%id% w250, %visuale%
    }

    Gui, Add, Text,, v0.12
    Gui, Show,, F8 Esito Contatto
    return
}

GestioneClick:
{
    Gui, Submit, NoHide
    ; Recupera il nome del bottone cliccato
    testoDaInserire := bottoni_%A_GuiControl%
    Gui, PhoneStatus:Destroy

    FormatTime, dataOra,, dd/MM/yy HH:mm
    SendInput %dataOra% %testoDaInserire%
    return
}
