;■■■■ RISPONDI CHIAMATA PRELIEVI SU MICROSIP ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

$F2::
    ; Registra il momento della pressione
    startTime := A_TickCount
    
    ; Attende il rilascio del tasto (bloccante)
    KeyWait, F2
    
    ; Calcola la durata della pressione in millisecondi
    duration := A_TickCount - startTime
    
    ; Esegue l'azione in base alla durata
    if (duration >= 1000) {

        








; ============================================
; Script AHK: Inserimento numero telefono automatico
; ============================================

; 1. Salva il contenuto degli appunti (numero di telefono)
telefono := clipboard

; 2. Verifica che gli appunti contengano un numero valido
if (telefono = "") {
    MsgBox, 48, Errore, Gli appunti sono vuoti! Copia prima il numero di telefono.
    ExitApp
}

; Rimuovi spazi e caratteri non numerici (opzionale ma consigliato)
telefono := RegExReplace(telefono, "[^0-9+]")

if (StrLen(telefono) < 8) {
    MsgBox, 48, Errore, Il numero negli appunti non sembra valido:`n%telefono%
    ExitApp
}

; 3. Apri la pagina nel browser predefinito
url := "https://ulss9scaligera.prenotami.cloud/mobile/inizio.html?logout_p=1"
Run, %url%

; 4. Attendi il caricamento della pagina (con timeout di sicurezza)
WinWait, ahk_class Chrome_WidgetWin_1  ; Chrome/Edge
; Se usi Firefox sostituisci con: WinWait, ahk_class MozillaWindowClass
; Se usi IE sostituisci con: WinWait, ahk_class IEFrame

; Attendi ulteriori 3 secondi per il caricamento completo della pagina
Sleep, 3000

; 5. Inserisci il numero nel campo id_telefono usando JavaScript injection (metodo più affidabile)
try {
    ; Prova con Edge/Chrome tramite DevTools protocol (richiede estensione o debug attivo)
    ; Metodo fallback universale: invia TAB fino al campo e incolla
    ControlFocus, , A  ; Porta in primo piano la finestra attiva del browser
    
    ; Premi TAB 2 volte (adattare in base alla struttura della pagina)
    ; Normalmente il primo campo è id_telefono in questa pagina
    SendInput, {Tab}
    Sleep, 100
    SendInput, ^a  ; Seleziona eventuale testo esistente
    Sleep, 100
    SendInput, {Del}
    Sleep, 100
    
    ; Incolla il numero dagli appunti
    ClipboardBackup := clipboard
    clipboard := telefono
    Sleep, 100
    SendInput, ^v
    Sleep, 200
    clipboard := ClipboardBackup  ; Ripristina gli appunti originali
    
    ; Feedback visivo
    ToolTip, Numero inserito con successo: %telefono%, 50, 50, 1
    SetTimer, RemoveToolTip, 2000
} catch e {
    MsgBox, 16, Errore, Impossibile inserire il numero:`n%e%
}

RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip

















    } else {
       Send { F2 }
    }
return
