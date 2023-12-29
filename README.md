# CapsLock Enhancement Win V1 2023
> Make CapsLock Great and Useful As It Should!!!

This project will transform the `CapsLock` key into a `Hyper`(✱) that can improve work and personal productivity thanks to its best ergonomic position next to the home row.
One thing that annoyed me as someone who switches between Windows and MacOS is the keyboard layout. 
This project will create a configuration allowing me to have almost identical experiences using MacOS and Windows, regardless of whether I use my small mechanical keyboard or the built-in keyboard on my MacBook. 
## Highlights
- CapsLock is remapped to `Esc` when pressed.  
- Transform `Capslock` into a powerful `Hyper` (✱)
- Quickly launch apps, useful navigation, window control, shortcuts, etc.
- Speed up productivity, high-frequency move stay in the home row.
- Work with all existing modifiers: `Ctrl`, `Shift`, `Win`, and `Alt`. 
- Same finger position as Mac device, allowing a consistent experience. 

## Requirements
- A mechanical keyboard:  to keep the finger position the same when using MacOS or Windows, the Left `Alt` and  Left `Win` keys are swapped to replicate the Left `Opt` and Left `Cmd` keys on Mac, which I find more ergonomic when typing. You will need a programmable keyboard to remap the Left `Win` key next to the `Space` key. 
The rest of the keyboard will be the same as the default ANSI layout.
- Left `Win` is disabled for Start Menu when pressed alone to avoid opening Start Menu unexpectedly (you can still use Right `Win` to open it)

## The CapsLock Layout
### Windows
This project will focus on Windows, with the updated AutoHotkey V2 released in 2023. 

Below is the projected keyboard layout:

- when using `CapsLock` + `key`: activate the first option.

- when using  `CapsLock` + `Lwin`+`key`: trigger the second option.

![remapped layout](docs/img/win-layout.png)
### MacOS
Visit [Vonng/capslock](https://github.com/Vonng/Capslock) who has done excellent work for MacOS. 

My own version for MacOS will be updated here.

## Installation
### Windows
- Install [AutoHotkey V2](https://www.autohotkey.com/)
- Download the `capslock.ahk` to your Windows PC or you can clone this repo if you are familiar with `git` command.   
- Double-click to run it
- Adjust the script to your own preference.

## Limitations
- `Win`+ `Space` remap does not work, if you know how to fix it please let me know.
- [PowerRename](https://github.com/microsoft/PowerToys/wiki/PowerRename) has no shortcut key and has to be activated via context menu.
- File Explorer needs to be in the first index of the Taskbar (next  to the Window Logo), this is the only way to launch it or switch to it without opening a new Explorer window.
