
SetCapsLockState, AlwaysOff


CapsLock::
    shiftState := GetKeyState("Shift")
    ctrlState := GetKeyState("Ctrl")
    altState := GetKeyState("Alt")
    winState := GetKeyState("LWin") || GetKeyState("RWin")
    
    if GetKeyState("CapsLock", "T")
        SetCapsLockState, Off
    
    if (shiftState)
        Send, {Shift Up}
    if (ctrlState)
        Send, {Ctrl Up}
    if (altState)
        Send, {Alt Up}
    if (winState)
        Send, {LWin Up}{RWin Up}
    
    Send, {Alt Down}{Shift Down}
    Sleep, 10
    Send, {Alt Up}{Shift Up}
    
    if (shiftState)
        Send, {Shift Down}
    if (ctrlState)
        Send, {Ctrl Down}
    if (altState)
        Send, {Alt Down}
    if (winState)
        Send, {LWin Down}
    
    return
