Launch_Media::
WinActivate, ahk_class MicroSIP
WinWaitActive, ahk_class MicroSIP
Sleep, 200
Send { F4 }
Sleep, 200
return