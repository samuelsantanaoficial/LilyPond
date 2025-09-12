\version "2.24.2"

global = {
  \time 4/4
  \tempo "Marcial"
}

\include "voz.ily"
\include "flauta.ily"
\include "tuba.ily"

\header {
  title = "Hino Nacional do Brasil"
  composer = "Francisco Manuel da Silva"
  poet = "Joaquim Osório Duque Estrada"
}

\score {
  <<
    \new Staff \with {
      midiInstrument = #"voice oohs"
      instrumentName = "Voz"
    } {
      \global
      \clef treble
      \voz
    }
    \addlyrics { \letra }
    \new Staff \with {
      midiInstrument = #"flute"
      instrumentName = "Flauta"
    }{
      \global
      \clef treble
      \flauta
    }
    \new Staff \with {
      midiInstrument = #"tuba"
      instrumentName = "Tuba"
    }{
      \global
      \clef bass
      \tuba
    }
  >>
  \layout { }
  \midi { \tempo 4 = 120 }
}

