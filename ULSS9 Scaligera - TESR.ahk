F10::
CoordMode, Pixel, Window
PixelGetColor, c, 790, 553, RGB
if (c = 0xFFFF63)
{
        Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
        Send, {Numpad0}
}
else
{
    CoordMode, Pixel, Window
    PixelGetColor, c, 279, 553, RGB
    if (c = 0xFFFF63)
    {
        Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
        Send, {Numpad0}
    }
    else
    {
        CoordMode, Pixel, Window
        PixelGetColor, c, 790, 428, RGB
        if (c = 0xFFFF63)
        {
        Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
        Send, {Numpad0}
        }
        else
        {
            CoordMode, Pixel, Window
            PixelGetColor, c, 279, 428, RGB
            if (c = 0xFFFF63)
            {
        Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
        Send, {Numpad0}
            }
            else
            {
                CoordMode, Pixel, Window
                PixelGetColor, c, 790, 274, RGB
                if (c = 0xFFFF63)
                {
        Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
        Send, {Numpad0}
                }
                else
                {
                    CoordMode, Pixel, Window
                    PixelGetColor, c, 279, 274, RGB
                    if (c = 0xFFFF63)
                    {
        Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
        Send, {Numpad0}
                    }
                    else
                    {
                        CoordMode, Pixel, Window
                        PixelGetColor, c, 790, 146, RGB
                        if (c = 0xFFFF63)
                        {
        Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
                Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
        Send, {Numpad0}
                        }
                        else
                        {
                            CoordMode, Pixel, Window
                            PixelGetColor, c, 279, 146, RGB
                            if (c = 0xFFFF63)
                            {
        Send, {Tab}
        Sleep, 200
        Send, {Down}
        Sleep, 200
        Send, {Tab}
        Sleep, 200
        Send, {Numpad0}
                            }
                        }
                    }
                }
            }
        }
    }
}

; alla fine, comunque
Send, {Numpad0}
return
