#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Requirements:
; Empty your Kinetic inventory
; Have 21,000+ glimmer
; Have 400+ Fractaline
; Open Tower Obelisk, center your cursor on the middle of the Perfect Paradox bounty, hit F6
; Don't move your mouse. Wait 3min. Go get more glimmer from Spider and repeat.

F6::
loop, 1
{

; Buy 7 Paradox bounties
Click d
Sleep, 1700
Click u
Sleep, 600
Click d
Sleep, 1700
Click u
Sleep, 600
Click d
Sleep, 1700
Click u
Sleep, 600
Click d
Sleep, 1700
Click u
Sleep, 600
Click d
Sleep, 1700
Click u
Sleep, 600
Click d
Sleep, 1700
Click u
Sleep, 600
Click d
Sleep, 1700
Click u
Sleep, 600

; Go to Window I then back to neutral position
MouseMove, 300, -170, 5, R
Sleep, 1200
Click d
Sleep, 150
Click u
Sleep, 300
MouseMove, -300, 170, 5, R
Sleep, 1200

; Donate 400 Fractaline

Click d
Sleep, 3100
Click u
Sleep, 1200
Click d
Sleep, 3100
Click u
Sleep, 1200
Click d
Sleep, 3100
Click u
Sleep, 1200
Click d
Sleep, 3100
Click u
Sleep, 1200

; Open Quest Screen

Send {u down}
Sleep, 150
Send {u up}
Sleep, 250
Send {a down}
Sleep, 150
Send {a up}
Sleep, 250
Send {a down}
Sleep, 150
Send {a up}
Sleep, 250
Send {a down}
Sleep, 150
Send {a up}
Sleep, 600

; Redeem 7 Paradox bounties

MouseMove, -160, 0, 5, R
Sleep, 300
Click d
Sleep, 300
Click u
Sleep, 300
Click d
Sleep, 300
Click u
Sleep, 300
Click d
Sleep, 300
Click u
Sleep, 300
Click d
Sleep, 300
Click u
Sleep, 300
Click d
Sleep, 300
Click u
Sleep, 300
Click d
Sleep, 300
Click u
Sleep, 300
Click d
Sleep, 300
Click u
Sleep, 1000

; Exit Quest menu and return to neutral position

Send {Esc down}
Sleep, 150
Send {Esc up}
Sleep, 1000
MouseMove, 160, 0, 5, R
Sleep, 1200

; Go to Window II then back to neutral position
MouseMove, 410, -170, 5, R
Sleep, 1200
Click d
Sleep, 150
Click u
Sleep, 300
MouseMove, -410, 170, 5, R
Sleep, 1200

}
