neo_a:
  EbeneAktualisieren()
  if (((Ebene = 2) and !(CheckDeadUni("a5g1",0x1F02)
                      or CheckDeadUni("g5g1",0x1F03)))
       or (Ebene12 and !(CheckDeadUni12("c1",0x00E2,0x00C2)
                      or CheckDeadUni12("c2",0x00E3,0x00C3)
                      or CheckDeadAsc12("c3","�","�")
                      or CheckDeadUni12("c4",0x01CE,0x01CD)
                      or CheckDeadUni12("c5",0x0103,0x0102)
                      or CheckDeadUni12("c6",0x0101,0x0100)
                      or CheckDeadUni12("g1",0x00E0,0x00C0)
                      or CheckDeadAsc12("g3","�","�")
                      or CheckDeadUni12("g4",0x0201,0x0200)
                      or CheckDeadUni12("a1",0x00E1,0x00C1)
                      or CheckDeadUni12("a2",0x0105,0x0104)
                      or CheckDeadUni12("a3",0x2C65,0x023A)
                      or CheckDeadUni12("a6",0x0227,0x0226))))
    OutputChar12("a","A","a","A")
  else if (Ebene = 3)
    OutputChar("{{}", "braceleft")
  else if (Ebene = 4)
    OutputChar("{Down}", "Down")
  else if (Ebene = 5 and !(CheckDeadUni("c1",0x1FB6)
                        or CheckDeadUni("c5",0x1FB0)
                        or CheckDeadUni("c6",0x1FB1)
                        or CheckDeadUni("g1",0x1F70)
                        or CheckDeadUni("g5",0x1F01)
                        or CheckDeadUni("a1",0x03AC)
                        or CheckDeadUni("a2",0x1FB3)
                        or CheckDeadUni("a5",0x1F00)))
    SendUnicodeChar(0x03B1, "Greek_alpha") ; alpha
  else if (Ebene = 6)
    SendUnicodeChar(0x2200, "U2200") ; f�r alle
return

neo_b:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c6",0x1E07,0x1E06)
                 or CheckDeadUni12("a6",0x1E03,0x1E02)))
    OutputChar12("b","B","b","B")
  else if (Ebene = 3)
    if isMod2Locked
      OutputChar("{Shift Up}{+}{Shift down}", "plus")
    else OutputChar("{blind}{+}", "plus")
  else if (Ebene = 4)
    OutputChar(":", "colon")
  else if (Ebene = 5)
    SendUnicodeChar(0x03B2, "Greek_beta") ; beta
  else if (Ebene = 6)
    SendUnicodeChar(0x21D0, "U21D0") ; Doppelpfeil links
return

neo_c:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x0109,0x0108)
                 or CheckDeadUni12("c4",0x010D,0x010C)
                 or CheckDeadUni12("a1",0x0107,0x0106)
                 or CheckDeadUni12("a2",0x00E7,0x00E6)
                 or CheckDeadUni12("a6",0x010B,0x010A)))
    OutputChar12("c","C","c","C")
  else if (Ebene = 3)
    OutputChar("]", "bracketright")
  else if (Ebene = 4) and (!lernModus or lernModus_neo_Entf)
    OutputChar("{Del}", "Delete")
  else if (Ebene = 5)
    SendUnicodeChar(0x03C7, "Greek_chi") ; chi
  else if (Ebene = 6)
    SendUnicodeChar(0x2102, "U2102") ; C (Komplexe Zahlen)]
return

neo_d:
   EbeneAktualisieren()
   if (Ebene12 and !(CheckDeadUni12("c1",0x1E13,0x1E12)
                  or CheckDeadUni(  "c2",0x1D6D)
                  or CheckDeadUni12("c4",0x010F,0x010E)
                  or CheckDeadUni12("g3",0x1E0D,0x1E0C)
                  or CheckDeadUni12("a1",0x00F0,0x00D0)
                  or CheckDeadUni12("a2",0x1E11,0x1E10)
                  or CheckDeadUni12("a3",0x0111,0x0110)
                  or CheckDeadUni12("a6",0x1E0B,0x1E0A)))
     OutputChar12("d","D","d","D")
   else if (Ebene = 3)
     OutputChar(":", "colon")
   else if (Ebene = 4)
     OutputChar("{NumpadDot}", "comma")
   else if (Ebene = 5)
      SendUnicodeChar(0x03B4, "Greek_delta") ; delta
   else if (Ebene = 6)
      SendUnicodeChar(0x0394, "Greek_DELTA") ; Delta
