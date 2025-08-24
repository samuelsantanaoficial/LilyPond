\version "2.24.4"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a5")
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 12\mm
  right-margin = 12\mm
  system-system-spacing.basic-distance = #16
}

global = {
  \key c \major
  \time 4/4
  \clef treble 
}

melody = \relative c'' {
  \repeat volta 2 {
    r8 e e d e d e d
    \section
    c1
    r4 c8 c d4 c
    a4 g2.
    r8 g g g a g a g
    f'1
    r4 f8 f e4 d
    d4 c2.
  }
  \repeat volta 2 { 
    r4 c d8 d e4
    \section
    f1
    r4 f8 f f f f4
    e1
    r4 e8 e f4 e
    d1
  } 
  \alternative {
    {
      r4 d8 d c4 d
      e1
    }
    {
      r4 f8 f e4 d
      c1 \bar "|."
    }
  }
}

verse = \lyricmode {
  Se co -- me -- çar -- mos a o -- rar,
  Es -- se tem -- plo tre -- me
  Se co -- me -- çar -- mos a o -- rar, 
  sal -- va -- re -- mos vi -- das

  E -- li -- as o -- rou!
  E o fo -- go des -- ceu!
  Jo -- su -- é o -- rou e o Sol pa -- rou,
  e o Sol pa -- rou.
}

harmonia = \chordmode {
  g,1 c1*2 g, d1:m7 g,:7 c 
  c1:7 f d:m7.5- c a,:7 d:m7 g,:7 c g,:7 c
}

\header {
  title = "Se Começarmos A Orar"
  composer = "Josué Barbosa Lira"
}

\markup {
  \vspace #2
  \fill-line {
    \line {
      \override #'(font-name . "Helvetica")
      \override #'(size . 1.3)
      \override #'(fret-diagram-details . ((fret-count . 4)(barre-type . straight)(number-type . arabic)(dot-radius . 0.3))) {
        \center-column {
          \fontsize #1.5 C
          \fret-diagram-terse #"x;3;2;o;1;o;"
        } \hspace #2
        \center-column {
          \fontsize #1.5 \concat{ Dm \super 7 }
          \fret-diagram-terse #"x;x;o;2;1-(;1-);"
        } \hspace #2
        \center-column {
          \fontsize #1.5 \concat{ D \super ø }
          \fret-diagram-terse #"x;5;6;5;6;x;"
        } \hspace #2
        \center-column {
          \fontsize #1.5 F
          \fret-diagram-terse #"1-(;3;3;2;1;1-);"
        } \hspace #2
        \center-column {
          \fontsize #1.5 G
          \fret-diagram-terse #"3;2;o;o;3;3;"
        } \hspace #2
        \center-column {
          \fontsize #1.5 \concat{ G \super 7 }
          \fret-diagram-terse #"3;2;o;o;o;1;"
        } \hspace #2
        \center-column {
          \fontsize #1.5 \concat{ A \super 7 }
          \fret-diagram-terse #"x;o;2;o;2;o;"
        }
      }
    }
  }
}

\markup \vspace #1

\score {
  <<
    \new ChordNames { \harmonia }
    \new Staff { \global \melody }
    \addlyrics { \verse }
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 134 }
}
