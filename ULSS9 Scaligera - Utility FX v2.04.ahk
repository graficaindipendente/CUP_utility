!F1::
FormatTime, date, , dd/MM/yyyy HH:mm

InputBox, choice, ULSS9 Scaligera - Outcome.tab v2.02, ♥ 𝗔𝗖𝗖𝗘𝗧𝗧𝗔`n   𝟭0 → Utente ACCETTA data e struttura letto note`n   𝟭1 → Utente ACCETTA data e struttura letto note c/mail`n   𝟭2 → Utente ACCETTA data e struttura letto note c/mail con allegato modulo consenso informato`n   𝟭3 → Utente ACCETTA data e struttura letto note c/mail con allegato preparazione`n   𝟭4 → Utente ACCETTA data e struttura letto note c/mail e PagoPA`n`n♦ 𝗥𝗜𝗙𝗜𝗨𝗧𝗔`n   𝟮0 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍`n   𝟮1 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 gia eseguito in LP`n   𝟮2 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 troppo lontano.`n   𝟮3 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 troppo presto.`n   𝟮4 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 per problematiche lavorative.`n   𝟮5 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 per problematiche di trasporto.`n   𝟮6 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 poiché fuori sede nella suddetta data.`n   𝟮7 → Utente RIFIUTA con disdetta regolare 𝓍𝓍𝓍𝓍𝓍𝓍 presente prenotazione più favorevole`n`n♣ 𝗡𝗢𝗡 𝗥𝗜𝗦𝗣𝗢𝗡𝗗𝗘`n   𝟯0 → Utente NON RISPONDE`n   𝟯1 → Utente NON RISPONDE lasciato messaggio in segreteria`n   𝟯2 → Utente NON RISPONDE non lascio altri messaggi in segreteria`n   𝟯3 → Utente NON RISPONDE senza segreteria`n   𝟯4 → Utente RISPONDE MA `n   𝟯5 → Utenza STACCATA: non parte la chiamata`n   𝟯6 → Utente NON RISPONDE e non sono presenti altri recapiti telefonici`n   𝟯7 → Utente NON RAGGIUNGIBILE: utenza spenta o non raggiungibile`n   𝟯8 → Utente ha BLOCCATO il nostro recapito cosi da rendere impossibile ogni tentativo`n`n♠ 𝗔𝗟𝗧𝗥𝗢`n   𝟰0 → Data e Ora `n   𝟰1 → NOTA DA ALTRO OPERATORE: `n   𝟰2 → Riporto recapiti da altri gestionali: `n   𝟰3 → Non presenti altri recapiti telefonici `n   𝟰4 → DISDICO PER MANCATO CONTATTO con numero `n   𝟵0  → AVVISATO,,660,690,600
if ErrorLevel
    return

choice := Trim(choice)
formatted := ""

if (choice = "10" or choice = "1")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura, letto note"
else if (choice = "11")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura, letto note c/mail"
else if (choice = "12")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura, letto note c/mail con allegato modulo consenso informato"
else if (choice = "13")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura, letto note c/mail con allegato preparazione"
else if (choice = "14")
    formatted := "Ale " . date . "h Utente ACCETTA data e struttura, letto note c/mail e PagoPA"

else if (choice = "20" or choice = "2") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare " . extra
}
else if (choice = "21") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare " . extra . " già eseguito in LP"
}
else if (choice = "22") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare " . extra . " troppo lontano"
}
else if (choice = "23") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare " . extra . " troppo presto"
}
else if (choice = "24") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare " . extra . " per problematiche lavorative"
}
else if (choice = "25") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare " . extra . " per problematiche di trasporto"
}
else if (choice = "26") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare " . extra . " poiché fuori sede nella suddetta data"
}
else if (choice = "27") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Utente RIFIUTA con disdetta regolare " . extra . " presente prenotazione più favorevole"
}



else if (choice = "30" or choice = "3")
    formatted := "Ale " . date . "h Utente NON RISPONDE"
else if (choice = "31")
    formatted := "Ale " . date . "h Utente NON RISPONDE: lasciato messaggio in segreteria"
else if (choice = "32")
    formatted := "Ale " . date . "h Utente NON RISPONDE: non lascio altri messaggi in segreteria"
else if (choice = "33")
    formatted := "Ale " . date . "h Utente NON RISPONDE: senza segreteria"
