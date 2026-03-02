#NoEnv
SetBatchLines -1

videoPath := "C:\Users\gonzo\AppData\Local\Playnite\intro.mp4"  ; Modifica questo
appPath := "C:\Users\gonzo\AppData\Local\Playnite\Playnite.FullscreenApp.exe"

; Avvia Playnite in background
Run, %appPath%, , Hide

Sleep, 500

; Avvia VLC a schermo intero (se è il tuo player)
Run, "C:\Program Files\VideoLAN\VLC\vlc.exe" --fullscreen "%videoPath%"

ExitApp