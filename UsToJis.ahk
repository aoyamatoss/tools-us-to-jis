#Include IME.ahk

;*+*::send, "
;*vkBA::send, '
;*F24::send, {Esc}
;*Esc::send, {``}

*~LAlt::Send {Blind}{vk07}
*~RAlt::Send {Blind}{vk07}

; 左 Alt 空打ちで IME を OFF
LAlt up::
    if (A_PriorHotkey == "*~LAlt")
    {
        IME_SET(0)
    }
    Return

; 右 Alt 空打ちで IME を ON
RAlt up::
    if (A_PriorHotkey == "*~RAlt")
    {
        IME_SET(1)
    }
    Return

!h::Send,{Left}
!j::Send,{Down}
!k::Send,{Up}
!l::Send,{Right}

+!h::Send,+{Left}
+!j::Send,+{Down}
+!k::Send,+{Up}
+!l::Send,+{Right}

^!h::Send,^{Left}
^!j::Send,^{Down}
^!k::Send,^{Up}
^!l::Send,^{Right}

+^!h::Send,+^{Left}
+^!j::Send,+^{Down}
+^!k::Send,+^{Up}
+^!l::Send,+^{Right}

Pause::Delete

Del::End

+Esc::+sc029

PrintScreen::Return
Insert::Return
ScrollLock::Return
End::Return