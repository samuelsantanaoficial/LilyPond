\version "2.24.4"

\include "data/my-guitar-fretboards.ly"

#(set-global-staff-size 18)

\paper {
  paper-width = 297\mm
  paper-height = 210\mm
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 15\mm
  right-margin = 15\mm
}

\header {
  title = "Todos Os Acordes"
  composer = "Samuel Santana da Purificação"
}

\markup \vspace #1.5

allChords = \chordmode {
  c d e f g a b
  cis dis fis gis ais
  des ees ges aes bes \break

  c:7 d:7 e:7 f:7 g:7 a:7 b:7
  cis:7 dis:7 fis:7 gis:7 ais:7
  des:7 ees:7 ges:7 aes:7 bes:7 \break
  
  c:7+ d:7+ e:7+ f:7+ g:7+ a:7+ b:7+ 
  cis:7+ dis:7+ fis:7+ gis:7+ ais:7+
  des:7+ ees:7+ ges:7+ aes:7+ bes:7+ \break
  
  c:m d:m e:m f:m g:m a:m b:m
  cis:m dis:m fis:m gis:m ais:m
  des:m ees:m ges:m aes:m bes:m \break
  
  c:m7 d:m7 e:m7 f:m7 g:m7 a:m7 b:m7
  cis:m7 dis:m7 fis:m7 gis:m7 ais:m7
  des:m7 ees:m7 ges:m7 aes:m7 bes:m7 \break
  
  c:m7+ d:m7+ e:m7+ f:m7+ g:m7+ a:m7+ b:m7+
  cis:m7+ dis:m7+ fis:m7+ gis:m7+ ais:m7+
  des:m7+ ees:m7+ ges:m7+ aes:m7+ bes:m7+ \break
  
  %c:sus2 d:sus2 e:sus2 f:sus2 g:sus2 a:sus2 b:sus2
  %cis:sus2 dis:sus2 fis:sus2 gis:sus2 ais:sus2
  %des:sus2 ees:sus2 ges:sus2 aes:sus2 bes:sus2 \break
  
  %c:sus4 d:sus4 e:sus4 f:sus4 g:sus4 a:sus4 b:sus4
  %cis:sus4 dis:sus4 fis:sus4 gis:sus4 ais:sus4
  %des:sus4 ees:sus4 ges:sus4 aes:sus4 bes:sus4 \break
  
  %c:dim d:dim e:dim f:dim g:dim a:dim b:dim
  %cis:dim dis:dim fis:dim gis:dim ais:dim
  %des:dim ees:dim ges:dim aes:dim bes:dim \break
  
  %c:m7.5- d:m7.5- e:m7.5- f:m7.5- g:m7.5- a:m7.5- b:m7.5-
  %cis:m7.5- dis:m7.5- fis:m7.5- gis:m7.5- ais:m7.5-
  %des:m7.5- ees:m7.5- ges:m7.5- aes:m7.5- bes:m7.5- \break
  
  %c:dim7 d:dim7 e:dim7 f:dim7 g:dim7 a:dim7 b:dim7
  %cis:dim7 dis:dim7 fis:dim7 gis:dim7 ais:dim7
  %des:dim7 ees:dim7 ges:dim7 aes:dim7 bes:dim7 \break
  
  %c:aug d:aug e:aug f:aug g:aug a:aug b:aug
  %cis:aug dis:aug fis:aug gis:aug ais:aug
  %des:aug ees:aug ges:aug aes:aug bes:aug \break
  
  %c:aug7 d:aug7 e:aug7 f:aug7 g:aug7 a:aug7 b:aug7
  %cis:aug7 dis:aug7 fis:aug7 gis:aug7 ais:aug7
  %des:aug7 ees:aug7 ges:aug7 aes:aug7 bes:aug7 \break
}


\score {
  <<
    \new ChordNames {
      \allChords
    }
    \new FretBoards \with {
      \override FretBoard.size = #1.3
      \override FretBoard.fret-diagram-details.fret-count = #4
      \override FretBoard.fret-diagram-details.barre-type = #'straight
      \override FretBoard.fret-diagram-details.number-type = #'arabic
      \override FretBoard.fret-diagram-details.dot-radius = #0.3
      \remove "Bar_number_engraver"
    } { 
      \allChords
    }
  >>
  \layout {
    indent = 0
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}