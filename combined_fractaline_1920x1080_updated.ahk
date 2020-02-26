#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 2

; Requirements:
; Open Tower Obelisk, center your cursor on the middle of the Perfect Paradox bounty, hit hotkey
; Ensure your Primary weapon inventory is empty.
; Don't move your mouse. Come back in 18min. Go get more glimmer from Spider and repeat.
; Ensure your screen bounds are maximized. Ensure you are running in only Windowed mode or Fullscreen mode.

; -------------------------------------------------------------------------
; F7 = Farm 8 weapons. See options below to update positioning for desired weapon.
; No matter your selected weapon, still start script from middle of Paradox
; bounty icon as it is the "neutral" position for all scripts.
; -------------------------------------------------------------------------

F7::
Toggle := !Toggle
; Input request to set weapon variable listed below

InputBox, WeaponFarm, Weapon Select, # weapon to farm?, , 400, 200, , , , 120, 1

XPosChange = 0
YPosChange = 0
Moveto2ndWindow = False
IsEnergy = False
IsHeavy = False

; Weapon Selections:
; 1 = Perfect Paradox = (0, 0, False, False, False)
; 2 = Trophy Hunter = (100, 0, False, True, False)
; 3 = Pyroclastic Flow = (200, 0, False, False, True)
; 4 = Steelfeather = (200, 180, False, False, False)
; 5 = Black Scorpion (300, 180, False, True, False)
; 6 = Breachlight (400, 180, False, False, False)
; 7 = Martyrs (200, 360, False, True, False)
; 8 = Bygones (300, 360, False, False, False)
; 9 = Line in the Sand (400, 360, False, False, True)
; 10 = Last Perdition = (200, 0, True, True, False)
; 11 = Infinite Paths 8 = (300, 0, True, True, False)
; 12 = Gallant Charge = (400, 0, True, True, False)
; 13 = Jack King Queen 3 = (200, 180, True, True, False)
; 14 = Patron of Lost Causes (300, 180, True, False, False)
; 15 = Traveler's Judgement 5 (400, 180, True, True, False)

if (WeaponFarm = 2)
{
	; Trophy Hunter
	XPosChange = 100
	YPosChange = 0
	Moveto2ndWindow = False
}
else if (WeaponFarm = 3)
{
	; Pyroclastic Flow
	XPosChange = 200
	YPosChange = 0
	Moveto2ndWindow = False
}
else if (WeaponFarm = 4)
{
	; Steelfeather
	XPosChange = 200
	YPosChange = 180
	Moveto2ndWindow = False
}
else if (WeaponFarm = 5)
{
	; Black Scorpion
	XPosChange = 300
	YPosChange = 180
	Moveto2ndWindow = False
}
else if (WeaponFarm = 6)
{
	; Breachlight
	XPosChange = 400
	YPosChange = 180
	Moveto2ndWindow = False
}
else if (WeaponFarm = 7)
{
	; Martyr's Retribution
	XPosChange = 200
	YPosChange = 360
	Moveto2ndWindow = False
}
else if (WeaponFarm = 8)
{
	; Bygones
	XPosChange = 300
	YPosChange = 360
	Moveto2ndWindow = False
}
else if (WeaponFarm = 9)
{
	; Line in the Sand
	XPosChange = 400
	YPosChange = 360
	Moveto2ndWindow = False
}
else if (WeaponFarm = 10)
{
	; Last Perdition
	XPosChange = 200
	YPosChange = 0
	Moveto2ndWindow = True
}
else if (WeaponFarm = 11)
{
	; Infinite Paths 8
	XPosChange = 300
	YPosChange = 0
	Moveto2ndWindow = True
}
else if (WeaponFarm = 12)
{
	; Gallant Charge 
	XPosChange = 400
	YPosChange = 0
	Moveto2ndWindow = True
}
else if (WeaponFarm = 13)
{
	; Jack Queen King 3
	XPosChange = 200
	YPosChange = 180
	Moveto2ndWindow = True
}
else if (WeaponFarm = 14)
{
	; Patron of Lost Causes
	XPosChange = 300
	YPosChange = 180
	Moveto2ndWindow = True
}
else if (WeaponFarm = 15)
{
	; Traveler's Judgement 5
	XPosChange = 400
	YPosChange = 180
	Moveto2ndWindow = True
}

loop, 2
{

If Moveto2ndWindow = True
{
	Send {Right down}
	Sleep, 150
	Send {Right up}
	Sleep, 150
}

If !Toggle
	break

MouseMove XPosChange, YPosChange, 5, R
Sleep 800

; Buy 4 weapon bounties
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850

MouseMove -XPosChange, -YPosChange, 5, R
Sleep 600

If Moveto2ndWindow = True
{
	Send {Left down}
	Sleep, 150
	Send {Left up}
	Sleep, 150
}

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If !Toggle
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

If !Toggle
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
Sleep, 850

; Redeem 4 bounties

If !Toggle
	break
	
MouseMove, 190, 0, 5, R
Sleep, 800
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

If !Toggle
	break
	
; Buy up to 7 bounties
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If !Toggle
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

If !Toggle
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
Sleep, 850

; Redeem up 7 bounties

If !Toggle
	break
	
MouseMove, 190, 0, 5, R
Sleep, 800
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

If !Toggle
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

If !Toggle
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

If !Toggle
	break
	
; Buy 7 Paradox bounties
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If !Toggle
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

If !Toggle
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
Sleep, 850

; Redeem 7 Paradox bounties

If !Toggle
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

If !Toggle
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

If !Toggle
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

If !Toggle
	break
	
; Buy 7 Paradox bounties
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If !Toggle
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

If !Toggle
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
Sleep, 850

; Redeem 7 Paradox bounties

If !Toggle
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

If !Toggle
	break

; Buy up to 4 bounties
MouseMove, 100, 0, 5, R
Sleep, 800
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
MouseMove, -100, 0, 5, R
Sleep, 850

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If !Toggle
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

If !Toggle
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
Sleep, 850

; Redeem up 4 bounties

If !Toggle
	break
	
MouseMove, 190, 0, 5, R
Sleep, 800
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

If !Toggle
	break
	
Send {F1 down}
Sleep, 150
Send {F1 up}
Sleep, 800
MouseMove, -650, 300, 5, R
Sleep, 800
MouseMove, -100, 0, 5, R
Sleep, 1000

; Dismantle up to 4 primary weapons

If !Toggle
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
MouseMove, 650, -300, 5, R
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

If !Toggle
	break

; Buy up to 4 bounties
MouseMove, 100, 0, 5, R
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
Click d
Sleep, 1700
Click u
Sleep, 850
MouseMove, -100, 0, 5, R
Sleep, 850

; Go to Window I
Send {Left down}
Sleep, 150
Send {Left up}
Sleep, 1200

; Donate 400 Fractaline

If !Toggle
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

If !Toggle
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
Sleep, 850

; Redeem up 4 bounties

If !Toggle
	break
	
MouseMove, 190, 0, 5, R
Sleep, 800
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

If !Toggle
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

If !Toggle
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

If !Toggle
	break
	
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

If !Toggle
	break
	
Click d
Sleep, 1050
Click u
Sleep, 200
}
return

; -------------------------------------------------------------------------
; Left Ctl + Esc = Kill AHK script. Will need to be reactivated.
; -------------------------------------------------------------------------

LCtrl & ESC::ExitApp
