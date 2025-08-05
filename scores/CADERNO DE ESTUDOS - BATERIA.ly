\version "2.24.1"

\include "drumpitch-init.ly"

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm    % Margem superior
  bottom-margin = 12\mm % Margem inferior
  inner-margin = 15\mm  % Margem interna (lado da encadernação)
  outer-margin = 10\mm  % Margem externa
  two-sided = ##t       % Ativa layout frente e verso
  indent = 0            % Remove a identação do primeiro sistema
  ragged-last = ##f     % Força o último sistema a ocupar largura total
  ragged-bottom = ##t   % Permite página "desalinhada" no final

  tagline = "© 2025 Samuel Santana | LilyPond 2.24.1"
}

global = {
  \set DrumStaff.drumStyleTable = #weinberg-drums-style
}

\book {
  % CAPA
  \markup \fill-line {
    \override #'(baseline-skip . 5)
    \center-column {
      \fontsize #3 "Samuel Santana"
      \vspace #7
      \fontsize #7 \bold "CADERNO DE ESTUDOS"
      \null
      \fontsize #7 "- BATERIA -"
      \vspace #3
      \fontsize #20 "♬"
      %\fontsize #24 "𝄢"
      %\fontsize #20 "𝄞"
      \vspace #12
      "© 2025 Real Sigma Music"
    }
  }
  \pageBreak

  \score {
    \header { piece = "Lição 1 -  Andamento ♩ = 130" }
    \new DrumStaff <<
      \global
      \clef "percussion"
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

  \score {
    \header { piece = "Lição 2 - Andamento ♩ = 120" }
    \new DrumStaff <<
      \global
      \clef "percussion"
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
  
  \score {
    \header { piece = "Lição 3 - Andamento ♩ = 140" }
    \new DrumStaff <<
      \global
      \clef "percussion"
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
  
  \score {
    \header { piece = "Lição 4 - Andamento ♩ = 120" }
    \new DrumStaff <<
      \global
      \clef "percussion"
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
  
  \score {
    \header { piece = "Lição 5 - Andamento ♩ = 130" }
    \new DrumStaff <<
      \global
      \clef "percussion"
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
  
  \score {
    \header { piece = "Lição 6 - Andamento ♩ = 120" }
    \new DrumStaff <<
      \global
      \clef "percussion"
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
  
  \score {
    \header { piece = "Lição 7 - Andamento ♩ = 120" }
    \new DrumStaff <<
      \global
      \clef "percussion"
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
}