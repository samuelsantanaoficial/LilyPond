# LilyPond

## Primeiros passos:

### Score
```lilypond
\version "2.24.1"

\score {
  ...
}
```

### Notas
```lilypond
\version "2.24.1"

\score {
  { c d e f g a b c }
}
```
<img width="443" height="180" alt="image" src="https://github.com/user-attachments/assets/79480e00-34aa-4830-84bb-efa926ef520a" />

Para escrever as notas na oitava correta use: 
- `'` para subir uma oitava
- `,`para descer um oitava

```lilypond
\version "2.24.1"

\score {
  \absolute { c' d' e' f' g' a' b' c'' }
}
```
<img width="443" height="139" alt="image" src="https://github.com/user-attachments/assets/79f8523b-cd4e-4202-bc6b-2ba9b06a4552" />

Esse é o comportamento padrão `\absolute {}`, você pode usar `\relative {}` para facilitar a escrita.
```lilypond
\version "2.24.1"

\score {
  \relative { c' d e f g, a b c }
}
```
Usando `\relative {}` o LilyPond vai escolher a oitava da nota em relação a nota anterior

<img width="463" height="144" alt="image" src="https://github.com/user-attachments/assets/1b47e423-fff4-452f-887a-040b85f6f0ca" />

### Duração das notas
- 1 Semibreve
- 2 Mínima
- 4 Semínima
- 8 Colcheia
- 16 Semicolcheia
- 32 Fusa
- 64 Semifusa

```lilypond
\version "2.24.1"

\score {
  \relative { c'1 d2 e4 f8 g16 a32 a64 }
}
```
<img width="672" height="139" alt="image" src="https://github.com/user-attachments/assets/8157701b-97fe-4ea8-ac8c-53472e2ea3a8" />

Para notas pontuadas:
```lilypond
\version "2.24.1"

\score {
  \relative { c'2. d4 e4. f8 g8. a16 }
}
```
<img width="483" height="142" alt="image" src="https://github.com/user-attachments/assets/e950ab73-14a9-4ae4-b5b7-1788e068800f" />

### Bemol & Sustenido
```lilypond
\version "2.24.1"

\score {
  \relative { g' gis ges gisis geses g! }
}
```

<img width="421" height="126" alt="image" src="https://github.com/user-attachments/assets/44d39c39-388e-47a1-879a-b93866a2be89" />


```lilypond
```

```lilypond
```

```lilypond
```

```lilypond
```

```lilypond
```

