barre = #(define-music-function (txt notes) (string? ly:music?) #{
  \once \override TextSpanner.bound-details.left.text = \markup { \bold \upright \concat { #txt " " } }
  \once \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
  \once \override TextSpanner.style = #'line                       % Estilo de linha
  \once \override TextSpanner.staff-padding = #1.5                 % Distância da pauta (padrão: 1.0)
  \once \override TextSpanner.bound-details.left.padding = #-1.5   % Espaço antes do texto
  \once \override TextSpanner.bound-details.right.padding = #-1.5  % Espaço após o texto

  <>^\startTextSpan #notes \stopTextSpan
#})