return

neo_e:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x00EA,0x00CA)
                 or CheckDeadUni12("c2",0x1EBD,0x1EBC)
                 or CheckDeadUni12("c4",0x011B,0x011A)
                 or CheckDeadUni12("c5",0x0115,0x0114)
                 or CheckDeadUni12("c6",0x0113,0x0112)
                 or CheckDeadUni12("g1",0x00E8,0x00C8)
                 or CheckDeadAsc12("g3","�","�")
                 or CheckDeadUni12("g4",0x0205,0x0204)
                 or CheckDeadUni12("a1",0x00E9,0x00C9)
                 or CheckDeadUni12("a2",0x0119,0x0118)
                 or CheckDeadUni12("a6",0x0117,0x0116)))
    OutputChar12("e","E","e","E")
  else if (Ebene = 3)
    OutputChar("{}}", "braceright")
  else if (Ebene = 4)
    OutputChar("{Right}", "Right")
  else if (Ebene = 5)
    SendUnicodeChar(0x03B5, "Greek_epsilon") ; epsilon
  else if (Ebene = 6)
    SendUnicodeChar(0x2203, "U2203") ; es existiert
return

neo_f:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("a6",0x1E1F,0x1E1E)))
    OutputChar12("f","F","f","F")
  else if ((Ebene = 3) and !(CheckDeadUni("c1",0x2259) ; entspricht
                          or CheckDeadUni("c2",0x2245) ; ungef�hr gleich
                          or CheckDeadUni("c3",0x2257) ; ring equal to
                          or CheckDeadUni("c4",0x225A) ; EQUIANGULAR TO
                          or CheckDeadUni("c6",0x2261) ; identisch
                          or CheckDeadUni("a3",0x2260))) ; ungleich
    OutputChar("`=", "equal")
  else if ((Ebene = 4) and !(CheckDeadUni("c1",0x2079)
                          or CheckDeadUni("a3",0x2089)))
    OutputChar("{Numpad9}", "KP_9")
  else if (Ebene = 5)
    SendUnicodeChar(0x03C6, "Greek_phi") ; phi
  else if (Ebene = 6)
    SendUnicodeChar(0x03A6, "Greek_PHI") ; Phi
return

neo_g:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x011D,0x011C)
                 or CheckDeadUni12("c5",0x011F,0x011E)
                 or CheckDeadUni12("a2",0x0123,0x0122)
                 or CheckDeadUni12("a6",0x0121,0x0120)))
    OutputChar12("g","G","g","G")
  else if ((Ebene = 3) and !(CheckDeadUni("a3",0x2265))) ; gr��er gleich
    OutputChar(">", "greater")
  else if ((Ebene = 4) and !(CheckDeadUni("c1",0x2078)
                          or CheckDeadUni("a3",0x2088)))
    OutputChar("{Numpad8}", "KP_8")
  else if (Ebene = 5)
    SendUnicodeChar(0x03B3, "Greek_gamma") ; gamma
  else if (Ebene = 6)
    SendUnicodeChar(0x0393, "Greek_GAMMA") ; Gamma
return

neo_h:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x0125,0x0124)
                 or CheckDeadUni12("a3",0x0127,0x0126)
                 or CheckDeadUni12("a6",0x1E23,0x1E22)))
    OutputChar12("h","H","h","H")
  else if ((Ebene = 3) and !(CheckDeadUni("a3",0x2264))) ; kleiner gleich
    OutputChar("<", "less")
  else if ((Ebene = 4) and !(CheckDeadUni("c1",0x2077)
                          or CheckDeadUni("a3",0x2087)))
    OutputChar("{Numpad7}", "KP_7")
  else if (Ebene = 5)
    SendUnicodeChar(0x03C8, "Greek_psi") ; psi
  else if (Ebene = 6)
    SendUnicodeChar(0x03A8, "Greek_PSI") ; Psi
