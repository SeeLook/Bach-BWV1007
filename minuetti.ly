\version "2.19.80"


\include "global.ly"
\include "paper.ly"


#(set-global-staff-size 21)


\header {
  title = \markup  \center-column { \fontsize #3 {"Suita G-dur BWV 1007" } "Menuetto I & II" " "}
  composer = \markup \center-column { "Johan Sebastian Bach" " " }
}




\score {
  
  

  \new Staff {
    \set Staff.midiInstrument="acoustic guitar (nylon)"
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \override Staff.Stem #'length-fraction = #1.2
    \time 3/4
    \tempo "Menuetto I"
    \key g \major
    \clef "G_8"
    \relative c {
      g8 [ d'8 ] h'4 a8 [ h16
    c16 ] | % 2
    h8 [ a8 ] g8 [ fis8 ] g8 [
    d8 ] | % 3
    e8 [ g8 ] c8 [ a8 ] fis8 [
    d'8 ] | % 4
    <g,, d' h'>2 <d' a'>4 | % 5
    a8 [ fis'8 ] c'4 h8 [
    c16 d16 ] | % 6
    c8 [ h8 ] a8 [ g8 ] fis8
    [ e8 ] | % 7
    fis8 [ g16 a16 ] g8 [ fis8 ]
    e8 [ fis8 ] | % 8
    d4 a4 d,4 | % 9
    g8 [ d'8 ] h'4 a8 [ h16
    c16 ] | \barNumberCheck #10
    h8 [ a8 ] g8 [ fis8 ] g8 [
    d8 ] | % 11
    e8 [ g8 ] c8 [ a8 ] fis8 [
    d'8 ] | % 12
    <g,, d' h'>2 <d' a'>4 | % 13
    a8 [ fis'8 ] c'4 h8 [
    c16 d16 ] | % 14
    c8 [ h8 ] a8 [ g8 ] fis8
    [ e8 ] | % 15
    fis8 [ g16 a16 ] g8 [ fis8 ]
    e8 [ fis8 ] | % 16
    d4 a4 d,4 | % 17
    d'8 [ fis8 ] a4 g8 [ a16
    h16 ] | % 18
    a8 [ g8 ] fis8 [ e8 ] d8 [
    fis8 ] | % 19
    h,8 [ d8 ] gis8 [ a8 ] h8
    [ d8 ] | \barNumberCheck #20
    a,8 [ d'8 ] c8 [ h8 ]
    c4 | % 21
    dis,8 [ fis8 ] a8 [ c8 ] h8
    [ a8 ] | % 22
    h8 [ e,8 ] g,8 [ a'8 ] c8
    [ h8 ] | % 23
    a8 [ g8 ] fis8 [ e8 ] h8 [
    dis8 ] | % 24
    e,4. e'8 d8 [ c8 ] | % 25
    h8 [ d8 ] g4 d8 [ e16
    f16 ] | % 26
    f8 [ d8 ] e8 [ c8 ] c,8 [
    h'8 ] | % 27
    cis8 [ e8 ] a4 e8 [ fis16
    g16 ] | % 28
    g8 [ e8 ] fis8 [ d8 ] d,8 [
    a'8 ] | % 29
    d8 [ fis8 ] a8 [ c8 ] h8 [
    d8 ] | \barNumberCheck #30
    e,8 [ g8 ] h8 [ d8 ] c8
    [ e8 ] | % 31
    d8 [ fis,8 ] g8 [ h,8 ] d,8
    [ fis'8 ] | % 32
    <g, g'>2. | % 33
    d'8 [ fis8 ] a4 g8 [ a16
    h16 ] | % 34
    a8 [ g8 ] fis8 [ e8 ] d8 [
    fis8 ] | % 35
    h,8 [ d8 ] gis8 [ a8 ] h8
    [ d8 ] | % 36
    a,8 [ d'8 ] c8 [ h8 ]
    c4 | % 37
    dis,8 [ fis8 ] a8 [ c8 ] h8
    [ a8 ] | % 38
    h8 [ e,8 ] g,8 [ a'8 ] c8
    [ h8 ] | % 39
    a8 [ g8 ] fis8 [ e8 ] h8 [
    dis8 ] | \barNumberCheck #40
    e,4. e'8 d8 [ c8 ] | % 41
    h8 [ d8 ] g4 d8 [ e16
    f16 ] | % 42
    f8 [ d8 ] e8 [ c8 ] c8 [
    h8 ] | % 43
    cis8 [ e8 ] a4 e8 [ fis16
    g16 ] | % 44
    g8 [ e8 ] fis8 [ d8 ] d,8 [
    a'8 ] | % 45
    d8 [ fis8 ] a8 [ c8 ] h8 [
    d8 ] | % 46
    e,8 [ g8 ] h8 [ d8 ] c8
    [ e8 ] | % 47
    d8 [ fis,8 ] g8 [ h,8 ] d,8
    [ fis'8 ] | % 48
    <g, g'>2. | \bar "||" % 49
    \break
    
     
    \key g \minor
    \tempo "Menuetto II"
    b'8 [ a8 ] b8 [ d,8 ] 
    dis8 [ g,8 ] | \barNumberCheck #50
    f4 a'4 d,4 | % 51
    g8 [ fis8 ] g8 [ b,8 ] c8
    [ dis,8 ] | % 52
    d8 [ a'8 ] d8 [ g8 ] fis8 [
    a8 ] | % 53
    b8 [ a8 ] b8 [ d,8 ] dis8
    [ g,8 ] | % 54
    f4 a'4 d,4 | % 55
    g8 [ fis8 ] g8 [ b,8 ] c8
    [ e,8 ] | % 56
    d8 [ g'8 ] fis2 | % 57
    b8 [ a8 ] b8 [ d,8 ] dis8
    [ g,8 ] | % 58
    f4 a'4 d,4 | % 59
    g8 [ fis8 ] g8 [ b,8 ] c8
    [ dis,8 ] | \barNumberCheck #60
    d8 [ a'8 ] d8 [ g8 ] fis8 [
    a8 ] | % 61
    b8 [ a8 ] b8 [ d,8 ] dis8
    [ g,8 ] | % 62
    f4 a'4 d,4 | % 63
    g8 [ fis8 ] g8 [ b,8 ] c8
    [ e,8 ] | % 64
    d8 [ g'8 ] fis2 | % 65
    d8 [ fis8 ] a8 [ c8 ] dis8
    [ d8 ] | % 66
    c8 [ b8 ] a8 [ b8 ] 
    g4 | % 67
    c,8 [ e8 ] g8 [ b8 ] d8
    [ c8 ] | % 68
    b8 [ a8 ] g8 [ a8 ] f8 [
    dis8 ] | % 69
    d8 [ f8 ] b8 [ a8 ] b8 [
    d,8 ] | \barNumberCheck #70
    dis8 [ g8 ] b8 [ a8 ]
    b8 [ d8 ] | % 71
    c8 [ dis8 ] d8 [ b8 ]
    f8 [ a8 ] | % 72
    b8 [ f8 ] d8 [ f8 ] b,4
    | % 73
    b8 [ d8 ] f8 [ gis8 ] g8 [
    f8 ] | % 74
    dis8 [ g8 ] c8 [ d8 ]
    dis4 | % 75
    a,8 [ c8 ] dis8 [ g8 ] f8 [
    dis8 ] | % 76
    d8 [ f8 ] b8 [ c8 ]
    d4 | % 77
    fis,,8 [ a8 ] c8 [ dis8 ] d8
    [ c8 ] | % 78
    b8 [ d8 ] g8 [ a8 ] b8 [
    g8 ] \pageBreak | % 79
    c,8 [ b'8 ] a8 [ g8 ] d8 [
    fis8 ] | \barNumberCheck #80
    g,2. | % 81
    d'8 [ fis8 ] a8 [ c8 ] dis8
    [ d8 ] | % 82
    c8 [ b8 ] a8 [ b8 ] 
    g4 | % 83
    c,8 [ e8 ] g8 [ b8 ] d8
    [ c8 ] | % 84
    b8 [ a8 ] g8 [ a8 ] f8 [
    dis8 ] | % 85
    d8 [ f8 ] b8 [ a8 ] b8 [
    d,8 ] | % 86
    dis8 [ g8 ] b8 [ a8 ]
    b8 [ d8 ] | % 87
    c8 [ dis8 ] d8 [ b8 ]
    f8 [ a8 ] | % 88
    b8 [ f8 ] d8 [ f8 ] b,4
    | % 89
    b8 [ d8 ] f8 [ gis8 ] g8 [
    f8 ] | \barNumberCheck #90
    dis8 [ g8 ] c8 [ d8 ]
    dis4 | % 91
    a,8 [ c8 ] dis8 [ g8 ] f8 [
    dis8 ] | % 92
    d8 [ f8 ] b8 [ c8 ]
    d4 | % 93
    fis,,8 [ a8 ] c8 [ dis8 ] d8
    [ c8 ] | % 94
    b8 [ d8 ] g8 [ a8 ] b8 [
    g8 ] | % 95
    c,8 [ b'8 ] a8 [ g8 ] d8 [
    fis8 ] | % 96
    g,2._"Menuette I Da Capo" | \bar "||" % 97
    \break
    

    \bar "|."
    }

  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 73 4)
    }
  }
  \layout {
    ragged-last = ##t
  }

}




