\version "2.24.1"

#(set-global-staff-size 18)

barre = #(define-music-function (txt notes) (string? ly:music?) #{
  \once \override TextSpanner.bound-details.left.text = \markup { \bold \upright \concat { #txt " " } }
  \once \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
  \once \override TextSpanner.style = #'line                       % Estilo de linha
  \once \override TextSpanner.staff-padding = #1.5                 % Distância da pauta (padrão: 1.0)
  \once \override TextSpanner.bound-details.left.padding = #-1.5   % Espaço antes do texto
  \once \override TextSpanner.bound-details.right.padding = #-1.5  % Espaço após o texto

  <>^\startTextSpan #notes \stopTextSpan
#})

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  system-system-spacing = #'((basic-distance . 18))
}

global = {
  \key g \major
  \time 3/4
  \tempo "Moderato"
}

\header {
  title = "MINUET"
  subtitle = "from Finale, Act I \"don giovanni\" (Don Juan)"
  composer = "Wolfgang Amadeus Mozart"
  opus = "K. 527"
}

soprano = \relative {
  \mark \default 
  \set fingeringOrientations = #'(left)
  \repeat volta 2 {
    <b-4 d-3>4 <b d>8 <b d> <b d> <b d>
    \barre "III" { <b-2 d-1>8. <g'-1>16 d4 r }
    <a-2 c-1>4 <a c>8 <a c> <a c> <a c>
    <d-4>16 <c-1> (<b-0>) c <g b>4 r4
    <g-0 cis-1>4 <g cis>8 cis <g cis> cis
    <fis,-3 d'-2>8. <e'-0>16 <fis-1>4 r8 <a,-1 fis'-1>
    <b-0 g'-3>8. <e-0>16 <fis,-2 d'-1>4 <e-2 cis'-3>4
    <fis-2 d'-1>2 r4
  }
  \mark \default
  \repeat volta 2 {
    <fis'-1>4 fis8 fis fis fis
    g8. <d-4>16 d4 r
    <c-1>4 c8 c c c
    <b-0>8. <c-1>16  d4 r
    <e-0>8. \hide\< <fis-2>16 <g-4>8 g \! g g
    <g-4>8. \glissando <a-4>16 <b>4 -4 r8 b
    \barre "½ V" { <e,-1 c'-4>8. <a-1>16 }  <g-3>4 <fis-3> \hide\>
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
    <c-3>8 \< <g'-0> <e-1> g e g \!
    <b,-1>8 <g'-0> <d-0> g d g
    <d-0>4 d \> d
    <g,-2>4 <d'-0> g, \!
  }
}

\score {
  \new StaffGroup <<
    \new Staff <<
      \set fingeringOrientations = #'(left)
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
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