return

neo_i:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x00EE,0x00CE)
                 or CheckDeadUni12("c2",0x0129,0x0128)
                 or CheckDeadUni12("c4",0x01D0,0x01CF)
                 or CheckDeadUni12("c5",0x012D,0x012C)
                 or CheckDeadUni12("c6",0x012B,0x012A)
                 or CheckDeadUni12("g1",0x00EC,0x00CC)
                 or CheckDeadAsc12("g3","�","�")
                 or CheckDeadUni12("g4",0x0209,0x0208)
                 or CheckDeadUni12("a1",0x00ED,0x00CD)
                 or CheckDeadUni12("a2",0x012F,0x012E)
                 or CheckDeadUni12("a3",0x0268,0x0197)
                 or CheckDeadUni12("a6",0x0131,0x0130)))
    OutputChar12("i","I","i","I")
  else if (Ebene = 3)
    OutputChar("`/", "slash")
  else if (Ebene = 4)
    OutputChar("{Left}", "Left")
  else if (Ebene = 5)
    SendUnicodeChar(0x03B9, "Greek_iota") ; iota
  else if (Ebene = 6)
    SendUnicodeChar(0x222B, "integral") ; integral
return

neo_j:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x0135,0x0134)
                 or CheckDeadUni(  "c4",0x01F0)
                 or CheckDeadUni12("a3",0x0249,0x0248)))
    OutputChar12("j","J","j","J")
  else if (Ebene = 3)
    OutputChar("`;", "semicolon")
  else if (Ebene = 4)
    OutputChar("`;", "semicolon")
  else if (Ebene = 5)
    SendUnicodeChar(0x03B8, "Greek_theta") ; theta
  else if (Ebene = 6)
    SendUnicodeChar(0x221D, "variation") ; proportional
return

neo_k:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("a2",0x0137,0x0136)
                 or CheckDeadUni12("a6",0x1E33,0x1E32)))
    OutputChar12("k","K","k","K")
  else if (Ebene = 3)
    OutputChar("{!}", "exclam")
  else if (Ebene = 4)
    OutputChar("�", "exclamdown")
  else if (Ebene = 5)
    SendUnicodeChar(0x03F0, "U03F0") ; kappa symbol (varkappa)
  else if (Ebene = 6)
    SendUnicodeChar(0x221A, "radical") ; Wurzel
return

neo_l:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c4",0x013E,0x013D)
                 or CheckDeadUni12("a1",0x013A,0x0139)
                 or CheckDeadUni12("a2",0x013C,0x013B)
                 or CheckDeadUni12("a3",0x0142,0x0141)
                 or CheckDeadUni12("a6",0x1E37,0x1E36)))
    OutputChar12("l","L","l","L")
  else if (Ebene = 3)
    OutputChar("[", "bracketleft")
  else if (Ebene = 4)
    OutputChar("{Up}", "Up")
  else if (Ebene = 5)
    SendUnicodeChar(0x03BB, "Greek_lambda") ; lambda
  else if (Ebene = 6)
    SendUnicodeChar(0x039B, "Greek_LAMBDA") ; Lambda
return

neo_m:
  EbeneAktualisieren()
  if (Ebene12 and !CheckDeadUni12("a6",0x1E41,0x1E40))
    OutputChar12("m","M","m","M")
  else if (Ebene = 3)
    OutputChar("`%", "percent")
  else if ((Ebene = 4) and !(CheckDeadUni("c1",0x00B9)
                          or CheckDeadUni("a3",0x2081)))
    OutputChar("{Numpad1}", "KP_1")
  else if (Ebene = 5)
    SendUnicodeChar(0x03BC, "Greek_mu") ; griechisch mu, micro w�re 0x00B5
  else if (Ebene = 6)
    SendUnicodeChar(0x21D4, "ifonlyif") ; doppelter Doppelpfeil (genau dann wenn)
