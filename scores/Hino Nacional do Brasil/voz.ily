\version "2.24.4"

voz = \relative c' {
  \key f \major
  \partial 16*5
  r16 r4
  \section
  \repeat volta 2 {
    R1*14
    r2 r4 c \mf
    \section
    f8. e16 f8. g16 a8. g16 a8. bes16
    b4. c8 f,4 c
    f8. e16 g8. f16 a8. g16 bes8. a16
    fis4 g r c,
    g'8. fis16 g8. a16 bes8. a16 bes8. c16
    cis4. d8 g,4 c,!
    g'8. fis16 a8. g16 bes8. a16 c8. bes16
    gis4 a r a8. \f a16
    bes4 ( a ) r8 a bes a
    a4 d2-> c8 bes
    bes8 a a g g f f e
    e4 d r g8. g16
    a4 g r8 g a g
    g4 c2 b8 a
    a8 g g f f e e d
    d4 c r8 c e g
    bes8 c, e g bes c, e g
    bes2 bes4 \breathe c, \f
    \section
    f8. e16 f8. g16 a8. g16 a8. bes16
    b4. c8 f,4 c
    f8. e16 g8. f16 a8. g16 bes8. a16
    fis4 g r c,
    g'8. fis16 g8. a16 bes8. a16 bes8. c16
    cis4. d8 g,4 c,!
    g'8. fis16 a8. g16 bes8. a16 c8. bes16
    gis4 a r r8. f16 \mf
    \section
    g8. f16 e8. f16 e8. f16 g8. f16
    f4. ( bes8 ) bes4 r8. g16
    a8. g16 fis8. g16 fis8. g16 a8. g16
    g4. ( c8 ) c4 r8. a16
    bes8. a16 gis8. a16 gis8. a16 bes8. a16
    a4 d-> r8 c bes g
    g4 f r8 e f g
    bes8 a e f cis d bes' g
    g4 f r8 g a bes
    b c a f d4. bes'8
    a4 f8. d16 c4 d8. e16
  }
  \alternative {
    { f4 r4 r2 }
    { f4 r4 r2 }
  }
  R1*2 
  r1 \fermata
  \bar "|."
}

letra = \lyricmode {
  Ou -- vi -- ram do_I -- pi -- ran -- gas_as mar -- gens plá -- ci -- das
  De_um po -- vo_he -- rói -- co bra -- do re --tun -- ban -- te,
  E_o sol da Li -- ber -- da -- de_em ra -- ios fúl -- gi -- dos,
  Bri -- lhou no céu da Pá -- tria nes -- se_ins -- tan -- te.
  
  Se_o pe -- nhor __ des -- sa_i -- gual -- da -- de
  Con -- se -- gui -- mos con -- quis -- tar com bra -- ço for -- te,
  Em teu sei -- o, ó Li -- ber -- da -- de, 
  De -- sa -- fi -- a_o nos -- so pei -- to_a pró -- pria mor -- te!
  Ó Pa -- tria_a -- ma -- da,_I -- do -- la -- tra -- da, Sal -- ve! Sal -- ve!
  
  Bra -- sil, um so -- nho_in -- ten -- so,_um ra -- io ví -- vi -- do
  De_a -- mor e de_es -- pe -- ran -- ça_à ter -- ra des -- ce,
  Se_em teu for -- mo -- so céu, ri -- so -- nho_e lim -- pi -- do,
  A_i -- ma -- gem do Cru -- zei -- ro res -- plan -- de -- ce.
  
  Gi -- gan -- te pe  -- la pró -- pria na -- tu -- re -- za,
  És be -- lo,_és for -- te,_im -- pá -- vi -- do co -- los -- so,
  E_o teu fu -- tu -- re_es -- pe -- lha_es -- sa gran -- de -- za.
  Ter -- ra_a -- do -- ra --  da, 
  En -- tre_ou -- tras mil, És tu, Bra -- sil,
  Ó Pá -- tria_a -- ma -- da!
  Dos fi -- lhos des -- te so -- lo_és mãe gen -- til,
  Pa -- tria_a -- ma -- da, Bra -- sil!
}