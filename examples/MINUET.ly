\version "2.24.1"

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 12\mm
  left-margin = 10\mm
  right-margin = 10\mm
  tagline = "© 2025 Samuel Santana | LilyPond 2.24.1"
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
  \repeat volta 2 {
    <b d>4 -4 -3 _\mf <b d>8 <b d> <b d> <b d>
    <b d>8.-2 -1 ^"C III ________" g'16-1 d4 r
    <a c>4 -2 -1 <a c>8 <a c> <a c> <a c>
    d16 -4 c -1 (b) -0 c <g b>4 r4
    <g cis>4 -0 -1 <g cis>8 cis <g cis> cis
    <fis, d'>8. -3 -2 e'16 -0 fis4 -1 r8 <a, fis'> -1 -1
    <b g'>8. -0 -3 e16 -0 <fis, d'>4 -2 -1 <e cis'>4 -2 -3
    <fis d'>2 -2 -1 r4
  }
}

alto = \relative {
  \repeat volta 2 {
    g,4 -2 b -1 d -0
    g4._\4 -3 g8\hide\4 b\hide\3 g\hide\4
    d4 -0 fis -4 d
    g,4. -3 g8 g g
    a4 -0 a8 a a a
    a4 -0 a'8 -1 d, -0 d d
    g,4 -2 a -0 a 
    d4_\5 -3 a -0 d_\5
  }
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \global
      \clef "treble_8"
      \new Voice = "soprano" { \voiceOne \soprano}
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new TabStaff \with { 
      stringTunings = #guitar-tuning 
    }
    <<
      \global
      \clef "tab"
      \new TabVoice = "soprano" { \voiceOne \soprano}
      \new TabVoice = "alto" { \voiceTwo \alto }
    >>
  >>
  \layout { 
    indent = 0
  }
  \midi {
    \tempo 4 = 114
  }
}