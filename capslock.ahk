#Requires AutoHotkey v2.0
;Set CapsLock + ` to CapsLock ON/OFF.
SetCapsLockState "AlwaysOff"
CapsLock & `::
{
    SetCapsLockState !GetKeyState("CapsLock", "T")
}

; Set CapsLock key * HYPER
CapsLock::Send "{ESC}" 

CapsLock & n::Send "^{BS}"
CapsLock & m::Send "{BS}"
CapsLock & w::Send "^w"
CapsLock & q::Send "^q"

;Navigation
CapsLock & h::Send "{left}"
CapsLock & j::Send "{down}"
CapsLock & k::Send "{up}"
CapsLock & l::Send "{right}"
                    



;Run Programs
CapsLock & e::Run "C:\Program Files\Google\Chrome\Application\chrome.exe"
CapsLock & o::Run "C:\Users\tu\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Obsidian.lnk"