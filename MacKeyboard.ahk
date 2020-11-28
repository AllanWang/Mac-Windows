;-------------------------------
; Mac keyboard mappings
; For Keychron K2
;-------------------------------

;-------------------------------
; Notes
;-------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN

#InstallKeybdHook
#SingleInstance force

;Command-backspace deletes whole line
; !BS::Send {LShift down}{Home}{LShift Up}{Del}
; I'm used to it removing one word only.
!BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{LCtrl up}{Del}

;option-delete deletes previous word
#BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{LCtrl up}{Del}

; Navigation of smaller chunks (skip word)
<!Left::Send {ctrl down}{Left}{ctrl up}
<!Right::Send {ctrl down}{Right}{ctrl up}


; Navigation using of bigger chunks (Skip to start/end of line/paragraph/document)
^Left::Send {Home}
^Right::Send {End}
!Up::Send {ctrl down}{Up}{ctrl up}
!Down::Send {ctrl down}{Down}{ctrl up}
^Up::Send {Lctrl down}{Home}{Lctrl up}
^Down::Send {Lctrl down}{End}{Lctrl up}


; Selection (uses a combination of the above with shift)
<!+Left::Send {ctrl down}{shift down}{Left}{shift up}{ctrl up}
<!+Right::Send {ctrl down}{shift down}{Right}{shift up}{ctrl up}
^+Left::Send {shift down}{Home}{shift up}
^+Right::Send {shift down}{End}{shift up}
!+Up::Send {ctrl down}{shift down}{Up}{shift up}{ctrl up}
!+Down::Send {ctrl down}{shift down}{Down}{shift up}{ctrl up}
^+Up::Send {Lctrl down}{shift down}{Home}{shift up}{Lctrl up}
^+Down::Send {Lctrl down}{shift down}{End}{shift up}{Lctrl up}


<!LBUTTON::Send, {Lctrl down}{Click}{Lctrl up}

;Closing windows and programs (using the Win Key)
<!w::Send, ^{F4}
; <!q::Send, !{F4}

;The following section replaces Alt+Key with Ctrl+Key
<!a::Send, ^a
<!b::Send, ^b
<!c::Send, ^c
<!d::Send, ^d 
<!e::Send, ^e
;following won't remap using the normal method
<!f::Send {LCtrl down}{f}{LCtrl up}
<!g::Send, ^g
<!h::Send, ^h
<!i::Send, ^i
<!j::Send, ^j
<!k::Send, ^k
<!l::Send, ^l
<!m::Send, ^m
<!n::Send, ^n
<!o::Send, ^o
<!p::Send, ^p
<!q::Send, ^q ;disabled --remapped to alt-F4 instead
<!r::Send, ^r
<!s::Send, ^s
<!t::Send, ^t
<!u::Send, ^u
<!v::Send, ^v
;<!w::Send, ^w ;disabled --remapped to ctrl-F4 instead
<!x::Send, ^x
<!y::Send, ^y
<!z::Send, ^z
<!1::Send, ^1
<!2::Send, ^2
<!3::Send, ^3
<!4::Send, ^4
<!5::Send, ^5
<!6::Send, ^6
<!7::Send, ^7
<!8::Send, ^8
<!9::Send, ^9
<!0::Send, ^0

;The following section replaces Alt+Shift+Key with Ctrl+Shift+Key
<!+a::Send, ^+a
<!+b::Send, ^+b
<!+c::Send, ^+c
<!+d::Send, ^+d 
<!+e::Send, ^+e
<!+f::Send, ^+f
<!+g::Send, ^+g
<!+h::Send, ^+h
<!+i::Send, ^+i
<!+j::Send, ^+j
<!+k::Send, ^+k
<!+l::Send, ^+l
<!+m::Send, ^+m
<!+n::Send, ^+n
<!+o::Send, ^+o
<!+p::Send, ^+p
<!+q::Send, ^+q
<!+r::Send, ^+r
<!+s::Send, ^+s
<!+t::Send, ^+t
<!+u::Send, ^+u
<!+v::Send, ^+v
<!+w::Send, ^+w
<!+x::Send, ^+x
<!+y::Send, ^+y
<!+z::Send, ^+z
<!+1::Send, ^+1
<!+2::Send, ^+2
<!+3::Send, ^+3
<!+4::Send, ^+4
<!+5::Send, ^+5
<!+6::Send, ^+6
<!+7::Send, ^+7
<!+8::Send, ^+8
<!+9::Send, ^+9
<!+0::Send, ^+0

; Cannot replace ctrl with alt or a cycle will occur.
; Because of this, we'll only remap left keys