#Requires AutoHotkey v1.1+
; Premere ALT+F1 per aprire la finestra
!F1::
    Gui, Destroy
    Gui, Add, ListBox, vListaPrestazioni gMostraPreparazione w300 h300
    Gui, Add, Edit, vOutputPreparazione w400 h300 ReadOnly Multi

    ; Legge il file TSV (TAB separato)
    FileRead, tsvData, %A_ScriptDir%\preparazioni - Foglio1.tsv
    lines := StrSplit(tsvData, "`n")
    prestazioni := []
    global dizionarioPreparazioni := {}  ; Dizionario globale

    Loop % lines.Length()
    {
        line := Trim(lines[A_Index])
        if (line = "" || InStr(line, "Prestazione")) ; ignora intestazione
            continue

        cols := StrSplit(line, "`t")  ; Separatore TAB
        if (cols.Length() >= 2)
        {
            nome := Trim(cols[1])
            testo := Trim(cols[2])
            prestazioni.Push(nome)
            dizionarioPreparazioni[nome] := testo
        }
    }

    ; Riempie la lista a sinistra
    GuiControl,, ListaPrestazioni, |% prestazioni.Join("`n")

    Gui, Show,, Seleziona una prestazione
return

MostraPreparazione:
    GuiControlGet, selezionato,, ListaPrestazioni
    testo := dizionarioPreparazioni[selezionato]
    GuiControl,, OutputPreparazione, %testo%
return

GuiClose:
    Gui, Destroy
return
