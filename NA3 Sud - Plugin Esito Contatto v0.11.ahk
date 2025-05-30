F12::
{
    FormatTime, dataOra,, dd/MM HH:mm
    SendInput %dataOra% Confermato
    return
}

F11::
{
    FormatTime, dataOra,, dd/MM HH:mm
    SendInput %dataOra% Non Risponde
    return
}

F10::
{
    FormatTime, dataOra,, dd/MM HH:mm
    SendInput %dataOra% Non Risponde con Segreteria
    return
}

F9::
{
    FormatTime, dataOra,, dd/MM HH:mm
    SendInput %dataOra% Segreteria
    return
}

F8::
{
    Gui, PhoneStatus:New, +AlwaysOnTop +ToolWindow, NA3 Sud - Plugin Esito Contatto v0.11
    Gui, Add, Text,, Seleziona un'opzione:

    Gui, Add, Button, gConfermato w250, Confermato
    Gui, Add, Button, gNonRisponde w250, Non Risponde
    Gui, Add, Button, gNonRispondeSegreteria w250, Non Risponde + Segreteria
    Gui, Add, Button, gSegreteria w250, Segreteria
    Gui, Add, Button, gOccupato w250, Occupato
    Gui, Add, Button, gRiattacca w250, Risponde e Riattacca
    Gui, Add, Button, gNonParte w250, Non parte la telefonata

    Gui, Show,, Esito chiamata
    return
}

Confermato:
    InserisciTesto("Confermato")
    return

NonRisponde:
    InserisciTesto("Non Risponde")
    return

NonRispondeSegreteria:
    InserisciTesto("Non Risponde + Segreteria")
    return

Segreteria:
    InserisciTesto("Segreteria")
    return

Occupato:
    InserisciTesto("Occupato")
    return

Riattacca:
    InserisciTesto("Risponde e Riattacca")
    return

NonParte:
    InserisciTesto("Non parte la telefonata")
    return

InserisciTesto(testo) {
    Gui, PhoneStatus:Destroy
    FormatTime, dataOra,, dd/MM HH:mm
    SendInput %dataOra% %testo%
}
