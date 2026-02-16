$F1::
    ; Registra il momento della pressione
    startTime := A_TickCount
    
    ; Attende il rilascio del tasto (bloccante)
    KeyWait, F1
    
    ; Calcola la durata della pressione in millisecondi
    duration := A_TickCount - startTime
    
    ; Esegue l'azione in base alla durata
    if (duration >= 1000) {
        SendInput, ABC
    } else {
        SendInput, 123
    }
return