\version "2.24.4"

\include "data/my-guitar-style.ly"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  system-system-spacing = #'((basic-distance . 14))
}

\header {
  title = "MINUET IN G"
  opus = "BWV 114"
  composer = "Johann Sebastian Bach"
  instrument = "Violão"
}

soprano = {
  \set fingeringOrientations = #'(left)
  \mark \default
  \repeat volta 2 {
    <d'-4>4 g8 <a-2> b <c'-1>
    <d'-4>4 <g-0> g 
    <e'-0>4 <c'-1>8 <d'-4> e' <fis'-2>
    <g'-4>4 <g-0> g
    \break
    
    <c'-1>4 <d'-4>8 c' b <a-2>
    b4 <c'-1>8 b <a-2> g
    <fis-2>4 g8 <a-2> b g
    <b-0>8 <a-2>8 ~ a2
    \break 
    
    <d'-4>4 g8 <a-2> b <c'-1>  
    <d'-4>4 <g-0> g 
    <e'-0>4 <c'-1>8 <d'-4> e' <fis'-2> 
    <g'-4>4 <g-0> g 
    \break
    
    <c'-1>4 <d'-4>8 c' b <a-3> 
    b4 c'8 b <a-2> g 
    <a-2>4 b8 <a-2> g <fis-2_\4> 
    <g-0>2. 
    \break
  }

  \mark \default
  \repeat volta 2 {
    <b'-4>4 <g'-1>8 <a'-3> b' g' 
    <a'-4>4 <d'-1>8 <e'-4>\2 <fis'-1> <d'-1> 
    <g'-4>4 <e'-0>8 <fis'-2> g' <d'-3> 
    <cis'-3>4 <b-0>8 cis' a4 
    \break
    
    <a-2>8 b <cis'-2> <d'-3> e' <fis'-2> 
    <g'-4>4 <fis'-2> e' 
    <fis'-2> <a-3> <cis'-1> 
    <d'-4>2. 
    \break

    \mark \default
    <d'-3>4 <g-0>8 <fis-4> g4 
    <e'-0>4 <g-0>8 <fis-4> g4 
    <d'-4>4 <c'-1> <b-0> 
    <a-1>8 <g-0> <fis-3> g a4 
    \break
    
    r8 <e-1> <fis-3> g <a-1> b 
    <c'-1>4 b <a-1> 
    <b-0>8 <d'-4> g4 <fis-2> 
    <g-0>2. 
    \break
  }
}

alto = {
  \set fingeringOrientations = #'(left)
  <g,-3>2 \mf <a,-0>4
  <b,-2>2.
  <c-3>2.
  <b,-1>2.

  <a,-0>2.
  <g,-3>2.
  <d-3_\5>4_\5 <b,-1> <g,-3>
  <d-0>4 d8 <c-3> <b,-1> <a,-0>
  
  <b,-2>2 <a,-0>4 
  <g,-3>4 <b,-2> g, 
  <c-3>2. 
  <b,-2>4 <c-3>8 b, <a,-0> <g,-3>
  
  <a,-0>2 <fis,-2>4 
  <g,-3>2 <b,-1>4 
  <c-3>4 d4 <d-3_\5>4 
  <g,-2>2 <g,-1>4 

  <g-0>2. 
  <fis-2>2. 
  <e-2>4 <g-0> e 
  <a-2>2 r4 
  
  <a,-0>2. 
  <b,-2>4 <d-0> <cis-3> 
  <d-0>4 <fis,-2> <a,-0> 
  <d-0>4 d <c-3> 
  
  <b,-1>2 b,4 
  <c-3>2 c4 
  <b,-2>4 <a,-0> <g,-3> 
  d2._\5 
  
  <d-4_\5>2 <fis-3>4 
  <e-2>4 g <fis-4> 
  <g-0>4 <b,-2> <d-3_\5> 
  <g,-3>4 <d-0> g, 
}

\score {
  %\unfoldRepeats
  \new StaffGroup <<
    \new Staff << 
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
      \time 3/4
      \key g \major
      \clef "treble_8"
      \new Voice = "voiceOne" { \voiceOne \soprano }
      \new Voice = "voiceTwo" { \voiceTwo \alto }
    >>
  >>
  \layout { 
    indent = 0 
  }
  \midi { \tempo 4 = 110}
}
