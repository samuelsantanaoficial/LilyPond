\version "2.24.4"

\include "data/my-drum-style-table.ly"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  system-system-spacing = #'((basic-distance . 18))
}

\header {
  title = "Drums Ballad"
  composer = "Samuel Santana"
}

drum = \drummode {
  \section
  \sectionLabel \markup\rounded-box "Fill A"
  <<
    { r1 }
    \\
    { bd4 \mf <hhp ss>4. tomml16 bd <hhp sn>8 tomfh8 }
  >>
  
  \section
  \sectionLabel \markup\rounded-box  "Main A"
  <<
    { cymc4 s2. s1*3 }
    \\
    {
      bd4 hhp r hhp
      r4 hhp r hhp
      bd4 hhp r hhp8 bd
      bd4 hhp r hhp
    }
  >>
  \break

  \section \sectionLabel \markup\rounded-box  "Fill B"
  <<
    { hh8 hh hh hh hho4 r }
    \\
    { bd4 ss8. bd16 bd8 \grace tomh16 tommh8 <hhp sn>16 tommh tomfh tomfl }
  >>
  
  \section \sectionLabel \markup\rounded-box  "Main B"
  <<
    {
      cymc8 hh hh hh hh hh hh hho
      hhc8 hh hh hh hh hh hh hh
      hho8 hhc hh hh hh hh hh hh
      hh8 hh hh hh hh hh hh hho
    }
    \\
    {
      bd4 ss8 bd bd4 ss
      bd4 ss8 bd bd4 ss
      bd4 ss8 bd bd4 ss
      bd4 ss8 bd bd4 ss
    }
  >>
  \break

  \section \sectionLabel \markup\rounded-box  "Fill C"
  <<
    { hh8 hh hh hh \appoggiatura {hh8 hh } hho4 r }
    \\
    { bd8. bd16 r8 bd r16 sn sn tomml32 tomml sn16 \grace tomh32 tommh16 tomml tomfh }
  >>
  
  \section \sectionLabel \markup\rounded-box  "Main C"
  <<
    {
      cymc8 hh hh hh hh hh hh hh
      hh8 hh hh hh hh hh hh hh
      hh8 hh hh hh hh hh hh hh
      hh8 hh hh hh hh hh hh hho
    }
    \\
    {
      bd4 sn8. bd16 bd8 bd8 sn4
      bd4 sn8. bd16 bd8 bd8 sn4
      bd4 sn8. bd16 bd8 bd8 sn4
      bd4 sn8. bd16 bd8 bd8 sn4
    }
  >>
  \break
  
  \section \sectionLabel \markup\rounded-box  "Fill D"
  <<
    { rb8 rb cymc rb rb4 hho }
    \\
    { bd8 bd sn8. bd16 bd sn toml bd32 bd sn8 tomml16 toml }
  >>

  \section \sectionLabel \markup\rounded-box  "Main D"
  <<
    {
      cymc8 rb rb rb rb rb rb rb
      rb rb rb rb rb rb rb rb
      rb rb rb rb rb rb rb rb
      rb rb rb rb rb rb rb rb
    }
    \\
    {
      bd4 sn8. bd16 bd8 bd8 sn4
      bd4 sn8. bd16 bd8 bd8 sn4
      bd4 sn8. bd16 bd8 bd8 sn4
      bd4 sn8. bd16 bd8 bd8 sn4
    }
  >>

  \bar "|."
}

\score {
  <<
    \new DrumStaff \with {
      drumStyleTable = #myDrumStyleTable
    } {
      \time 4/4
      \clef varpercussion
      \drum
    }
  >>
  \layout { indent = 0 }
  \midi { \tempo 4 = 70 }
}