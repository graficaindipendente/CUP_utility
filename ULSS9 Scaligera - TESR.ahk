F10::

CoordMode, Mouse, Window
CoordMode, Pixel, Window

; Sposta il mouse
MouseMove, 518, 350, 0

; Legge il colore del pixel
PixelGetColor, Colore, 518, 350, RGB

; Confronto colore
if (Colore = 0x08246B)
{
    MsgBox, già bloccata
}
else
{
    MsgBox, tutto bene
}
return
