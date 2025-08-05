\version "2.24.1"

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  
  % Espaçamento entre sistemas com distância fixa
  system-system-spacing = #'((basic-distance . 24))
  
  tagline = \markup {
    \fontsize #-2 "© 2025 Samuel Santana | LilyPond 2.24.1"
  }
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
  \repeat volta 2 {
    <b d>4 -4 -3 <b d>8 <b d> <b d> <b d>
    <b d>8.-2 -1 ^"C III ________" g'16-1 d4 r
    <a c>4 -2 -1 <a c>8 <a c> <a c> <a c>
    d16 -4 c -1 (b) -0 c <g b>4 r4
    \break
    <g cis>4 -0 -1 <g cis>8 cis <g cis> cis
    <fis, d'>8. -3 -2 e'16 -0 fis4 -1 r8 <a, fis'> -1 -1
    <b g'>8. -0 -3 e16 -0 <fis, d'>4 -2 -1 <e cis'>4 -2 -3
    <fis d'>2 -2 -1 r4
    \break
  }
  \mark \markup { \bold \box "B" }
  \repeat volta 2 {
    fis'4 -1 fis8 fis fis fis
    g8. d16 -4 d4 r
    a4 -1 a8 a a a
    b8. -0 c16 -1 d4 r
    e8. \hide\< -0 fis16 -2 g8 -4 g \! g g
    g8. -4 \glissando a16 -4 b4 -4 r8 b
    <e, c'>8. -1 -4 ^"C V _" a16 -1 g4 -3 fis -3 \hide\>
    <b, g'>2 -0 -3 r4 \!
  }
}

alto = \relative {
  \repeat volta 2 {
    g,4 -2 \mf b -1 d -0
    g4._\4 -3 g8\hide_\4 b\hide_\3 g\hide_\4
    d4 -0 fis -4 d
    g,4. -3 g8 g g
    \break
    a4 -0 a8 a a a
    a4 -0 a'8 -1 d, -0 d d
    g,4 -2 a -0 a 
    d4_\5 -3 a -0 d_\5
    \break
  }
  \repeat volta 2 {
    a8 -0 \mf d -0 c -3 d c d
    g,8 -3 d' -0 b -2 d b d
    fis,8 -2 d' -0 c -3 d c d
    g,8 -3 d' -0 b -2 d b d
    \break
    c8 \< -3 g' -0 e -1 g \! e g
    b,8 -1 g' -0 d -0 g d g
    d4 -0 d d \>
    g,4 -2 d' -0 g, \!
    \break
  }
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
  >>
  \layout { indent = 0 }
  \midi { 
    \tempo 4 = 114 
    midiComposer = "Samuel Santana" 
  }
}