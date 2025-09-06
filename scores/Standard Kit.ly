\version "2.24.4"

\include "data/my-drum-style-table.ly"

#(set-global-staff-size 20)

\paper {
  paper-width = 150\mm
  paper-height = 120\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
}

\header {
  title = "Standard Kit"
  composer = "Samuel Santana"
}

drum = \drummode {
  bda^\markup { \center-align \rotate #90 "bumbo"}
  bd4^\markup { \center-align \rotate #90 "bumbo" }
  ss4^\markup { \center-align \rotate #90 "aro da caixa" }
  sn4^\markup { \center-align \rotate #90 "caixa" }
  sne4^\markup { \center-align \rotate #90 "caixa de efeito" }
  hh4^\markup { \center-align \rotate #90 "chimbal" }
  hhc4^\markup { \center-align \rotate #90 "chimbal fechado" }
  hho4^\markup { \center-align \rotate #90 "chimbal aberto" }
  hhp4^\markup { \center-align \rotate #90 "chimbal pedal" }
  tomh4^\markup { \center-align \rotate #90 "tom agudo" }
  tommh4^\markup { \center-align \rotate #90 "tom médio agudo" }
  tomml4^\markup { \center-align \rotate #90 "tom médio grave" }
  toml4^\markup { \center-align \rotate #90 "tom grave" }
  tomfh4^\markup { \center-align \rotate #90 "surdo agudo" }
  tomfl4^\markup { \center-align \rotate #90 "surdo grave" }
  cymc4^\markup { \center-align \rotate #90 "prato de ataque" }
  cymch4^\markup { \center-align \rotate #90 "prato china" }
  cymr4^\markup { \center-align \rotate #90 "prato de condução" }
  rb4^\markup { \center-align \rotate #90 "prato de condução (cúpula)" }
  cb4^\markup { \center-align \rotate #90 "cowbel" }
  hc4^\markup { \center-align \rotate #90 "palmas" }
}

\markup \vspace #1

\score {
  <<
    \new DrumStaff \with {
      drumStyleTable = #my-drum-style-table
    } {
      \time 4/4
      \clef varpercussion
      \drum
    }
  >>
  \layout {
    indent = 0
    \context {
      \DrumStaff
      \omit TimeSignature
      \remove "Bar_engraver"
    }
  }
  \midi { \tempo 4 = 70 }
}
