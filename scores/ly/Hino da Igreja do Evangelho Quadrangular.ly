\version "2.24.4"

global = {
  \time 4/4
  \key g \major
}

chordNames = \chordmode {
  % introdução
  cis2:m7.5- fis:7 b,4.:m7 e4:aug7 e4.:7 a,2:7 d:7
  %solo
  g2 bes,:maj7 ees:maj7 d:7
  % verso
  g1*3 d1:7
  a1:m7 d:7 a2:m7 d:7 g4 gis:dim7 a:m7 d:7
  g1*2 g1:7 c
  cis2:m7.5- fis:7 b,:m7 e4:aug7 e:7 a,2:7 d:7 g1
  % refrão
  b,1:7 e:m7 b,:7 e:m7
  a,1:7 d a,:7 d
  g1*3:6 d1
  a,1:m7 d a,4:m7 b,:m7 c d:7 g2 d:7
  g1*2:6 g1:7 c
  cis2:m7.5- fis:7 b,:m7 e4:aug7 e:7 a,2:7 d:7
  % final
  g1*2 g
}

melody = \relative c' {
  \section \sectionLabel "intro"
  e4-> e16( dis e fis) g8 fis g a b g16( fis) g8 c-> ~c b-> r4 e,8( g) b( a) fis( a) e'( d)
  \section \sectionLabel "solo"
  \repeat volta 2 {
    g,4 a16( b a g) f4 c'16( d c bes) g4  d'16( ees d c ) d2 \break
    \section \sectionLabel "verso"
    b4. bes8 b4. bes8 b4 g d2 g4 g a g fis1 \break
    c'4. b8 c4. b8 c4 a fis2 c'4 c d c b1 \break
    b4. bes8 b4. bes8 b4 g d2 b'4 b c b e,1 \break
    g4. g8 fis4 g d' b c b e,2 fis g r8 b b b \break
    \section \sectionLabel "refrão"
    b4 r r8 b b b b4 r r8 b b b b4 a g fis e2 r8 a a a \break
    a4 a r8 a a a a2 r8 a a a a4 g fis e d2 r8 d d ees \break
    e4 e r8 d d ees e2 r8 d d ees e4 d e g fis2 r8 d d ees \break
    e2 r8 d d ees e2 r8 d d ees e4 fis g a b-. r r8 d, d ees \break
    e2 r8 d d ees e2 r8 b' b b b4 b c b e,1 \break
    g4. g8 fis8 fis g g d'4 b c b e,2 fis
  }
  \section \sectionLabel "final"
  g1 \break
}

bass = \relative c {
  \section
  r1 r r
  \section
  r1 r
  \section
  g4-. d-. g-. d-. g-. d-. g-. d8 e16( fis) g4-. d-. g-. d-. a'-. d,-. a'-. d,-.
  a'-. e-. a-. e8 a d,4-. a'-. d,-. d-. a'-. a,-. d-. d-. g, gis a d
  g4-. d-. g,-. d'-. g4-. d-. g,-. d'-. g-. d-. g8 f e d c4-. g-. c-. g-.
  cis-. e8( f) fis4-. fis-. b,-. d8( dis) e4-. e-. a,-. e'8( dis) d4-. d-. g8 b d b g4-. r
  \section
  b,4-. b-. dis r e-. e8 fis g4 r b,-. b-. b-. b-. e8 g b g e4 r
  a,4-. a-. a r d-. d8 fis a4 r e-. e-. cis-. cis-. d-. d8 a' d4 r
  g,4-. d-. g-. d-. g-. d-. g-. d-. g-. d-. g-. d-. a'-. d,-. a'-. d,-.
  a'4-. e-. a-. e-. d-. a'-. d,-. a'-. a, b c d g-. d8. e16 d8 c b a
  g4-. d'-. g-. d8 e16( fis) g4-. d-. g-. d-. g-. d-. g8 f e d c4-. g-. c-. g-.
  cis-. e8( f) fis4-. fis-. b,-. d8( dis) e4-. e-. a,-. e'8( dis) d4-. d-.
  \section
  g-. d-. g-. d-. g4-. d-. g8 e d b g1 \bar "|."
}

verseOne = \lyricmode {
  \repeat unfold 22 { \skip 1 }
  \set stanza = "1."
  Ei -- a, sal -- vos a -- van -- çai, na -- da de te -- mer
  Va -- mos fir -- mes ba -- ta -- lhar, pron -- tos pra ven -- cer
  Vai co -- nos -- co_o Ge -- ne -- ral, nos -- so bom Je -- sus
  E -- le nos da -- rá vi -- tó -- ria pe -- la cruz
}

verseTwo = \lyricmode {
  \repeat unfold 22 { \skip 1 }
  \set stanza = "2."
  Va -- mos tem -- plos le -- van -- tar por to -- do_o Bra -- sil
  A pre -- gar, sem des -- can -- sar, nos -- so Rei gen -- til
  Va -- mos mis -- sio -- ná -- rios ser, to -- dos, to -- dos nós
  Trans -- mi -- tin -- do com pra -- zer de Deus a voz
}

chorus = \lyricmode {
  A -- van -- te, pois, e sem pa -- rar, o E -- van -- ge lho_a -- nun -- ci -- ai
  O E -- van -- ge -- lho Qua -- dran -- gu -- lar de Deus, o nos -- so_e -- ter -- no Pai
  Pois Cris -- to sal -- va o pe -- ca -- dor pa -- ra que se -- ja_um bom cris -- tão
  Cu -- ra tam -- bém a su -- a dor, qual -- quer do -- en -- ça_e a -- fli -- ção
  Com seu po -- der quer ba -- ti -- zar, do céu vi -- rá pra nos le -- var
  E, com e -- le, nós ha -- ve -- mos sem -- pre de rei -- nar
}

\score {
  <<
    \new ChordNames \with {
      midiInstrument = #"electric piano 2"
      midiMaximumVolume = #0.95
    } \chordNames

    \new Staff {
      \set Staff.midiInstrument = #"voice oohs"
      \set Staff.midiMaximumVolume = #1
      \global
      \clef treble
      \melody
    }

    \addlyrics { \verseOne \chorus }
    \addlyrics { \verseTwo }

    \new Staff {
      \set Staff.midiInstrument = #"electric bass (finger)"
      \set Staff.midiMaximumVolume = #1
      \global
      \clef "bass_8"
      \bass
    }
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 120 }
}