return

neo_n:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c2",0x00F1,0x00D1)
                 or CheckDeadUni12("c4",0x0148,0x0147)
                 or CheckDeadUni12("a1",0x0144,0x0143)
                 or CheckDeadUni12("a2",0x0146,0x0145)
                 or CheckDeadUni12("a6",0x1E45,0x1E44)))
    OutputChar12("n","N","n","N")
  else if (Ebene = 3)
    OutputChar("(", "parenleft")
  else if ((Ebene = 4) and !(CheckDeadUni("c1",0x2074)
                          or CheckDeadUni("a3",0x2084)))
    OutputChar("{Numpad4}", "KP_4")
  else if (Ebene = 5)
    SendUnicodeChar(0x03BD, "Greek_nu") ; nu
  else if (Ebene = 6)
    SendUnicodeChar(0x2115, "U2115") ; N (nat�rliche Zahlen)
return

neo_o:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x00F4,0x00D4)
                 or CheckDeadUni12("c2",0x00F5,0x00D5)
                 or CheckDeadUni12("c4",0x01D2,0x01D1)
                 or CheckDeadUni12("c5",0x014F,0x014E)
                 or CheckDeadUni12("c6",0x014D,0x014C)
                 or CheckDeadUni12("g1",0x00F2,0x00D2)
                 or CheckDeadAsc12("g3","�","�")
                 or CheckDeadUni12("a1",0x00F3,0x00D3)
                 or CheckDeadUni12("a2",0x01EB,0x01EA)
                 or CheckDeadUni12("a3",0x00F8,0x00D8)
                 or CheckDeadUni12("a4",0x0151,0x0150)))
    OutputChar12("o","O","o","O")
  else if (Ebene = 3)
    OutputChar("*", "asterisk")
  else if (Ebene = 4)
    OutputChar("{End}", "End")
  else if (Ebene = 5)
    SendUnicodeChar(0x03BF, "Greek_omicron") ; omicron
  else if (Ebene = 6)
    SendUnicodeChar(0x2208, "elementof") ; element of
return

neo_p:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("a6",0x1E57,0x1E56)))
    OutputChar12("p","P","p","P")
  else if ((Ebene = 3) and !(CheckDeadUni("c2",0x2248)))
    OutputChar("~", "asciitilde")
  else if (Ebene = 4)
    OutputChar("{Enter}", "Return")
  else if (Ebene = 5)
    SendUnicodeChar(0x03C0, "Greek_pi") ; pi
  else if (Ebene = 6)
    SendUnicodeChar(0x03A0, "Greek_PI") ; Pi
return

neo_q:
  EbeneAktualisieren()
  if (Ebene12)
     OutputChar12("q","Q","q","Q")
  else if (Ebene = 3)
    OutputChar("{&}", "ampersand")
  else if ((Ebene = 4) and !(CheckDeadUni("c1",0x207A)
                          or CheckDeadUni("a3",0x208A)))
    OutputChar("{NumPadAdd}", "KP_Add")
  else if (Ebene = 5)
     SendUnicodeChar(0x03D5, "U03D5") ; phi symbol (varphi)
  else if (Ebene = 6)
     SendUnicodeChar(0x211A, "U211A") ; Q (rationale Zahlen)
return

neo_r:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c4",0x0159,0x0158)
                 or CheckDeadUni12("g3",0x1E5B,0x1E5A)
                 or CheckDeadUni12("a1",0x0155,0x0154)
                 or CheckDeadUni12("a2",0x0157,0x0156)
                 or CheckDeadUni12("a6",0x0E59,0x0E58)))
    OutputChar12("r","R","r","R")
  else if (Ebene = 3)
    OutputChar(")", "parenright")
  else if ((Ebene = 4) and !(CheckDeadUni("c1",0x2075)
                          or CheckDeadUni("a3",0x2085)))
    OutputChar("{Numpad5}", "KP_5")
  else if (Ebene = 5)
    SendUnicodeChar(0x03F1, "U03F1") ; rho symbol (varrho)
  else if (Ebene = 6)
    SendUnicodeChar(0x211D, "U221D") ; R (reelle Zahlen)
