\version "2.24.4"

\include "data/my-guitar-fretboards.ly"
\include "data/my-guitar-style.ly"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4")
  top-margin = 12\mm
  left-margin = 12\mm
  right-margin = 12\mm
  system-system-spacing = #'((padding . 4))

}

global = {
  \time 4/4
  \key g \major
}

cifra = \chordmode {
  % Introdução
  cis2:m7.5- fis:7 b,4.:m7 e4:aug7 e4.:7 a,2:7 d:7
  % Solo
  g2 bes,:maj7 ees:maj7 d:7
  % Verso
  g1*3 d1:7
  a1:m7 d:7 a2:m7 d:7 g4 gis:dim7 a:m7 d:7
  g1*2 g1:7 c
  cis2:m7.5- fis:7 b,:m7 e4:aug7 e:7 a,2:7 d:7 g1
  % Refrão
  b,1:7 e:m7 b,:7 e:m7
  a,1:7 d a,:7 d
  g1*3:6 d1
  a,1:m7 d:7 a,4:m7 b,:m7 c d:7 g2 d:7
  g1*2:6 g1:7 c
  cis2:m7.5- fis:7 b,:m7 e4:aug7 e:7 a,2:7 d:7
  % Final
  g1
}

melodia = \relative c' {
  \section \sectionLabel "Intro"
  e4-> e16( dis e fis) g8 fis g a b g16( fis) g8 c ~c b r4 e,8( g) b( a) fis( a) e'( d)
  \section \sectionLabel "Solo"
  \repeat volta 2 {
    g,4 a16( b a g) f4 c'16( d c bes) g4  d'16( ees d c ) d2
    \section \sectionLabel "Verso"
    b4. ais8 b4. ais8 b4 g d2 g4 g a g fis1
    c'4. b8 c4. b8 c4 a fis2 c'4 c d c b1
    b4. ais8 b4. ais8 b4 g d2 b'4 b c b e,1
    g4. g8 fis4 g d' b c b e,2 fis g r8 b b b
    \section \sectionLabel "Refrão"
    b4 r r8 b b b b4 r r8 b b b b4 a g fis e2 r8 a a a
    a4 a r8 a a a a2 r8 a a a a4 g fis e d2 r8 d d ees
    e4 e r8 d d ees e2 r8 d d ees e4 d e g fis2 r8 d d ees
    e2 r8 d d ees e2 r8 d d ees e4 fis g a b-. r r8 d, d ees
    e2 r8 d d ees e2 r8 b' b b b4 b c b e,1
    g4. g8 fis8 fis g g d'4 b c b e,2 fis
  }
  \section \sectionLabel "Final"
  g1 \bar "|."
}

versoUm = \lyricmode {
  \repeat unfold 22 { \skip 1 }
  \set stanza = "1."
  Ei -- a, sal -- vos a -- van -- çai, na -- da de te -- mer
  Va -- mos fir -- mes ba -- ta -- lhar, pron -- tos pra ven -- cer
  Vai co -- nos -- co_o Ge -- ne -- ral, nos -- so bom Je -- sus
  E -- le nos da -- rá vi -- tó -- ria pe -- la cruz
}

versoDois = \lyricmode {
  \repeat unfold 22 { \skip 1 }
  \set stanza = "2."
  Va -- mos tem -- plos le -- van -- tar por to -- do_o Bra -- sil
  A pre -- gar, sem des -- can -- sar, nos -- so Rei gen -- til
  Va -- mos mis -- sio -- ná -- rios ser, to -- dos, to -- dos nós
  Trans -- mi -- tin -- do com pra -- zer de Deus a voz
}

coro = \lyricmode {
  A -- van -- te, pois, e sem pa -- rar, o E -- van -- ge lho_a -- nun -- ci -- ai
  O E -- van -- ge -- lho Qua -- dran -- gu -- lar de Deus, o nos -- so_e -- ter -- no Pai
  Pois Cris -- to sal -- va o pe -- ca -- dor pa -- ra que se -- ja_um bom cris -- tão
  Cu -- ra tam -- bém a su -- a dor, qual -- quer do -- en -- ça_e a -- fli -- ção
  Com seu po -- der quer ba -- ti -- zar, do céu vi -- rá pra nos le -- var
  E, com e -- le, nós ha -- ve -- mos sem -- pre de rei -- nar
}

\header {
  title = "Hino da Igreja do Evagelho Quadrangular"
  composer = "Aimee Semple McPherson (1890 - 1944)"
  poet = "Adiel de Oliveira"
  arranger = "Samuel Santana da Purificação"
}

tom = c

\markup \vspace #1

\markup \column {
  \fill-line {
    \score {
      <<
        \new ChordNames {
          \chordmode {
            \transpose g \tom {
              c cis:m7.5- d d:7 ees:7+ e:7 e:7.5+ e:m7 fis:7 g g:6 g:7 gis:dim7 a:7 a:m7 bes:7+ b:7 b:m7
            }
          }
        }
        \new FretBoards \with {
          \fretsize #1.3
          \minfrets #4
          \barretype #'straight
          \numbertype #'arabic
          \dotradius #0.3
          \remove "Bar_number_engraver"
        } {
          \chordmode {
            \transpose g \tom {
              c cis:m7.5- d d:7 ees:7+ e:7 e:7.5+ e:m7 fis:7 g g:6 g:7 gis:dim7 a:7 a:m7 bes:7+ b:7 b:m7
            }
          }
        }
      >>
      \layout {
        indent = 0
        \context {
          \Score
          \remove "Bar_number_engraver"
        }
      }
    }
  }
}

\markup \vspace #1

\score {
  <<
    \new ChordNames { \transpose g \tom { \cifra } }
    \new Staff {
      \global
      \clef "treble_8"
      \transpose g \tom { \melodia }
    }
    \addlyrics { \versoUm \coro }
    \addlyrics { \versoDois }
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 120 }
}