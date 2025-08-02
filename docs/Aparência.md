# Aparência

## Cabeçalho
```lilypond
\header {
  title = "Título"
  subtitle = "Subtítulo"
  composer = "Compositor"
}
```

## Tamanho do Papel
```lilypond
\paper {
  #(set-paper-size "a4")
  #(set-paper-size "a5")
}
```

```lilypond
\paper {
  paper-width = 45\mm
  paper-height = 210\mm
}
```

## Margens
```lilypond
\paper {
  top-margin = 10\mm
  bottom-margin = 12\mm
  left-margin = 10\mm
  right-margin = 10\mm
}
```

## Copyright
```lilypond
\paper {
  tagline = "© 2025 Samuel Santana"
}
```

## Quebra de Linha
```lilypond
\break
```