F1::
FormatTime, date, , dd/MM/yyyy HH:mm

InputBox, choice, ULSS9 Scaligera - Outcome.tab, 0   → Ale `n`n🟢 𝗔𝗖𝗖𝗘𝗧𝗧𝗔`n   10 → ACCETTA data e struttura letto note`n   11 → ACCETTA data e struttura letto note c/mail`n   12 → ACCETTA data e struttura letto note c/mail con allegato modulo consenso informato`n   13 → ACCETTA data e struttura letto note c/mail con allegato preparazione`n   14 → ACCETTA data e struttura letto note c/mail e PagoPA`n`n🔴 𝗥𝗜𝗙𝗜𝗨𝗧𝗔`n   20 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍`n   21 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 gia eseguito in LP`n   22 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 troppo lontano`n   23 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 per eccessivo posticipo`n   24 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 troppo presto.`n   25 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 per problematiche lavorative.`n   26 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 per problematiche di trasporto.`n   27 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 poiché fuori sede nella suddetta data.`n   28 → DISDETTA regolare con codice DISD_𝓍𝓍𝓍𝓍𝓍𝓍 non più necessaria.`n`n🟡 𝗡𝗢𝗡 𝗥𝗜𝗦𝗣𝗢𝗡𝗗𝗘`n   30 → NON RISPONDE`n   31 → NON RISPONDE senza segreteria`n   32 → NON RISPONDE non lascio altri messaggi in segreteria`n   33 → NON RISPONDE segreteria`n   34 → RISPONDE MA `n   35 → Utenza STACCATA: non parte la chiamata`n   36 → NON RISPONDE e non sono presenti altri recapiti telefonici`n   37 → NON RAGGIUNGIBILE: utenza spenta o non raggiungibile`n   38 → Utente ha BLOCCATO il nostro recapito cosi da rendere impossibile ogni tentativo`n`n🟣 𝗔𝗟𝗧𝗥𝗢`n   40 → Data e Ora `n   41 → NOTA DA ALTRO OPERATORE: `n   42 → Riporto recapiti da altri gestionali: `n   43 → Non presenti altri recapiti telefonici `n   44 → DISDICO PER MANCATO CONTATTO con numero `n`n   00 → Firma su mail`n   9   → CONTATTO`n`n`n    ,,660,780,600
if ErrorLevel
    return

choice := Trim(choice)
formatted := ""

if (choice = "10" or choice = "1")
    formatted := date . "h ACCETTA data e struttura, letto note"
else if (choice = "11")
    formatted := date . "h ACCETTA data e struttura, letto note, mail"
else if (choice = "12")
    formatted := date . "h ACCETTA data e struttura, letto note, mail con allegato preparazione e modulo consenso informato"
else if (choice = "13")
    formatted := date . "h ACCETTA data e struttura, letto note, mail con allegato prestazione e preparazione"
else if (choice = "14")
    formatted := date . "h ACCETTA data e struttura, letto note, mail con allegato prestazione e PagoPA"

else if (choice = "20" or choice = "2") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDETTA regolare con codice DISD_" . extra
}
else if (choice = "21") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDETTA regolare con codice DISD_" . extra . " già eseguito in LP"
}
else if (choice = "22") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDETTA regolare con codice DISD_" . extra . " troppo lontano"
}
else if (choice = "23") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDETTA regolare con codice DISD_" . extra . " per eccessivo posticipo"
}
else if (choice = "24") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDETTA regolare con codice DISD_" . extra . " troppo presto"
}
else if (choice = "25") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDETTA regolare con codice DISD_" . extra . " per problematiche lavorative"
}
else if (choice = "26") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDETTA regolare con codice DISD_" . extra . " per problematiche di trasporto"
}
else if (choice = "27") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDETTA regolare con codice DISD_" . extra . " poiché fuori sede nella suddetta data"
}
else if (choice = "28") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDETTA regolare con codice DISD_" . extra . " poiché non più necessaria"
}



else if (choice = "30" or choice = "3")
    formatted := date . "h NON RISPONDE"
else if (choice = "31")
    formatted := date . "h NON RISPONDE: senza segreteria"
else if (choice = "32")
    formatted := date . "h NON RISPONDE: non lascio altri messaggi in segreteria"
else if (choice = "33")
    formatted := date . "h NON RISPONDE: segreteria"
else if (choice = "34") {
    InputBox, extra, Motivo, Inserisci il motivo
    if ErrorLevel
        return
    formatted := date . "h Utente RISPONDE MA " . extra
}
else if (choice = "35")
    formatted := date . "h Utenza STACCATA: non parte la chiamata"
else if (choice = "36")
    formatted := date . "h NON RISPONDE e non sono presenti altri recapiti telefonici"
else if (choice = "37")
    formatted := date . "h NON RAGGIUNGIBILE: utenza spenta o non raggiungibile"
else if (choice = "38")
    formatted := date . "h Sembra che l'utente abbia BLOCCATO il nostro recapito così da rendere impossibile ogni tentativo di contatto"
else if (choice = "39")
    formatted := date . "h NON RISPONDE"
else if (choice = "9") {
    InputBox, extra, Utente, Inserisci la persona di riferimento che ha risposto
    if ErrorLevel
        return
    formatted := " (Contatto: " . extra . ")"
}
else if (choice = "4")
    formatted := date . "h "
else if (choice = "40")
    formatted := date . "h "
else if (choice = "41") {
    InputBox, extra, Altro Operatore, Inserisci la nota dell'altro operatore
    if ErrorLevel
        return
formatted := date . "h Nota altro operatore: " . extra
}
else if (choice = "42")
    formatted := "Riporto recapiti da altri gestionali: "
else if (choice = "43")
    formatted := " → NON PRESENTI ALTRI RECAPITI"
else if (choice = "44") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := date . "h DISDICO PER MANCATO CONTATTO con codice DISD_" . extra
}

else if (choice = "0")
    formatted := "Ale "
else if (choice = "00")
    formatted := "`n`n`nAlessandro`n(operatore CUP 238)"

SendInput %formatted%
return
;■■■ START & CLOSE CALL ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
F9::
F5::
{
    startTime := A_TickCount  
    KeyWait, F9
    KeyWait, F5
    elapsed := A_TickCount - startTime  

    if (elapsed < 250) {

        ClipSaved := ClipboardAll
        Clipboard := ""
    
        Send, ^c
        ClipWait, 1
        if (ErrorLevel) {
            Clipboard := ClipSaved
            return
        }
    
        phone := Clipboard
        phone := StrReplace(phone, " ", "") 
    
        WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
        WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome, , 2
        if (ErrorLevel) {

            Clipboard := ClipSaved
            return
        }
    
        Sleep, 10 
        CoordMode, Mouse, Window
    
        MouseClick, left, 115, 618
        Sleep, 10
        Clipboard := phone
        Send, ^v
        Sleep, 10
        MouseClick, left, 388, 614
        Sleep, 10
        Clipboard := ClipSaved
} else {

        SetTitleMatchMode, 2
        WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
        WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    
        if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
            ; Esegue un clic sinistro alle coordinate assolute (schermo)
        MouseClick, left, 321, 585
        }    }
}
return

;■■■■ ANSWER & CLOSE PRELIEVI CALL ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
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

;■■■■ HOLD on PRELIEVI ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Pause::
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
        
                Gui, Add, Button, gSaveToDesktop x10 y+10 w150, Save
                Gui, Add, Button, gToggleCase x+10 yp w150, A ↔ a
        
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
        