return

neo_s:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("a1",0x015B,0x015A)
                 or CheckDeadUni12("a2",0x015F,0x015E)
                 or CheckDeadUni12("a6",0x1E61,0x1E60)
                 or CheckDeadUni12("c1",0x015D,0x015C)
                 or CheckDeadUni12("c4",0x0161,0x0160)
                 or CheckDeadUni12("a6",0x1E63,0x1A62))) {
    if (LangSTastatur and (Ebene = 1))
      SendUnicodeChar(0x017F, "17F") ; langes s
    else OutputChar12("s","S","s","S")
  } else if (Ebene = 3)
    OutputChar("?", "question")
  else if (Ebene = 4)
    OutputChar("�", "questiondown")
  else if (Ebene = 5)
    SendUnicodeChar(0x03C3, "Greek_sigma") ;sigma
  else if (Ebene = 6)
    SendUnicodeChar(0x03A3, "Greek_SIGMA") ;Sigma
return

neo_t:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("a2",0x0163,0x0162)
                 or CheckDeadUni12("a6",0x1E6B,0x1E6A)
                 or CheckDeadUni12("c4",0x0165,0x0164)
                 or CheckDeadUni(  "g3",0x1E97)))
    OutputChar12("t","T","t","T")
  else if (Ebene = 3)
    OutputChar("-", "minus") ; Bisstrich
  else if (Ebene = 4) and !(CheckDeadUni("c1",0x2076)
                          or CheckDeadUni("c5",0x2086))
    OutputChar("{Numpad6}", "KP_6")
  else if (Ebene = 5)
    SendUnicodeChar(0x03C4, "Greek_tau") ; tau
  else if (Ebene = 6)
    SendUnicodeChar(0x2202, "partialderivative") ; partielle Ableitung
return

neo_u:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x00FB,0x00DB)
                 or CheckDeadUni12("c2",0x0169,0x0168)
                 or CheckDeadUni12("c3",0x016F,0x016E)
                 or CheckDeadUni12("c4",0x01D4,0x01D3)
                 or CheckDeadUni12("c5",0x016D,0x016C)
                 or CheckDeadUni12("c6",0x016B,0x016A)
                 or CheckDeadUni12("g1",0x00F9,0x00D9)
                 or CheckDeadAsc12("g3","�","�")
                 or CheckDeadUni12("a1",0x00FA,0x00DA)
                 or CheckDeadUni12("a2",0x0173,0x0172)
                 or CheckDeadUni12("a4",0x0171,0x0170)))
    OutputChar12("u","U","u","U")
  else if (Ebene = 3)
    OutputChar("\", "backslash")
  else if (Ebene = 4)
    OutputChar("{Home}", "Home")
  else if (Ebene = 6)
    SendUnicodeChar(0x222E, "U222E") ; contour integral
return

neo_v:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("a6",0x1E7F,0x1E7E)))
    OutputChar12("v","V","v","V")
  else if (Ebene = 3)
    OutputChar("_","underscore")
  else if (Ebene = 4) and (!lernModus or lernModus_neo_Backspace)
    OutputChar("{Backspace}", "BackSpace")
  else if (Ebene = 6)
    SendUnicodeChar(0x2259, "U2259") ; estimates/entspricht
return

neo_w:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x0175,0x0174)))
    OutputChar12("w","W","w","W")
  else if (Ebene = 3)
    OutputChar("{^}{space}", "asciicircum") ; Zirkumflex
  else if (Ebene = 4)
    OutputChar("{Insert}", "Insert") ; Einfg
  else if (Ebene = 5)
    SendUnicodeChar(0x03C9, "Greek_omega") ; omega
  else if (Ebene = 6)
    SendUnicodeChar(0x03A9, "Greek_OMEGA") ; Omega
return

