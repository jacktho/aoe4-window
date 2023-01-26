#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

targetHeight := A_ScreenHeight-2
targetWidth := targetHeight*1.777777777777778

CenterWindow("ahk_class Plat::Window {DB3DC0D7-BBA3-4d06-BCD8-40CD448B4AE3}", targetWidth, targetHeight)

CenterWindow(WinClass, targetWidth, targetHeight)
{
    WinSet, Style, -0xC00000, %WinClass%
    WinMove, %WinClass%,,(A_ScreenWidth/2)-(targetWidth/2),0,targetWidth,targetHeight
}
