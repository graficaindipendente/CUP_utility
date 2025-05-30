F8::
{
    percFile := A_ScriptDir . "\esiti.txt"

    ; Se il file non esiste, crealo con i valori predefiniti
    if !FileExist(percFile)
    {
        FileAppend,
        (
Confermato	Confermato
Non Risponde	Non Risponde
Non Risponde + Segreteria	Non Risponde + Segreteria
Segreteria	Segreteria
Occupato	Occupato
Risponde e Riattacca	Risponde e Riattacca
Non parte la telefonata	Non parte la telefonata
        ), %percFile%
    }

    Gui, PhoneStatus:Destroy
    Gui, PhoneStatus:New, +ToolWindow, NA3 Sud - Plugin Esito Contatto v0.13
    Gui, Font, s10
    Gui, Add, Text,, Seleziona un'opzione:

    ; Leggi righe dal file e crea i bottoni dinamicamente
    Loop, Read, %percFile%
    {
        riga := A_LoopReadLine
        if (Trim(riga) = "") || !InStr(riga, A_Tab)
            continue

        visuale := StrSplit(riga, A_Tab).1
        testo := StrSplit(riga, A_Tab).2

        id := "B" . A_Index
        bottoni_%id% := testo
        Gui, Add, Button, gGestioneClick v%id% w250, %visuale%
    }

    ; Spazio prima dei due bottoni finali
    Gui, Add, Text,,
    Gui, Add, Button, gMostraInfo w120, ℹ️ INFO
    Gui, Add, Button, gApriFile w120 x+10, 📝 Modifica file

    Gui, Show,, Esito chiamata
    return
}

GestioneClick:
{
    Gui, Submit, NoHide
    testoDaInserire := bottoni_%A_GuiControl%
    Gui, PhoneStatus:Destroy

    FormatTime, dataOra,, dd/MM HH:mm
    SendInput %dataOra% %testoDaInserire%
    return
}

MostraInfo:
{
    MsgBox, 64, Istruzioni,
    (
    Questo programma consente di inserire rapidamente esiti chiamate.

    ▸ Premi F8 per aprire il pannello.
    ▸ Ogni bottone corrisponde a una riga del file `esiti.txt`.
    ▸ Il file deve essere nella stessa cartella dello script.
    ▸ Ogni riga è composta da:
       Testo bottone<TAB>Testo da incollare

    Esempio:
       Confermato	Confermato
    )
    return
}

ApriFile:
{
    Run, notepad.exe "%A_ScriptDir%\esiti.txt"
    return
}