neo_x:
  EbeneAktualisieren()
  if Ebene12
    OutputChar12("x","X","x","X")
  else if (Ebene = 3)
    OutputChar("�", "ellipsis") ; Ellipse horizontal
  else if (Ebene = 4)
    SendUnicodeChar(0x22EE, "U22EE") ; Ellipse vertikal
  else if (Ebene = 5)
    SendUnicodeChar(0x03BE, "Greek_xi") ; xi
  else if (Ebene = 6)
    SendUnicodeChar(0x039E, "Greek_XI") ; Xi
return

neo_y:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c1",0x0177,0x0176)
                 or CheckDeadAsc12("g3","�","�")
                 or CheckDeadUni12("a1",0x00FD,0x00DD)))
    OutputChar12("y","Y","y","Y")
  else if (Ebene = 3)
    OutputChar("@", "at")
  else if (Ebene = 4)
    OutputChar(".", "period")
  else if (Ebene = 5)
    SendUnicodeChar(0x03C5, "Greek_upsilon") ; upsilon
  else if (Ebene = 6)
    SendUnicodeChar(0x2207, "nabla") ; nabla
return

neo_z:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("a1",0x017A,0x0179)
                 or CheckDeadUni12("a6",0x017C,0x017B)
                 or CheckDeadUni12("c4",0x017E,0x017D)))
    OutputChar12("z","Z","z","Z")
  else if (Ebene = 3)
    OutputChar("``{space}", "grave") ; untot
  else if (Ebene = 4)
    send {Ctrl down}z{Ctrl up}
  else if (Ebene = 5)
    SendUnicodeChar(0x03B6, "Greek_zeta") ; zeta
  else if (Ebene = 6)
    SendUnicodeChar(0x2124, "U2124") ; Z (ganze Zahlen)
return

neo_�:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c6",0x01DF,0x01DE)))
    OutputChar12("�","�","adiaeresis","Adiaeresis")
  else if (Ebene = 3)
    OutputChar("|", "bar")
  else if (Ebene = 4)
    OutputChar("{PgDn}", "Next")
  else if (Ebene = 5)
    SendUnicodeChar(0x03B7, "Greek_eta") ; eta
  else if (Ebene = 6)
    SendUnicodeChar(0x2135, "U2135") ; Kardinalzahlen, Aleph-Symbol
return

neo_�:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("c6",0x022B,0x022A)))
    OutputChar12("�","�","odiaeresis","Odiaeresis")
  else if (Ebene = 3)
    OutputChar("$", "dollar")
  else if (Ebene = 4)
    OutputChar("{Tab}", "Tab")
  else if (Ebene = 6)
    SendUnicodeChar(0x2111, "U2221") ; Fraktur I
return

neo_�:
  EbeneAktualisieren()
  if (Ebene12 and !(CheckDeadUni12("a1",0x01D8,0x01D7)
                 or CheckDeadUni12("g1",0x01DC,0x01DB)
                 or CheckDeadUni12("c4",0x01DA,0x01D9)
                 or CheckDeadUni12("c6",0x01D6,0x01D5)))
    OutputChar12("�","�","udiaeresis","Udiaeresis")
  else if (Ebene = 3)
    if isMod2Locked
      OutputChar("{Shift Up}{#}", "numbersign")
    else OutputChar("{blind}{#}", "numbersign")
  else if (Ebene = 4)
    OutputChar("{Esc}", "Escape")
  else if (Ebene = 6)
    SendUnicodeChar(0x211C, "U221C") ; Fraktur R
return

neo_sz:
  EbeneAktualisieren()
  if (Ebene = 1)
    if LangSTastatur
      OutputChar("s", "s")
    else OutputChar("�", "ssharp")
  else if (Ebene = 2)
    SendUnicodeChar(0x1E9E, "U1E9E") ; versal-�
  else if (Ebene = 3)
    if LangSTastatur
      OutputChar("�", "ssharp")
    else SendUnicodeChar(0x017F, "17F") ; langes s
  else if (Ebene = 5)
    SendUnicodeChar(0x03C2, "Greek_finalsmallsigma") ; varsigma
  else if (Ebene = 6)
    SendUnicodeChar(0x2218, "jot") ; Verkn�pfungsoperator
return

