/*
   ------------------------------------------------------
   Methoden zum Senden von Unicode-Zeichen
   ------------------------------------------------------

�ber den GTK-Workaround:
Dieser basiert auf http://www.autohotkey.com/forum/topic32947.html
Der Aufruf von �SubStr(charCode,3)� geht davon aus, dass alle charCodes in Hex mit f�hrendem �0x� angegeben sind. Die abenteuerliche �^+u�-Konstruktion ben�tigt im �brigen den Hex-Wert in Kleinschrift, was derzeit nicht bei den Zeichendefinitionen umgesetzt ist, daher zentral und weniger fehlertr�chtig an dieser Stelle. Au�erdem ein abschlie�end gesendetes Space, sonst bleibt der �eingetippte� Unicode-Wert noch kurz sichtbar stehen, bevor er sich GTK-sei-dank in das gew�nschte Zeichen verwandelt.
*/

SendUnicodeChar(charCode1, charCode2) {
  global
  if !(CheckComp(charCode2) and DeadCompose)
  IfWinActive,ahk_class gdkWindowToplevel
  {
    StringLower,charCode1,charCode1
    send % "^+u" . SubStr(charCode1,3) . " "
  } else {
    VarSetCapacity(ki,28*2,0)
    EncodeInteger(&ki+0,1)
    EncodeInteger(&ki+6,charCode1)
    EncodeInteger(&ki+8,4)
    EncodeInteger(&ki+28,1)
    EncodeInteger(&ki+34,charCode1)
    EncodeInteger(&ki+36,4|2)
    DllCall("SendInput","UInt",2,"UInt",&ki,"Int",28)
  }
}

EncodeInteger(ref,val) {
  DllCall("ntdll\RtlFillMemoryUlong","Uint",ref,"Uint",4,"Uint",val)
}