else if (choice = "34")
    formatted := "Ale " . date . "h Utente RISPONDE MA "
else if (choice = "35")
    formatted := "Ale " . date . "h Utenza STACCATA: non parte la chiamata"
else if (choice = "36")
    formatted := "Ale " . date . "h Utente NON RISPONDE e non sono presenti altri recapiti telefonici"
else if (choice = "37")
    formatted := "Ale " . date . "h Utente NON RAGGIUNGIBILE: utenza spenta o non raggiungibile"
else if (choice = "38")
    formatted := "Ale " . date . "h Utente ha BLOCCATO il nostro recapito così da rendere impossibile ogni tentativo"
else if (choice = "39")
    formatted := "Ale " . date . "h Utente NON RISPONDE"
	else if (choice = "4")
    formatted := date . "h "
else if (choice = "40")
    formatted :=  "Ale " . date . "h "
else if (choice = "41") {
    InputBox, extra, Altro Operatore, Inserisci la nota dell'altro operatore
    if ErrorLevel
        return
    formatted := "Ale " . date . "h Nota altro operatore: " . extra
}
else if (choice = "42")
    formatted := " Riporto recapiti da altri gestionali: "
else if (choice = "43")
    formatted := " - NON PRESENTI ALTRI RECAPITI TELEFONICI"
else if (choice = "44") {
    InputBox, extra, Codice Disdetta, Inserisci il numero della disdetta
    if ErrorLevel
        return
    formatted := "Ale " . date . "h DISDICO PER MANCATO CONTATTO con numero " . extra
}

	else if (choice = "9")
    formatted := "AVVISATO"
else {
    MsgBox, 48, Errore 404, Codice non valido!
    return
}

; Invia il testo simulando battitura, senza usare gli appunti
SendInput %formatted%
return
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
!F9::
{
    ClipSaved := ClipboardAll
    Clipboard := ""

    Send, ^c
    ClipWait, 1
    if (ErrorLevel) {
        MsgBox, Errore: Nessun testo selezionato o copia fallita.
        Clipboard := ClipSaved
        return
    }

    phone := Clipboard
    phone := StrReplace(phone, " ", "") 

    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome, , 2
    if (ErrorLevel) {
        MsgBox, Errore: Finestra Chrome non trovata.
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
}
return
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
!F10::
{
    SetTitleMatchMode, 2
    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome

    if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
        ; Esegue un clic sinistro alle coordinate assolute (schermo)
    MouseClick, left, 321, 585
    } else {
        MsgBox, La finestra non è attiva.
    }
}
return
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 !F11::
{
    ; Attiva la finestra specifica
    SetTitleMatchMode, 2
    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome

    if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
        ; Esegue un clic sinistro alle coordinate assolute (schermo)
    MouseClick, left, 390, 559

        ; Doppio clic alle coordinate 78,246
        Sleep, 150
        MouseClick, left, 97, 238, 2
		
		

        ; Attendere brevemente e copiare la selezione
        Sleep, 100
        Send, ^c
    } else {
        MsgBox, La finestra non è attiva.
    }
}
return
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
!F12::
{
    ; Attiva la finestra specifica
    SetTitleMatchMode, 2
    WinActivate, Intelligenza artificiale applicata - Innlab AI - Google Chrome
    WinWaitActive, Intelligenza artificiale applicata - Innlab AI - Google Chrome

    if WinActive("Intelligenza artificiale applicata - Innlab AI - Google Chrome") {
        ; Esegue un clic sinistro alle coordinate assolute (schermo)
    MouseClick, left, 326, 557
    } else {
        MsgBox, La finestra non è attiva.
    }
}
return
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
        ; NOTEMP.TAB
        #Requires AutoHotkey v1.1+
        #NoEnv
        #SingleInstance Force
        SendMode Input
        
        global NoteContent := ""
        global guiCreated := false
        global caseLower := true
        
       !F3::
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
        
                Gui, Show, x%x% y%y%, ULSS9 Scaligera - noTemp.tab v2.02
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
        
            FilePath := A_Desktop . "\note_" . FileSafeName . ".txt"
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
        
        ^F3::  ; Alt + F3 per chiudere la finestra
        {
            if (guiCreated) {
                guiCreated := false
                NoteContent := ""
                Gui, Destroy
            }
            return
        }
        
        !F8::
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