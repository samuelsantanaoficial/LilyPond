\version "2.24.1"

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 8\mm
  right-margin = 8\mm

  % Espaçamento entre sistemas com distância fixa
  system-system-spacing = #'((basic-distance . 24))

  tagline = \markup \fontsize #-2 "© 2025 Samuel Santana | LilyPond 2.24.1"
}

global = {
  \key g \major
  \time 3/4
  \tempo "Moderato"
}

\header {
  title = "MINUET"
  composer = "WOLFGANG AMADEUS MOZART K. 527 (1787)"
  subtitle = "from Finale, Act I \"don giovanni\" (Don Juan)"
}

soprano = \relative {
  \hide\mark \markup { \bold \box "A" }
  \set fingeringOrientations = #'(left)
  \repeat volta 2 {
    <b-4 d-3>4 <b d>8 <b d> <b d> <b d>
    <b-2 d-1>8. ^"C III ____________" <g'-1>16 d4 r
    <a-2 c-1>4 <a c>8 <a c> <a c> <a c>
    <d-4>16 <c-1> (<b-0>) c <g b>4 r4
    <g-0 cis-1>4 <g cis>8 cis <g cis> cis
    <fis,-3 d'-2>8. <e'-0>16 <fis-1>4 r8 <a,-1 fis'-1>
    <b-0 g'-3>8. <e-0>16 <fis,-2 d'-1>4 <e-2 cis'-3>4
    <fis-2 d'-1>2 r4
  }
  \mark \markup { \bold \box "B" }
  \repeat volta 2 {
    <fis'-1>4 fis8 fis fis fis
    g8. <d-4>16 d4 r
    <a-1>4 a8 a a a
    <b-0>8. <c-1>16  d4 r
    <e-0>8. \hide\< <fis-2>16 <g-4>8 g \! g g
    <g-4>8. \glissando <a-4>16 <b>4 -4 r8 b
    <e,-1 c'-4>8. ^"C V _" <a-1>16  <g-3>4 <fis-3> \hide\>
    <b,-0 g'-3>2 r4 \!
  }
}

alto = \relative {
  \set fingeringOrientations = #'(left)
  \repeat volta 2 {
    <g,-2>4 \mf <b-1> <d-0>
    <g-3_\4>4. g8\hide_\4 b\hide_\3 g\hide_\4
    <d-0>4 <fis-4> d
    <g,-3>4. g8 g g
    <a-0>4 a8 a a a
    <a-0>4 <a'-1>8 <d,-0> d d
    <g,-2>4 <a-0> a
    <d-3_\5>4 <a-0> d \hide_\5
  }
  \repeat volta 2 {
    <a-0>8 \mf <d-0> <c-3> d c d
    <g,-3>8 <d'-0> <b-2> d b d
    <fis,-2>8 <d'-0> <c-3> d c d
    <g,-3>8 <d'-0> <b-2> d b d
    <c-3>8 \< <g'-0> <e-1> g \! e g
    <b,-1>8 <g'-0> <d-0> g d g
    <d-0>4 d d \>
    <g,-2>4 <d'-0> g, \!
  }
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \set fingeringOrientations = #'(left)
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
  >>
  \layout {
    indent = 0
  }
  \midi {
    \tempo 4 = 112
  }
}
