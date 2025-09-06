\version "2.24.4"

\include "data/my-guitar-style.ly"
\include "data/my-guitar-fretboards.ly"

#(set-global-staff-size 20)

\paper {
  paper-width = 160\mm
  paper-height = 120\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
}

global = {
  \key c \major
  \time 4/4
}

\header {
  title = "VIOLÃO CLÁSSICO"
  composer = "Samuel Santana da Purificação"
}

\markup \vspace #1

\score {
  <<
    \new ChordNames {
      \chordmode { d1:m7 g:7 c:7+ }
    }
    \new FretBoards \with {
      \fretsize #1
      \minfrets #5
      \barretype #'straight
      \numbertype #'arabic
      \dotradius #0.3
      \fretnumbersize #0.7
    } {
      \chordmode { d1:m7 g:7 c:7+ }
    }
    \new Staff <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \relative {
        \fingerleft
        <d a' c f>2 \f \arpeggio a4 d
        <g,-3>8 <b-2> d g b <f'-1> b, g
        <c,-3>8 g' b g e' g, b g
        \barre "III" { <c,-1 g'-3 b-2 e-4 g-1>2. \arpeggio <c-3_\6>4 }
      }
      \new TabStaff <<
        \global
        \clef moderntab
        \relative {
          <d a' c f>2 \f \arpeggio a4 d
          <g,-3>8 <b-2> d g b <f'-1> b, g
          <c,-3>8 g' b g e' g, b g
          \barre "III" { <c,-1 g'-3 b-2 e-4 g-1>2. \arpeggio <c-3_\6>4 }
        }
      >>
    >>
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 112 }
}
