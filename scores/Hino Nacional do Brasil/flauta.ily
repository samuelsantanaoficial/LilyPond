\version "2.24.4"

flauta = \relative c'' {
  \key f \major
  \partial 16*5
  c16 \ff c8. \trill ( b32 c )
  \repeat volta 2 {
    f8 [ r16 f ] f8. \trill ( e32 f ) a8 r16 a a8. \trill ( gis32 a )
    c4 f,2-> \sfz c8. \p c16
    f8. ( e16 ) g8. ( f16 ) a8. ( g16 ) bes8. ( a16 )
    fis4 ( g ) r8. d16 \ff d8. \trill ( cis32 d )
    g8 [ r16 g16 ] g8. \trill ( fis32 g ) bes8 r16 bes bes8. \trill ( a32 bes )
    d4 g,2-> \sfz g8 ( f )
    \grace g ( f8 ) ( e ) \grace f ( e ) ( d ) \grace e ( d ) ( c ) \grace d ( c ) ( bes )
    gis4 ( a ) r8. c16 \p c8. \trill ( b32 c )
    f8 [ r16 f ] f8. \trill ( e32 f ) a8 [ r16 f ] f8. \trill ( e32 f )
    d8 [ r16 g ] g8. \trill ( fis32 g ) bes8 [ r16 g ] g8. \trill ( fis32 g ) e8 [ r16 a ] a8. \trill ( gis32 a ) c8 [ r16 a ] a8. \trill ( gis32 a )
    f8 [ r16 bes ] bes8. \trill ( a32 bes ) g8 [ r16 c ] c8. \trill ( b32 c ) a4 f'2-> \sfz e8.-> \ff d16-^ c4-> r e-> r
    r2 r4 c, \p
    \section
    f8. \< e16 f8. g16 a8. g16 a8. bes16 \!
    b4. \> ( e16 c f,8 ) \! r c8. c16
    f8. ( e16 ) g8. ( f16 ) a8. ( g16 ) bes8. ( a16 )
    fis4 ( g ) r c,
    g'8. \< fis16 g8. a16 bes8. a16 bes8. c16 \!
    cis4. \> ( d16 bes g8 ) \! r c,8. c16
    g'8. ( fis16 ) a8. ( g16 ) bes8. ( a16 ) c8. ( bes16 )
    gis4 ( a ) r a-> \f
    bes4-> ( a ) r8 a \grace c8 ( bes8. ) ( a16 )
    a4 d2-> \grace d8 ( c8. ) bes16
    \grace c8 ( bes ) ( a ) \grace bes ( a ) ( g ) \grace a ( g ) ( f ) \grace g ( f ) ( e )
    \grace f ( e4 ) ( d ) r g-> \f
    a4-> ( g ) r8 g \grace b ( a8. ) ( g16 )
    g4 c2-> b8 \> ( a )
    \grace b8 ( a ) ( g ) \grace a ( g ) ( f ) \grace g ( f ) ( e ) \grace f ( e ) ( d ) \!
    \grace e8 ( d4 ) <c c'>-> \ff r2
    r8 c16 ( d e f g a ) bes4-> g8-> e->
    c8-> g'-. e-. c-. bes-. r c4-> \f
    \section
    f8. e16 f8. g16 a8. g16 a8. bes16
    b4. \> ( c16 a f8 ) \! r c8. c16
    f8. ( e16 ) g8. ( f16 ) a8. ( g16 ) bes8. ( a16 )
    fis4 ( g ) r c,
    g'8. \< fis16 g8. a16 bes8. a16 bes8. c16 \!
    cis4. \> ( d16 bes g8 ) \! r c,8. c16
    g'8. ( fis16 ) a8. ( g16 ) bes8. ( a16 ) c8. ( bes16 )
    gis4 ( a ) r r8. f16 \p
    \section
    g8. ( f16 e8. f16 ) e8. ( f16 g8. f16 )
    f4. ( g16 a bes4 ) r8. g16
    a8. ( g16 fis8. g16 ) fis8. ( g16 a8. g16 )
    g4. ( a16 b c4 ) r8. a16 \<
    bes8. ( a16 gis8. a16 ) gis8. ( a16 bes8. a16 ) \!
    a4 d-> ( \ff ~ \tuplet 3/2 { d8 c bes } ) \tuplet 3/2 { d,8 ( a' g } )
    g4-> ( f ) r8 e \f f g
    bes8 ( a ) e ( f ) cis ( d ) bes' ( g )
    g4-> ( f ) r8 g a bes
    b8 ( c ) a-. f-. \tuplet 3/2 { d8 e f } \tuplet 3/2 { g8 a bes }
    a8-. bes16 ( a ) g f e d \tuplet 3/2 { c8 ( e ) d } \tuplet 3/2 { c8 d e }
  }
  \alternative {
    { f4-> r r8. c16 \ff c8. \trill ( b32 c ) }
    { f4-> f'-> c-> a-> }
  }
  f4-> \grace g ( \tuplet 3/2 { f8 ) ( e f ) } \grace b ( \tuplet 3/2 { a8 ) ( gis a ) } \grace d ( \tuplet 3/2 { c8 ) ( b! c ) }
  f4-> r a-> r8. f,16
  f2-> r \fermata \bar "|."
}
