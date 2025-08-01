﻿;■■■■ NOTEMP.TAB ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

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

