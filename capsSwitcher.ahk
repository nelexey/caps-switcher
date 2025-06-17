#NoEnv
#SingleInstance Ignore
#Persistent
SendMode Input

Menu, Tray, Icon, shell32.dll, 43

SetCapsLockState, AlwaysOff

CapsLock::Send, {Alt down}{Shift down}{Shift up}{Alt up}

+CapsLock::
GetKeyState, CapsState, CapsLock, T
SetCapsLockState, % (CapsState = "D") ? "Off" : "On"
return