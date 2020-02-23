#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 2

; Requirements:
; Open Tower Obelisk, center your cursor on the middle of the Perfect Paradox bounty, hit hotkey
; Don't move your mouse. Come back in 18min. Go get more glimmer from Spider and repeat.
; Ensure your screen bounds are maximized. Ensure you are running in only Windowed mode or Fullscreen mode.

; -------------------------------------------------------------------------
; F7 = Farm 8 weapons. See options below to update positioning for desired weapon.
; No matter your selected weapon, still start script from middle of Paradox
; bounty icon as it is the "neutral" position for all scripts.
; -------------------------------------------------------------------------

F7::
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

XPosChange = 100
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

; Redeem 4 bounties

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
Sleep, 1000

; Exit Quest menu and return to neutral position

Send {Esc down}
Sleep, 150
Send {Esc up}
Sleep, 1000
MouseMove, -190, 0, 5, R
Sleep, 1200

; Go to Window II
Send {Right down}
Sleep, 150
Send {Right up}
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
return

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
return

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
return

; -------------------------------------------------------------------------
; F7 = Alternate weapon farming at the top of the file
; -------------------------------------------------------------------------

; -------------------------------------------------------------------------
; F8 = Full 20 loop to buy Trophy Hunters, donate, redeem and dismantle. 
; Primarily for core farming vs. Paradox shard farming.
; -------------------------------------------------------------------------

F8::
Toggle := !Toggle
loop, 20
{

If not Toggle
	break

; Buy up to 4 bounties
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

; Redeem up 4 bounties

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

; Dismantle up to 4 primary weapons

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

; Exit Bounties and go back to neutral position
Send {Esc down}
Sleep, 150
Send {Esc up}
Sleep, 1200
MouseMove, 100, 0, 5, R
Sleep, 1200
MouseMove, 650, -120, 5, R
Sleep, 1200

; Go to Window II
Send {Right down}
Sleep, 150
Send {Right up}
Sleep, 1200

}
return

; -------------------------------------------------------------------------
; F9 = Single loop to buy Trophy Hunters, donate, redeem and dismantle. 
; Maximum for core farming vs. Paradox shard farming.
; -------------------------------------------------------------------------

F9::
Toggle := !Toggle
loop, 12
{

If not Toggle
	break

; Buy up to 4 bounties
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

; Redeem up 4 bounties

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

; Dismantle up to 4 primary weapons

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

; Exit Bounties and go back to neutral position
Send {Esc down}
Sleep, 150
Send {Esc up}
Sleep, 1200
MouseMove, 100, 0, 5, R
Sleep, 1200
MouseMove, 650, -120, 5, R
Sleep, 1200

; Go to Window II
Send {Right down}
Sleep, 150
Send {Right up}
Sleep, 1200

}
return

; -------------------------------------------------------------------------
; F10 = Donate Fractaline only option.
; -------------------------------------------------------------------------

F10::
Toggle := !Toggle
loop, 1000
{
Click d
Sleep, 3100
Click u
Sleep, 1200
}
return

; -------------------------------------------------------------------------
; F11 = Loop to buy materials / glimmer from Spider
; -------------------------------------------------------------------------

F11::
Toggle := !Toggle
loop, 1000
{
Click d
Sleep, 1050
Click u
Sleep, 1200
}
return
