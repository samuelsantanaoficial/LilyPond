\version "2.24.1"

\include "drumpitch-init.ly"

\paper {
  #(set-paper-size "a5")
  top-margin = 12\mm    % Margem superior
  bottom-margin = 12\mm % Margem inferior
  inner-margin = 18\mm  % Margem interna (lado da encadernação)
  outer-margin = 12\mm  % Margem externa
  two-sided = ##t       % Ativa layout frente e verso
% indent = 0            % Remove a identação do primeiro sistema
  ragged-last = ##f     % Força o último sistema a ocupar largura total
  ragged-bottom = ##t   % Permite página "desalinhada" no final

% tagline = "© 2025 Samuel Santana | LilyPond 2.24.1"
  tagline = ##f
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
      "© 2025 Real Sigma Music"
    }
  }
  \pageBreak

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

  \score {
    \new DrumStaff <<
      \global
      \clef "percussion"
      \set Staff.instrumentName = \markup \bold \fontsize #2 "06."
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
}

\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.padding = #8
  }
}
