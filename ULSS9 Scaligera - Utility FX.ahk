F1::
FormatTime, date, , dd/MM/yyyy HH:mm

InputBox, choice, ULSS9 Scaligera - Outcome.tab, 🟢 𝗔𝗖𝗖𝗘𝗧𝗧𝗔`n   10 → ACCETTA data e struttura letto note`n   11 → ACCETTA data e struttura letto note c/mail`n   12 → ACCETTA data e struttura letto note c/mail con allegato modulo consenso informato`n   13 → ACCETTA data e struttura letto note c/mail con allegato preparazione`n   14 → ACCETTA data e struttura letto note c/mail e PagoPA`n`n🔴 𝗥𝗜𝗙𝗜𝗨𝗧𝗔`n   20 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍`n   21 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 gia eseguito in LP`n   22 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 troppo lontano`n   23 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 per eccessivo posticipo`n   24 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 troppo presto.`n   25 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 per problematiche lavorative.`n   26 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 per problematiche di trasporto.`n   27 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 poiché fuori sede nella suddetta data.`n   28 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 non più necessaria.`n   200 → Villafranca | 2000 → Negrar`n`n🟡 𝗡𝗢𝗡 𝗥𝗜𝗦𝗣𝗢𝗡𝗗𝗘`n   30 → NON RISPONDE`n   31 → NON RISPONDE senza segreteria`n   32 → 𝘯𝘶𝘭𝘭`n   33 → NON RISPONDE segreteria`n   34 → RISPONDE MA `n   35 → Utenza STACCATA: non parte la chiamata`n   36 → 𝘯𝘶𝘭𝘭`n   37 → NON RAGGIUNGIBILE: utenza spenta o non raggiungibile`n   38 → Utente ha BLOCCATO il nostro recapito: dopo mezzo squillo cade la linea`n   39 → Utente NON RISPONDE in entrambe le utenze`n`n🟣 𝗔𝗟𝗧𝗥𝗢`n   40 → Data e Ora `n   41 → NOTA DA ALTRO OPERATORE: `n   42 → Riporto recapiti da altri gestionali: `n   43 → Non presenti altri recapiti telefonici `n   44 → DISDETTO PER MANCATO CONTATTO con numero `n`n   0 → Ale | 00 → Ale in chiamta | 000 → Firma su mail | 9   → CONTATTO`n`n`n    ,,660,800,600
if ErrorLevel
    return

choice := Trim(choice)
formatted := ""

if (choice = "10" or choice = "1")
    formatted := "Ale " . date . "h ACCETTA data e struttura, letto note"
else if (choice = "11")
    formatted := "Ale " . date . "h ACCETTA data e struttura, letto note, mail"
else if (choice = "12")
    formatted := "Ale " . date . "h ACCETTA data e struttura, letto note, mail con allegato preparazione e modulo consenso informato"
else if (choice = "13")
    formatted := "Ale " . date . "h ACCETTA data e struttura, letto note, mail con allegato prestazione e preparazione"
else if (choice = "14")
    formatted := "Ale " . date . "h ACCETTA data e struttura, letto note, mail con allegato prestazione e PagoPA"

else if (choice = "20" or choice = "2") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTA regolare con codice DISD_" . extra
}
else if (choice = "21") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTA regolare con codice DISD_" . extra . " già eseguito in LP"
}
else if (choice = "22") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTA regolare con codice DISD_" . extra . " troppo lontano"
}
else if (choice = "23") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTA regolare con codice DISD_" . extra . " per eccessivo posticipo"
}
else if (choice = "24") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTA regolare con codice DISD_" . extra . " troppo presto"
}
else if (choice = "25") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTA regolare con codice DISD_" . extra . " per problematiche lavorative"
}
else if (choice = "26") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTA regolare con codice DISD_" . extra . " per problematiche di trasporto"
}
else if (choice = "27") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTA regolare con codice DISD_" . extra . " poiché fuori sede nella suddetta data"
}
else if (choice = "28") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTA regolare con codice DISD_" . extra . " poiché non più necessaria"
}

else if (choice = "200") 
    formatted := date . "h DISDETTA regolare"
else if (choice = "2000") 
    formatted := date . "h RIFIUTA appuntamento - Lascio aperta la PIC in CupG"
else if (choice = "210")
    formatted :=  date . "h RIFIUTA appuntamento poiché già eseguito in LP"
else if (choice = "2100")
    formatted :=  date . "h RIFIUTA appuntamento poiché già eseguito in LP - Lascio aperta la PIC in CupG"
else if (choice = "220")
    formatted := date . "h RIFIUTA appuntamento poiché troppo lontano"
else if (choice = "2200")
    formatted := date . "h RIFIUTA appuntamento poiché troppo lontano - Lascio aperta la PIC in CupG"
else if (choice = "230") 
    formatted := date . "h RIFIUTA appuntamento per eccessivo posticipo"
else if (choice = "2300") 
    formatted := date . "h RIFIUTA appuntamento per eccessivo posticipo - Lascio aperta la PIC in CupG"
else if (choice = "2400")
    formatted := date . "h RIFIUTA appuntamento poiché troppo presto"
else if (choice = "2400")
    formatted := date . "h RIFIUTA appuntamento poiché troppo presto - Lascio aperta la PIC in CupG"
else if (choice = "250")
    formatted := date . "h RIFIUTA appuntamento per problematiche lavorative"
else if (choice = "2500")
    formatted := date . "h RIFIUTA appuntamento per problematiche lavorative - Lascio aperta la PIC in CupG"
else if (choice = "260") 
    formatted := date . "h RIFIUTA appuntamento per problematiche di trasporto"
else if (choice = "2600") 
    formatted := date . "h RIFIUTA appuntamento per problematiche di trasporto - Lascio aperta la PIC in CupG"
else if (choice = "270")
    formatted := date . "h RIFIUTA appuntamento poiché fuori sede nella suddetta data"
else if (choice = "2700")
    formatted := date . "h RIFIUTA appuntamento poiché fuori sede nella suddetta data - Lascio aperta la PIC in CupG"
else if (choice = "280")
    formatted :=  date . "h RIFIUTA appuntamento poiché non più necessaria"
else if (choice = "2800")
    formatted :=  date . "h RIFIUTA appuntamento poiché non più necessaria - Lascio aperta la PIC in CupG"

else if (choice = "30" or choice = "3")
    formatted := "Ale " . date . "h NON RISPONDE"
else if (choice = "31")
    formatted := "Ale " . date . "h NON RISPONDE: senza segreteria"
else if (choice = "32")
    formatted := "Ale " . date . "h vuoto"
else if (choice = "33")
    formatted := "Ale " . date . "h NON RISPONDE: segreteria"
else if (choice = "34") {
    InputBox, extra, Motivo, Inserisci il motivo
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RISPONDE MA " . extra
}
else if (choice = "35")
    formatted := "Ale " . date . "h Utenza STACCATA: non parte la chiamata"
else if (choice = "36")
    formatted := "Ale " . date . "h vuoto"
else if (choice = "37")
    formatted := "Ale " . date . "h NON RAGGIUNGIBILE: utenza spenta o non raggiungibile"
else if (choice = "38")
    formatted := "Ale " . date . "h Sembra che l'utente abbia BLOCCATO il nostro recapito: dopo mezzo squillo cade la linea"
else if (choice = "39")
    formatted := "Ale " . date . "h NON RISPONDE in entrambe le utenze"
else if (choice = "9") {
    InputBox, extra, Utente, Inserisci la persona di riferimento che ha risposto
    if ErrorLevel
        return
    formatted := ". Contatto: " . extra 
}
else if (choice = "4")
    formatted := date . "h "
else if (choice = "40")
    formatted := "Ale " . date . "h "
else if (choice = "41") {
    InputBox, extra, Altro Operatore, Inserisci la nota dell'altro operatore
    if ErrorLevel
        return
formatted := "Ale " . date . "h Nota altro operatore: " . extra
}
else if (choice = "42")
    formatted := "Riporto recapiti da altri gestionali: "
else if (choice = "43")
    formatted := " ~ NON PRESENTI ALTRI RECAPITI"
else if (choice = "44") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDETTO PER MANCATO CONTATTO con codice DISD_" . extra
}
else if (choice = "440")
    formatted := "Ale " . date . "h DISDETTO PER MANCATO CONTATTO"

else if (choice = "0")
    formatted := "Ale "
else if (choice = "000")
    formatted := "`n`n`nAlessandro`n(operatore CUP 238)"
else if (choice = "00")
    formatted := "~ 𝘈𝘭𝘦 𝘪𝘯 𝘤𝘩𝘪𝘢𝘮𝘢𝘵𝘢 𝘰𝘳𝘢"

SendInput %formatted%
return


;■■■■ NOTEMP.TAB ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

#Requires AutoHotkey v1.1+
#NoEnv
#SingleInstance Force
SendMode Input

global NoteContent := ""
global guiCreated := false
global caseLower := true

F3::
{
    ClipSaved := ClipboardAll
    Clipboard := ""
    Send ^c
    ClipWait, 0.5
    if (Clipboard = "")
    {
        Clipboard := ClipSaved
        return
    }
    Clipboard := RegExReplace(Clipboard, "m)^\s+|\s+$", "")

    NoteContent .= (NoteContent ? "`n" : "") . Clipboard
    Clipboard := ClipSaved

    if (!guiCreated) {
        Gui, +Resize +AlwaysOnTop -MaximizeBox -MinimizeBox
        Gui, Margin, 10, 10
        Gui, Font, s10, Comfortaa
        Gui, Add, Edit, vEditBox w320 h75

        Gui, Add, Button, gSaveToDesktop x10 y+10 w100, save
        Gui, Add, Button, gToggleCase x+10 yp w100, A ↔ a
        Gui, Add, Button, gRemoveNewLines x+10 yp w100, no line break

        SysGet, Mon, MonitorWorkArea
        x := MonRight - 400
        y := MonBottom - 150

        Gui, Show, x%x% y%y%, ULSS9 Scaligera - noTemp.tab
        guiCreated := true
    }

    GuiControl,, EditBox, %NoteContent%
    return
}

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

RemoveNewLines:
{
    GuiControlGet, EditBox
    EditBox := StrReplace(EditBox, "`n", " ")
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

F5::
    Run, C:\Users\CUPVR\Documents\GitHub\ULSS9_AHK\ULSS9 Scaligera - Blocco Ricette.ahk
return



; Script AHK: Pulsanti 4 e 5 del mouse per Copia e Incolla

XButton1::  ; Pulsante 4 (indietro)
Send ^c     ; Ctrl + C per copiare
return

XButton2::  ; Pulsante 5 (avanti)
Send ^v     ; Ctrl + V per incollare
return
