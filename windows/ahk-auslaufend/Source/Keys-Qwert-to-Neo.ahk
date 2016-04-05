/*
   ------------------------------------------------------
   QWERTZ->Neo umwandlung
   ------------------------------------------------------
*/

; Reihe 1
*VKDCSC029::goto neo_tot1 ; Zirkumflex
*VK31SC002::goto neo_1
*VK32SC003::goto neo_2
*VK33SC004::goto neo_3
*VK34SC005::goto neo_4
*VK35SC006::goto neo_5
*VK36SC007::goto neo_6
*VK37SC008::
  if !einHandNeo or !spacepressed
    goto neo_7
  else {
    keypressed := 1
    goto %gespiegelt_7%
  }
*VK38SC009::
  if !einHandNeo or !spacepressed
    goto neo_8
  else {
    keypressed := 1
    goto %gespiegelt_8%
  }
*VK39SC00A::
  if !einHandNeo or !spacepressed
    goto neo_9
  else {
    keypressed := 1
    goto %gespiegelt_9%
  }
*VK30SC00B::
  if !einHandNeo or !spacepressed
    goto neo_0
  else {
    keypressed := 1
    goto %gespiegelt_0%
  }
*VKDBSC00C:: ; ß
  if !einHandNeo or !spacepressed
    goto neo_strich
  else {
    keypressed := 1
    goto %gespiegelt_strich%
  }
*VKDDSC00D::goto neo_tot2 ; Akut

; Reihe 2

VK09SC00F::goto neo_tab
*VK51SC010:: ; q (q)
  goto neo_q
*VK57SC011:: ; w (w)
  goto neo_w
*VK45SC012:: ; e (e)
  goto neo_e
*VK52SC013:: ; r (r)
  goto neo_r
*VK54SC014:: ; t (t)
  goto neo_t
*VK5ASC015:: ; z (z) 
  if !einHandNeo or !spacepressed
    goto neo_z
  else {
    keypressed := 1
    goto %gespiegelt_k%
  }
*VK55SC016:: ; u (u)
  if !einHandNeo or !spacepressed
    goto neo_u
  else {
    keypressed := 1
    goto %gespiegelt_h%
  }
*VK49SC017:: ; i (i)
  if !einHandNeo or !spacepressed
    goto neo_i
  else {
    keypressed := 1
    goto %gespiegelt_g%
  }
*VK4FSC018:: ; o (o)
  if !einHandNeo or !spacepressed
    goto neo_o
  else {
    keypressed := 1
    goto %gespiegelt_f%
  }
*VK50SC019:: ; p (p)
  if !einHandNeo or !spacepressed
    goto neo_p
  else {
    keypressed := 1
    goto %gespiegelt_q%
  }
*VKBASC01A:: ; ü (ü)
  if !einHandNeo or !spacepressed
    goto neo_ü
  else {
    keypressed := 1
    goto %gespiegelt_sz%
  }
*VKBBSC01B:: ; + (tot3)
  if !einHandNeo or !spacepressed
    goto neo_tot3
  else {
    keypressed := 1
    goto %gespiegelt_tot3%
  }

; Reihe 3
*VK41SC01E:: ; a (a)
  goto neo_a
*VK53SC01F:: ; s (s)
  goto neo_s
*VK44SC020:: ; d (d)
  goto neo_d
*VK46SC021:: ; f (f)
  goto neo_f
*VK47SC022:: ; g (g)
  goto neo_g
*VK48SC023:: ; h (h)
  if !einHandNeo or !spacepressed
    goto neo_h
  else {
    keypressed := 1
    goto %gespiegelt_s%
  }
*VK4ASC024:: ; j (j)
  if !einHandNeo or !spacepressed
    goto neo_j
  else {
    keypressed := 1
    goto %gespiegelt_n%
  }
*VK4BSC025:: ; k (k)
  if !einHandNeo or !spacepressed
    goto neo_k
  else {
    keypressed := 1
    goto %gespiegelt_r%
  }
*VK4CSC026:: ; l (l)
  if !einHandNeo or !spacepressed
    goto neo_l
  else {
    keypressed := 1
    goto %gespiegelt_t%
  }
*VKC0SC027:: ; ö (ö)
  if !einHandNeo or !spacepressed
    goto neo_ö
  else {
    keypressed := 1
    goto %gespiegelt_d%
  }
*VKDESC028:: ; ä (ä)
    goto neo_ä

; Reihe 4
*VK59SC02C:: ; y (y)
  goto neo_y
*VK58SC02D:: ; x (x)
  goto neo_x
*VK43SC02E:: ; c (c)  
  goto neo_c
*VK56SC02F:: ; v (v)
  goto neo_v
*VK42SC030:: ; b (b)
  goto neo_b
*VK4ESC031:: ; n (n)
  if !einHandNeo or !spacepressed
    goto neo_n
  else {
    keypressed := 1
    goto %gespiegelt_b%
  }
*VK4DSC032:: ; m (m)
  if !einHandNeo or !spacepressed
    goto neo_m
  else {
    keypressed := 1
    goto %gespiegelt_m%
  }
*VKBCSC033:: ; , (,)
  if !einHandNeo or !spacepressed
    goto neo_komma
  else {
    keypressed := 1
    goto %gespiegelt_komma%
  }
*VKBESC034:: ; . (.)
  if !einHandNeo or !spacepressed
    goto neo_punkt
  else {
    keypressed := 1
    goto %gespiegelt_punkt%
  }
*VKBDSC035:: ; - (-)
  if !einHandNeo or !spacepressed
    goto neo_strich
  else {
    keypressed := 1
    goto %gespiegelt_j%
  }

; Numpad
*VK90SC145::goto neo_NumLock
*VK6FSC135::goto neo_NumpadDiv
*VK6ASC037::goto neo_NumpadMult
*VK6DSC04A::goto neo_NumpadSub
*VK6BSC04E::goto neo_NumpadAdd
*VK0DSC11C::goto neo_NumpadEnter
*VK67SC047::                   ; NumPad7
*VK24SC047::goto neo_Numpad7   ; NumPadHome
*VK68SC048::                   ; NumPad8
*VK26SC048::goto neo_Numpad8   ; NumPadUp
*VK69SC049::                   ; NumPad9
*VK21SC049::goto neo_Numpad9   ; NumPadPgUp
*VK64SC04B::                   ; NumPad4
*VK25SC04B::goto neo_Numpad4   ; NumPadLeft
*VK65SC04C::                   ; NumPad5
*VK0CSC04C::goto neo_Numpad5   ; NumPadClear
*VK66SC04D::                   ; NumPad6
*VK27SC04D::goto neo_Numpad6   ; NumPadRight
*VK61SC04F::                   ; NumPad1
*VK23SC04F::goto neo_Numpad1   ; NumPadEnd
*VK62SC050::                   ; NumPad2
*VK28SC050::goto neo_Numpad2   ; NumPadDown
*VK63SC051::                   ; NumPad3
*VK22SC051::goto neo_Numpad3   ; NumPadPgDn
*VK60SC052::                   ; NumPad0
*VK2DSC052::goto neo_Numpad0   ; NumPadIns
*VK6ESC053::                   ; NumPadDot
*VK2ESC053::goto neo_NumpadDot ; NumPadIns


