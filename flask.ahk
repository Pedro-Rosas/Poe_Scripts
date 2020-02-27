; Made by Pitajoo.

; Hi here are some comments to guide you if you need.
; Comments can be done with ";" and are not part of the script.
; Any key can be change if you want. 
; Just check this site for sepcial keys - https://autohotkey.com/docs/KeyList.htm


;this line makes the script only work when Path of Exile is the active window
#IfWinActive, ahk_class POEWindowClass


; if you press f2 key then it will send to you to characther selection;
; Quick macro so you can quit game fast to avoid death. Looking at you hardcore players.
F2::
{
	random, delay, 57, 114

    BlockInput On
    SetDefaultMouseSpeed 0
    sendinput {esc}
	Sleep %delay%
    MouseClick, left, 940, 480, 1, 1
    BlockInput Off
    return
}

; Script for Hideout.
; Press f5 key to go to your hideout.
F5::
{
	random, delay, 57, 114
	
    BlockInput On
    Send {Enter}
    Sleep %delay%
    Send /hideout
    Send {Enter}
    BlockInput Off
    return
}

; Scipt for pressing one button instead of 2. :)
; I use when i am searching for items and i need to use copy and past many times.
; Press f6 and it will simulate "Crtl" + "V".
F6::
{
	Send, 	{Enter}  ^v {Enter} 
	return
}


; Flask script for Flasks.
; XButton1 = "Back button for Chrome browser on my mouse".
; If you want to change flasks numbers feel free to do so.
; You can use ";" on start of line so it does not press the flask.
; I commented for flask 1 (Life flask for me usually).
; send = activate flask.
; sleep = breef time in between flask.
XButton1::
{
	;Initialize random delays between 57 and 114 ms (arbitrary values, may be changed)
	random, delay2, 57, 114
	random, delay3, 57, 114
	random, delay4, 57, 114
	random, delay5, 57, 114

	;send, 1 ;simulates the keypress of the 1 button. If you use another button, change it!

	;sleep, %delay2%
	send, 2 ;simulates the keypress of the 2 button. If you use another button, change it!

	sleep, %delay3%
	send, 5 ;simulates the keypress of the 5 button. If you use another button, change it!

	sleep, %delay4%
	send, 6 ;simulates the keypress of the 6 button. If you use another button, change it!

	sleep, %delay5%
	send, 7 ;simulates the keypress of the 7 button. If you use another button, change it!
	
	return
}

; This script is for gem swap.
; use Autoit to check coordinates
; search on Google for AutoIt Window Info Tool or link bellow:
; Link - https://www.autoitscript.com/autoit3/docs/intro/au3spy.htm
; x1 & x3 Coordinates for the gems to be placed in the body.
; x2 Coordinates for the gem swap in inventory.
; speed - variable for mouse speed.
F3::
{
    random, delay1, 400, 600
    random, delay2, 200, 400
    random, delay3, 200, 400
    random, delay4, 200, 400
	random, speed1, 14, 16
	random, speed2, 9, 14
	random, speed3, 9, 14

    BlockInput On
    Send {i}
    Sleep %delay1%
    random, x1, 1606, 1619
    random, y1, 246, 259
    MouseClick, right, x1, y1, , speed1
    Sleep %delay2%
    random, x2, 1862, 1890
    random, y2, 597, 633
    MouseClick, left, x2, y2, , speed2
    Sleep %delay3%
    random, x3, 1606, 1619
    random, y3, 246, 259
    MouseClick, left, x3, y3, , speed3
    Sleep %delay4%
    Send {i}
    BlockInput Off
    return
}

return