\version "2.24.4"

barre = #(define-music-function (txt notes) (string? ly:music?) #{
  \once \override TextSpanner.bound-details.left.text = \markup { \bold \upright \concat { #txt " " } }
  \once \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
  \once \override TextSpanner.style = #'line                       % Estilo de linha
  \once \override TextSpanner.staff-padding = #1.5                 % Distância da pauta (padrão: 1.0)
  \once \override TextSpanner.bound-details.left.padding = #-1.5   % Espaço antes do texto
  \once \override TextSpanner.bound-details.right.padding = #-1.5  % Espaço após o texto

  <>^\startTextSpan #notes \stopTextSpan
#})

minfrets = #(define-music-function (num) (number?) #{
  \override FretBoard.fret-diagram-details.fret-count = #num
#})

fretsize = #(define-music-function (size) (number?) #{
  \override FretBoard.size = #size
#})

barretype = #(define-music-function (type) (symbol?) #{
  \override FretBoard.fret-diagram-details.barre-type = #type
#})

numbertype = #(define-music-function (type) (symbol?) #{
  \override FretBoard.fret-diagram-details.number-type = #type
#})

dotradius = #(define-music-function (radius) (number?) #{
  \override FretBoard.fret-diagram-details.dot-radius = #radius
#})

fretnumbersize = #(define-music-function (size) (number?) #{
  \override FretBoard.fret-diagram-details.fret-label-font-mag = #size
#})

fingerleft = { \set fingeringOrientations = #'(left) }