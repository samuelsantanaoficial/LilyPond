\version "2.24.1"

#(set-global-staff-size 18)

\include "drumpitch-init.ly"

\paper {
  #(set-paper-size "a5") % Tamanho do papel (A5)
  two-sided = ##t        % Ativa margens diferentes para páginas pares/ímpares
  top-margin = 10\mm
  bottom-margin = 10\mm
  inner-margin = 15\mm   % Margem interna (lado da encadernação)
  outer-margin = 10\mm   % Margem externa
  binding-offset = 5\mm  % Offset adicional para não cortar na encadernação
  ragged-last = ##f     % Força o último sistema a ocupar largura total
  ragged-bottom = ##t   % Permite página "desalinhada" no final

  tagline = ##f

  tocTitleMarkup = \markup \column { \null \fill-line { \null \huge \bold "Índice"  \null } \null }
  
  tocItemMarkup = \markup \fill-line { \fromproperty #'toc:text \fromproperty #'toc:page }
  
  tocItemMarkup = \tocItemWithDotsMarkup

}

global = {
  \set DrumStaff.drumStyleTable = #weinberg-drums-style
}

\book {
  % CAPA
  \markup \fill-line {
    \override #'(baseline-skip . 5)
    \center-column {
      \fontsize #2 "Samuel Santana"
      \vspace #8
      \fontsize #6 \bold "CADERNO DE ESTUDOS"
      \null
      \fontsize #6 "- BATERIA -"
      \vspace #3
      \fontsize #20 "♬"
      %\fontsize #24 "𝄢"
      %\fontsize #20 "𝄞"
      \vspace #10
      "© 2025 Real Sigma Music | LilyPond 2.24.1"
    }
  }
  \pageBreak
  
  \markup \vspace #1
  \markuplist \table-of-contents
  \pageBreak

  \tocItem \markup "Estudo 01 (Funck)"
  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "01."
      \tempo 4 = 130
      \new DrumVoice {
        \voiceOne
        \drummode {
          cymc4 hh hh hh
          hh4 hh hh hh
          \break
          hh4 hh hh hh
          hh4 hh hh hh
          \bar "|."
        }
      }
      \new DrumVoice {
        \voiceTwo
        \drummode {
          bd4\mf sn bd sn
          bd4 sn bd sn
          \break
          bd4 sn bd sn
          bd4 sn bd sn
          \bar "|."
        }
      }
    >>
  }

  \markup \vspace #1

  \tocItem \markup "Estudo 02 (Rock)"
  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "02."
      \tempo 4 = 120
      \new DrumVoice {
        \voiceOne
        \drummode {
          cymc4 hh hh hh
          hh4 hh hh hh
          \break
          hh4 hh hh hh
          hh4 hh hh hh
          \bar "|."
        }
      }
      \new DrumVoice {
        \voiceTwo
        \drummode {
          bd8_\mf bd sn4 bd8 bd sn4
          bd8 bd sn4 bd8 bd sn4
          \break
          bd8 bd sn4 bd8 bd sn4
          bd8 bd sn4 bd8 bd sn4
          \bar "|."
        }
      }
    >>
  }

  \markup \vspace #1

  \tocItem \markup "Estudo 03"
  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "03."
      \tempo 4 = 140
      \new DrumVoice {
        \voiceOne
        \drummode {
          cymc4 hh hh hh
          hh4 hh hh hh
          \break
          hh4 hh hh hh
          hh4 hh hh hh
          \bar "|."
        }
      }
      \new DrumVoice {
        \voiceTwo
        \drummode {
          bd4_\mf sn bd8 bd sn4
          bd4 sn bd8 bd sn4
          \break
          bd4 sn bd8 bd sn4
          bd4 sn bd8 bd sn4
          \bar "|."
        }
      }
    >>
  }

  \markup \vspace #1

  \pageBreak

  \tocItem \markup "Estudo 04 (Pop)"
  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "04."
      \tempo 4 = 120
      \new DrumVoice {
        \voiceOne
        \drummode {
          cymc4 hh hh hh
          hh4 hh hh hh
          \break
          hh4 hh hh hh
          hh4 hh hh hh
          \bar "|."
        }
      }
      \new DrumVoice {
        \voiceTwo
        \drummode {
          bd4_\mf sn8 bd bd4 sn
          bd4 sn8 bd8 bd4 sn
          \break
          bd4 sn8 bd8 bd4 sn
          bd4 sn8 bd8 bd4 sn
          \bar "|."
        }
      }
    >>
  }

  \markup \vspace #1

  \tocItem \markup "Estudo 05 (Pop & Rock)"
  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "05."
      \tempo 4 = 130
      \new DrumVoice {
        \voiceOne
        \drummode {
          cymc4 hh hh hh
          hh4 hh hh hh
          \break
          hh4 hh hh hh
          hh4 hh hh hh
          \bar "|."
        }
      }
      \new DrumVoice {
        \voiceTwo
        \drummode {
          bd4_\mf sn8 sn bd bd sn4
          bd4 sn8 sn bd bd sn4
          \break
          bd4 sn8 sn bd bd sn4
          bd4 sn8 sn bd bd sn4
          \bar "|."
        }
      }
    >>
  }

  \markup \vspace #1

  \tocItem \markup "Estudo 06"
  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "06."
      \tempo 4 = 105
      \new DrumVoice {
        \voiceOne
        \drummode {
          cymc4 hh hh hh
          hh4 hh hh hh
          \break
          hh4 hh hh hh
          hh4 hh hh hh
          \bar "|."
        }
      }
      \new DrumVoice {
        \voiceTwo
        \drummode {
          bd4_\mf sn8 bd r4 sn
          bd4 sn8 bd8 r4 sn
          \break
          bd4 sn8 bd8 r4 sn
          bd4 sn8 bd8 r4 sn
          \bar "|."
        }
      }
    >>
  }

  \markup \vspace #1

  \pageBreak

  \tocItem \markup "Estudo 07"
  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "07."
      \tempo 4 = 120
      \new DrumVoice {
        \voiceOne
        \drummode {
          cymc4 hh hh hh
          hh4 hh hh hh
          \break
          hh4 hh hh hh
          hh4 hh hh hh
          \bar "|."
        }
      }
      \new DrumVoice {
        \voiceTwo
        \drummode {
          bd4_\mf sn r8 bd sn4
          bd4 sn r8 bd sn4
          \break
          bd4 sn r8 bd sn4
          bd4 sn r8 bd sn4
          \bar "|."
        }
      }
    >>
  }

  \markup \vspace #1
  
  \tocItem \markup "Estudo 08"
  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "08."
      \tempo 4 = 146
      \new DrumVoice {
        \voiceOne
        \drummode {
          cymc4 hho hh hh
          hh4 hh hh hh
          \break
          hh4 hh hh hh
          hh4 hh hh hh
          \bar "|."
        }
      }
      \new DrumVoice {
        \voiceTwo
        \drummode {
          bd4_\mf <bd sn> bd <bd sn>
          bd4 <bd sn> bd <bd sn>
          \break
          bd4 <bd sn> bd <bd sn>
          bd4 <bd sn> bd <bd sn>
          \bar "|."
        }
      }
    >>
  }

  \markup \vspace #1
  
  \tocItem \markup "Estudo 09 (Ballad)"
  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "09."
      \tempo 4 = 67
      \new DrumVoice {
        \voiceOne
        \drummode {
          cymc8 hh hh hh hh hh hh hh
          hh hh hh hh hh hh hh hh
          \break
          hh hh hh hh hh hh hh hh
          hh hh hh hh hh hh hh hh
          \bar "|."
        }
      }
      \new DrumVoice {
        \voiceTwo
        \drummode {
          bd4\mf sn bd sn
          bd4 sn bd sn
          \break
          bd4 sn bd sn
          bd4 sn bd sn
          \bar "|."
        }
      }
    >>
  }
}
