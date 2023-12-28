#Requires AutoHotkey v2.0
;=====================================================================o
;                     Hyper CapsLock Initializer                     ;|
;---------------------------------o-----------------------------------o
SetCapsLockState "AlwaysOff"                                         ;|
;---------------------------------------------------------------------o
;                    CapsLock + ` | {CapsLock}                       ;|
;---------------------------------------------------------------------o
CapsLock & `::                                                       ;|   
{                                                                    ;|   
    SetCapsLockState !GetKeyState("CapsLock", "T")                   ;|
}                                                                    ;|   
;---------------------------------------------------------------------o
;                     CapsLock    | {ESC}                            ;|
;---------------------------------------------------------------------o
CapsLock::Send "{ESC}"                                               ;|
;---------------------------------------------------------------------o
;                 Deactivate Start Menu From Left Win                ;|
~LWin::Send "{Blind}{vkE8}"                                          ;|
;---------------------------------o-----------------------------------o

;=====================================================================o
;                             Hyper Space - not working              ;|
;---------------------------------o-----------------------------------o
;                CapsLock + Space | Language Switch                  ;|
;          CapsLock + Win + Space | Emoji                            ;|
;---------------------------------o-----------------------------------o
CapsLock & Space::Send "#{Space}"                                    ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                            Hyper Navigator                         ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + h |  Left                          ;|
;                      CapsLock + l |  Right                         ;|
;                      CapsLock + k |  Up                            ;|
;                      CapsLock + j |  Down                          ;|
;               CapsLock + Win + h |  Shift + Left (Select)          ;|
;               CapsLock + Win + l |  Shift + Right (Select)         ;|
;               CapsLock + Win + j |  Shift + Down (Select)          ;|
;               CapsLock + Win + k |  Shift + Up (Select)            ;|
;                CapsLock + Alt + j |  Alt + Down                    ;|
;                CapsLock + Alt + k |  Alt + Up                      ;|
;                      CapsLock + i |  Home                          ;|
;                      CapsLock + o |  End                           ;|
;                      CapsLock + u |  Page Up                       ;|
;                      CapsLock + p |  Page Down                     ;|
;               CapsLock + Win + i |  Shift + Home (Select)          ;|
;               CapsLock + Win + o |  Shift + End (Select)           ;|
;               CapsLock + Win + u |  Shift + PageUp (Select)        ;|
;               CapsLock + Win + p |  Shift + PageDown (Select)      ;|
;-----------------------------------o---------------------------------o
CapsLock & h::
{
    if GetKeyState("LWin")
        Send "+{left}"
    else 
        Send "{left}"
}

CapsLock & j::
{   if GetKeyState("LWin")
        Send "+{down}"
    else if GetKeyState("alt")                                    
        Send "!{down}"
    else 
        Send "{down}"
}

CapsLock & k::
{
    if GetKeyState("LWin")
        Send "+{up}"
    else if GetKeyState("alt")                                    
        Send "!{up}"
    else 
        Send "{up}"
}

CapsLock & l::
{
    if GetKeyState("LWin")
        Send "+{right}"
    else 
        Send "{right}"
}

CapsLock & i::
{
    if GetKeyState("LWin")                                        
        Send "+{Home}"
    else 
        Send "{Home}"
} 
CapsLock & o::
{
    if GetKeyState("LWin")                                        
        Send "+{End}"
    else 
        Send "{End}"
} 

CapsLock & u::
{
    if GetKeyState("LWin")                                        
        Send "+{PgUp}"
    else 
        Send "{PgUp}"
}
CapsLock & p::
{
    if GetKeyState("LWin")                                        
        Send "+{PgDn}"
    else 
        Send "{PgDn}"
}
;-----------------------------------o---------------------------------o

;=====================================================================o
;                              Hyper Deletion                        ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + n  |  Win +BackSpace                ;|
;                     CapsLock + m  |  BackSpace                     ;|
;                     CapsLock + ,  |  Delete a letter               ;|
;                     CapsLock + .  |  Delete  a Word                ;|
;-----------------------------------o---------------------------------o
CapsLock & n::Send "^{BS}"
CapsLock & m::Send "{BS}"
CapsLock & ,::Send "{Del}"
CapsLock & .::Send "^{Del}"
;-----------------------------------o---------------------------------o




;=====================================================================o
;                        Hyper Window Controller                     ;|  
;-----------------------------------o---------------------------------o
;                     CapsLock + s  |  Win + Tab (Move Right Tab)    ;|
;               CapsLock + Win + s  |  Ctl+Shift+Tab (Move Left Tab) ;|
;                     CapsLock + w  |  Win + W   (Close Tab)         ;|
;                     CapsLock + q  |  Win+Alt+F4   (Close App)      ;|
;-----------------------------------o---------------------------------o
CapsLock & s::
{
    if GetKeyState("LWin")
        Send "^+{Tab}"
    else
        Send "^{Tab}"
}
CapsLock & w::Send "^w"
CapsLock & q::Send "!{F4}"    
;-----------------------------------o---------------------------------o


;=====================================================================o
;                            Hyper App Launcher                      ;|
;-----------------------------o---------------------------------------o
;               CapsLock + f  |  PowerToys Run (Ctrl+Space)          ;|
;               CapsLock + g  |  PowerRename   (context menu)        ;|
;               CapsLock + e  |  Google Chrome                       ;|
;         CapsLock + Win + e  |  MS Edge                             ;|
;               CapsLock + r  |  Terminal                            ;|
;         CapsLock + Win + r  |  Recycle Bin                         ;|
;               CapsLock + a  |  Obsidian                            ;|
;               CapsLock + d  |  File Explorer                       ;|
;         CapsLock + Win + d  |  Download Folder                     ;|
;             CapsLock + tab  |  Snipping Tool                       ;|

;-----------------------------o---------------------------------------o
CapsLock & f::Send "^{Space}"
CapsLock & t::Send "^t"
CapsLock & b::Send "^+b"
CapsLock & Tab::Send "#+s"
CapsLock & y::Run "C:\Users\tu\AppData\Local\Google\Chrome\User Data\Default\Web Applications\_crx_cinhimbnkkaeohfgghhklpknlkffjgod\YouTube Music.lnk"
CapsLock & g::Send "+{AppsKey}w"
CapsLock & e::
{
    if  GetKeyState("LWin")
        Run "msedge"       
    else
        {
            if  WinExist("ahk_exe chrome.exe")
                WinActivate
            else 
                Run "C:\Program Files\Google\Chrome\Application\chrome.exe"
        }
}

CapsLock & r::
{    if  GetKeyState("LWin")
        Run "::{645FF040-5081-101B-9F08-00AA002F954E}"    
    else 
        {
            if  WinExist("ahk_exe WindowsTerminal.exe")
                WinActivate
            else 
                Run "wt"
        }
}


CapsLock & a:: 
{
    if  WinExist("ahk_exe Obsidian.exe")
        WinActivate
    else 
        Run "C:\Users\tu\AppData\Local\Obsidian\Obsidian.exe"
}

CapsLock & d:: 
{
    if  GetKeyState("LWin")
        Run "::{374DE290-123F-4565-9164-39C4925E467B}"     
    else 
        Send "#1"
}