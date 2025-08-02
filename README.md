# LilyPond para Iniciantes

## Introdução

LilyPond é uma linguagem de marcação para partitura. Esta documentação foca no básico necessário para escrever partituras simples.

## Versão

```lilypond
\version "2.22.2"  % versão usada
```

## Claves
```lilypond
\clef "treble"     % clave de Sol
\clef "bass"       % clave de Fá 
\clef "treble_8"   % clave de Sol uma oitava abaixo
\clef "bass^8"     % clave de Fá uma oitavada acima

\clef "tab"        % tablatura simples (usada com \new TabStaff)
\clef "percussion" % usada com \new DrumStaff {...} ou \drummode {...}
```

## Armadura de Clave

```lilypond
\key g \major  % sol maior
\key a \minor  % lá menor
```

## Fórmula de compasso
```lilypond
\time 4/4  % quatro por quatro
\time 3/4  % três por quatro
\time 6/8  % seis por oito
```

## Andamento

```lilypond
\time 4 = 60  % 60 BPM
```

## Notas
```lilypond
c d e f g a b  % cifras
```

## Oitavas
```lilypond
c
c'  % uma oitava a cima
c'' % duas oitavas a cima
c,  % uma oitava a baixo
c,, % duas oitavas a baixo
```

## Duração
```lilypond
c1   % semibreve
e2   % mínima
d4   % semínima
g8   % colcheia
f16  % semicolcheia
a32  % fusa
b64  % semifusa
```

## Notas pontuadas
```lilypond
c4.   % semínima pontuada
d8.   % colcheia pontuada
```

## Alterações ou acidentes
```lilypond
bes   % si bemol (es = bemol)
fis   % fá sustenido (is = sustenido)
cisis % dó dobrado sustenido
feses % fá dobrado bemol
```

## Notas simultâneas
```lilypond
<c e g>  % todas juntas
```

## Ligadura de frase (slur)
```lilypond
( c4 d e )  % Coloca ligadura entre essas notas
```

## Ligadura de valor (tie)
```lilypond
c4 ~ c4  % Sustenta o som da mesma nota
```

## Arpejo

```lilypond
<e g c'>4\arpeggio  % sinal de arpejo
```

## Dinâmicas
```lilypond
\pp   % pianíssimo 
\p    % piano
\mp   % mezo-piano
\mf   % mezo-forte
\f    % forte
\ff   % fortíssimo
```

## Número da corda
```lilypond
d\4 a\3 d\2 f\1  % número da corda dentro de um círculo
```

## Dedilhado
```lilypond
c -3 e -2 g c -1 % número do dedo
```

## Appoggiatura
```lilypond
\appoggiatura d16 c8        % uma nota
\appoggiatura {c16 d16} c8  % duas notas
```

## Quiáltera (tuplet)
`3/2` significa "3 notas no tempo de 2".
Você pode usar `\tuplet 5/4`, `7/4`, etc., conforme o agrupamento desejado.
```lilypond
\tuplet 3/2 { c8 d e }  % tercina em semicolcheia
\tuplet 3/2 { c4 d e }  % tercina em semínimas
```

## Staccato (.)
```lilypond
c4-.  % nota curta
```

## Acentuação (>)
```lilypond
e2->  % nota acentuada
```

## Copyright (©)
```lilypond
\paper {
  tagline = "© 2025 Samuel Santana"
}
```

## Cabeçalho
```lilypond
\header {
  title = "Título da Música"
  composer = "Nome do compositor"
}
```

## Glissando
```lilypond
f4 \glissando b  % slide entre Fá e Sí
```

## Tamanho do papel
```lilypond
\paper {
  #(set-paper-size "a5") % a4, a3, A7...
}
```

```lilypond
\paper {
  paper-width = 45\mm
  paper-height = 210\mm  % exemplo, altura de A5
}
```

## Pedal de sustain
```lilypond
\relative c' {
  C4 \sustainOn d e f \sustainOff  % sustain do Dó até o Fá
}
```

## Quebra de linha (break)
```lilypond
\break
```

