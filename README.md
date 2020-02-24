# zonedguy

AutoHotKey files to automate the donation of Destiny 2 Fractaline while redeeming Paradox bounties and dismantling weapons.

Steps:
1) Download https://www.autohotkey.com/
2) Download the combined 1080p script. The new combined script is 1920x1080 specific.

---- Ensure you are running in Fullscreen or Windowed modes only at 1920x1080.

---- Fullscreen Windowed will not work if your native resolution is > 1080p.

---- Ensure your screen bounds are default (maximum)

3) Once downloaded, double click on the script of your choice to activate the hotkeys. AutoHotKey does not have a GUI, it just "launches" and has a green "H" icon in the task bar by your clock.

Requirements for all options:
1) Ensure your primary weapon inventory is empty except your equipped weapon 
2) Open Tower Obelisk, center your cursor on the middle of the Perfect Paradox bounty, hit hotkey of your choice
3) Don't move your mouse until the script it finishes (~12min for the full Paradox loop)
4) Repeat / go get more glimmer from Spider and repeat.

New Hotkey Options:

-----------------

F4 = Full loop of 12 cycles to utilize all 240k glimmer buying/sharding Perfect Paradox guns (MAXIMUM SHARDS)

F5 = 1 full Perfect Paradox cycle (buy up to 7 bounties, donate, redeem, dismantle)

F6 = 1 cycle without dismantling for Paradox god roll farming

-----------------

F7 = Alternate weapon farming. Edit the downloaded file with an editor (i.e. Notepad) and see the first comments to update XPosChange and YPosChange variables.

; Weapon Selections:
1 = Perfect Paradox = (0, 0, False, False, False)
2 = Trophy Hunter = (100, 0, False, True, False)
3 = Pyroclastic Flow = (200, 0, False, False, True)
4 = Steelfeather = (200, 180, False, False, False)
5 = Black Scorpion (300, 180, False, True, False)
6 = Breachlight (400, 180, False, False, False)
7 = Martyrs (200, 360, False, True, False)
8 = Bygones (300, 360, False, False, False)
9 = Line in the Sand (400, 360, False, False, True)
10 = Last Perdition = (200, 0, True, True, False)
11 = Infinite Paths 8 = (300, 0, True, True, False)
12 = Gallant Charge = (400, 0, True, True, False)
13 = Jack King Queen 3 = (200, 180, True, True, False)
14 = Patron of Lost Causes (300, 180, True, False, False)
15 = Traveler's Judgement 5 (400, 180, True, True, False)

-----------------

F8 = Full loop of 20 cycles to utilize 240k glimmer buying/sharding Trophy Hunter guns (MAXIMUM CORES)

F9 = 1 full cycle of core farming.

-----------------

F10 = Donate fractaline ONLY via loop (Toggle on and off with F10)

F11 = loop to buy materials / glimmer from Spider
