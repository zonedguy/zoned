#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 2

; Requirements:
; Open Tower Obelisk, center your cursor on the middle of the Perfect Paradox bounty, hit hotkey
; Don't move your mouse. Come back in 18min. Go get more glimmer from Spider and repeat.
; Ensure your FOV is set to default. Ensure your screen bounds are maximized. Ensure you are running in only Windowed mode or Fullscreen mode.

; -------------------------------------------------------------------------
; F9 = Farm 8 weapons. See options below to update positioning for desired weapon.
; No matter your selected weapon, still start script from middle of Paradox
; bounty icon as it is the "neutral" position for all scripts.
; -------------------------------------------------------------------------

F9::
Toggle := !Toggle
loop, 2
{

; If you want to change the weapon being farmed, update XPosChange and YPosChange below
; to match the values shown below (X, Y)

; Trophy Hunter = (100, 0)
; Pyroclastic Flow = (200, 0)
; Steelfeather = (200, 180)
; Black Scorpion (300, 180)
; Breachlight (400, 180)
; Martyrs (200, 360)
; Bygones (300, 360)
; Line in the Sand (400, 360)

XPosChange = 0
YPosChange = 0

If not Toggle
	break

MouseMove XPosChange, YPosChange, 5, R
Sleep 600

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
Sleep, 1700(left down)(left up)(right down)(right up)
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

MouseMove -XPosChange, -YPosChange, 5, R
Sleep 600

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If not Toggle
	break
	
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

If not Toggle
	break
	
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

If not Toggle
	break
	
MouseMove, 190, 0, 5, R
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
MouseMove, -190, 0, 5, R
Sleep, 1200
}

; -------------------------------------------------------------------------
; F4 = Full 12 loops to utilize 240k glimmer to buy a full set of bounties, donate 
; fractaline, and shard weapons automatically.
; -------------------------------------------------------------------------

F4::
Toggle := !Toggle
loop, 12
{

If not Toggle
	break
	
; Buy up to 7 bounties
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

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If not Toggle
	break
	
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

If not Toggle
	break
	
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

; Redeem up 7 bounties

If not Toggle
	break
	
MouseMove, 190, 0, 5, R
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
MouseMove, -190, 0, 5, R
Sleep, 1200

; Open inventory, go to primary weapons then first weapon slot

If not Toggle
	break
	
Send {F1 down}
Sleep, 150
Send {F1 up}
Sleep, 800
MouseMove, -650, 120, 5, R
Sleep, 800
MouseMove, -100, 0, 5, R
Sleep, 1000

; Dismantle up to 7 primary weapons

If not Toggle
	break
	
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000

; Exit Bounties and go back to neutral position
Send {Esc down}
Sleep, 150
Send {Esc up}
Sleep, 1200
MouseMove, 100, 0, 5, R
Sleep, 1200
MouseMove, 650, -120, 5, R
Sleep, 1200

; Go to Window II then back to neutral position
Send {Right down}
Sleep, 150
Send {Right up}
Sleep, 1200

}

; -------------------------------------------------------------------------
; F5 = Single loop of full buy / donate / redeem / shard cycle.
; -------------------------------------------------------------------------

F5::
Toggle := !Toggle
loop, 1
{

If not Toggle
	break
	
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

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If not Toggle
	break
	
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

If not Toggle
	break
	
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

If not Toggle
	break
	
MouseMove, 190, 0, 5, R
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
MouseMove, -190, 0, 5, R
Sleep, 1200

; Open inventory, go to primary weapons then first weapon slot

If not Toggle
	break
	
Send {F1 down}
Sleep, 150
Send {F1 up}
Sleep, 800
MouseMove, -650, 120, 5, R
Sleep, 800
MouseMove, -100, 0, 5, R
Sleep, 1000

; Dismantle 7 primary weapons

If not Toggle
	break
	
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000

; Exit Bounties and go back to neutral position
Send {Esc down}
Sleep, 150
Send {Esc up}
Sleep, 1200
MouseMove, 100, 0, 5, R
Sleep, 1200
MouseMove, 650, -120, 5, R
Sleep, 1200

; Go to Window II then back to neutral position
Send {Right down}
Sleep, 150
Send {Right up}
Sleep, 1200
}

; -------------------------------------------------------------------------
; F6 = Single loop, don't dismantle, just buy bounties / donate / redeem bounties
; -------------------------------------------------------------------------

F6::
Toggle := !Toggle
loop, 1
{

If not Toggle
	break
	
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

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If not Toggle
	break
	
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

If not Toggle
	break
	
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

If not Toggle
	break
	
MouseMove, 190, 0, 5, R
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
MouseMove, -190, 0, 5, R
Sleep, 1200
}

; -------------------------------------------------------------------------
; F7 = Donate Fractaline only option.
; -------------------------------------------------------------------------

F7::SetTimer, aLoop, % (on:=!on) ? "80" : "Off"

aLoop:
Click d
Sleep, 3100
Click u
Sleep, 1200
return

; -------------------------------------------------------------------------
; F8 = Single loop to by Trophy Hunters, donate, redeem and dismantle. Primarily
; for core farming vs. shard farming.
; -------------------------------------------------------------------------

F8::
Toggle := !Toggle
loop, 1
{

If not Toggle
	break

; Buy up to 7 bounties
MouseMove, 100, 0, 5, R
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
MouseMove, -100, 0, 5, R
Sleep, 600

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If not Toggle
	break
	
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

If not Toggle
	break
	
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

; Redeem up 7 bounties

If not Toggle
	break
	
MouseMove, 190, 0, 5, R
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
MouseMove, -190, 0, 5, R
Sleep, 1200

; Open inventory, go to primary weapons then first weapon slot

If not Toggle
	break
	
Send {F1 down}
Sleep, 150
Send {F1 up}
Sleep, 800
MouseMove, -650, 120, 5, R
Sleep, 800
MouseMove, -100, 0, 5, R
Sleep, 1000

; Dismantle up to 7 primary weapons

If not Toggle
	break
	
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000
Send {f down}
Sleep, 1050
Send {f up}
Sleep, 1000

; Exit Bounties and go back to neutral position
Send {Esc down}
Sleep, 150
Send {Esc up}
Sleep, 1200
MouseMove, 100, 0, 5, R
Sleep, 1200
MouseMove, 650, -120, 5, R
Sleep, 1200

; Go to Window II then back to neutral position
Send {Right down}
Sleep, 150
Send {Right up}
Sleep, 1200

}

; -------------------------------------------------------------------------
; F10 = test area
; -------------------------------------------------------------------------

F10::
Toggle := !Toggle
loop, 10
{

If not Toggle
	break

; Go to Window I
Send {left down}
Sleep, 150
Send {left up}
Sleep, 1200

; Go to Window I
Send {right down}
Sleep, 150
Send {right up}
Sleep, 1200
}
