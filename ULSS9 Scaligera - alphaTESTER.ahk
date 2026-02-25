
F11::
#Persistent

SetTimer, MoveToolTip, 100

MoveToolTip:
MouseGetPos, xpos, ypos
ToolTip, CIAO, xpos + 15, ypos + 15
return

Esc::ExitApp