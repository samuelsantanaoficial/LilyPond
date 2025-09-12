\version "2.24.4"

tuba = \relative c, {
  \key f \major
  \partial 16*5
  r16 r4
  \repeat volta 2 {
    f4-> \ff r a-> r
    c4-> f2-> \sfz r4
    f,4 \p f f f
    e2 r
    g4-> \ff r bes-> r
    d4-> g,2-> \sfz r4
    c4 \p c c c
    f2 r
    f,4 \p  c' a f
    bes4 d bes g
    c4 e c a
    d4 bes e c
    f4 b,2-> \sfz r4
    c4-> \ff r c,-> r
    f4-> f-. \p f-. f-.
    \section
    f4-. f-. f-. f-.
    f4-. f-. f-. f-.
    f4-. f-. f-. f-.
    e4-. e-. e-. e-.
    e4-. e-. e-. e-.
    e4-. e-. e-. e-.
    e4-. e-. e-. e-.
    f4-. f-. f-. r
    r8 a \f cis e a4 r
    r4 d,-> ( g, ) r
    a4-. \> a-. a-. a-. \!
    r8 d a f d4 r
    r8 g \f b d g4 r
    r4 e-> ( f, ) r
    g4-. \> g-. g-. g-. \!
    c,4 c-> \ff r8 c-> e-> g->
    bes4-> g8-> e-> c-> c16 ( d e f g a
    bes4 ) r4 r2
    \section
    f4-. \f f-. f-. f-.
    f4-. f-. f-. f-.
    f4-. f-. f-. f-.
    e4-. e-. e-. e-.
    e4-. e-. e-. e-.
    e4-. e-. e-. e-.
    e4-. e-. e-. e-.
    f4-. f-. f-. r
    \section
    a4 \p c f, a
    bes4 f' d bes
    b4 d g, b
    c4 g' e c
    cis4 \< e a, cis \!
    d4 f \ff  bes, bes
    c4 c c r
    f,4-> \f a-> bes-> g->
    c4-> c-> bes-> bes->
    a4-> f-> bes-> g->
    c4-> r c,-> r
  }
  \alternative {
    { f4-> f-> f-> r }
    { f'4-> f,-> a-> c-> }
  }
  f4-> f-> c-> a->
  f4-> r f'-> r8. f,16
  f2-> r2 \fermata
  \bar "|."
}