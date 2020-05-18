% This file is part of "Cello Suite in G-major BWV 1007" project
% Copyright on the terms of Creative Commons Legal Code CC0 1.0 Universal license
% Authors: Martyna Danysz (martynadanysz@gmail.com) and Tomasz Bojczuk (seelook@gmail.com)


\version "2.19.80"


\include "global.ly"
\include "paper.ly"

#(set-global-staff-size 21)


%\header {
%  title = \markup  \center-column { \fontsize #3 {"Cello Suite in G-major BWV 1007" } "Prelude" " "}
%  composer = \markup \center-column { "Johann Sebastian Bach" " " }
%}



\score {
  \header {
    piece = \markup { \fontsize #2 "Prelude" }
  }

  \new Staff {
    \set Staff.midiInstrument="acoustic guitar (nylon)"
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \override Staff.Stem #'length-fraction = #1.2
    \time 4/4
    \key g \major
    \clef "G_8"
    \relative c {
      \tempo "Moderato" 4=100
      \once \override TextScript #'extra-offset = #'(-8 . 3)
      g16_\pfi^3_\6 _\SCORDATURE d'^0_\ifi h'^2_\3_\mfi (a-1) h_\mfi d,-\ifi h'-\mfi d,-\ifi g, d' h' (a) h d, h' d,      | % 1  g16_\pfi^3_\6 -> palec p się jakoś dziwnie przesunął
      g, e'^1 c'^4_\3 (h)^3 c e, c' e, g, e' c' (h) c e, c' e,      | % 2
      g, fis'^1 c'^4_\3 (h)^1 c fis, c' fis, g, fis' c' (h) c fis, c' fis,      | % 3
      g,-\pfi g'-4_\ifi_\4 h-2_\mfi_\3 (a-1) h-\mfi g-4-\ifi h-\mfi g-4-\ifi g,-\pfi g'-\ifi h-\mfi (a) h-\mfi g-\ifi h-\mfi fis-1-\ifi      | % 4
      g,-4_\6 e'-1 h'-3( a-1) h-3 g-4_\4 fis-3 g-4 e-1 g fis-3 g h,-1 d-4_\5-\mfi cis-3-\ifi( h-1)      | % 5
      cis-3 g'-4_\4 a-1( g^0_\3) a-1 g-0 a g cis, g' a( g) a g a g      | % 6
      fis-3 a-1 d-2( cis-1) d a-1 g-4_\4 a fis-3 a g-4 a d,^4_\5 fis-3 e-1 ( d-0)      | % 7
      e,-1 h'-1 g'^4_\4 (fis-3) g h, g' h, e, h' g' (fis) g h, g' h,      | % 8
      e,-1 cis'-3 d-0 e-1 d cis-3 h-1 a \laissezVibrer g'-0_\afi fis-3_\mfi e-1_\ifi d'-2 cis-1 h-0 a-1 g-0      | % 9
      fis-3 e-1 d-3 d'-2 a-1 d fis,-3 a d,-0 e-1 fis-3 a-1 g-0 fis-3 e-1 d-0      | % 10
      gis-1 d-0 f-3( e-2) f-4( d) gis d h' d, f( e) f( d) gis-\mfi d-\ifi      | % 11
      c-3-\pfi e-1 a-2 h-0 c-1_\2 a e( d) c-\pfi e a h c a fis^4 e^1      | % 12
      dis-1( fis-4) dis (fis) a-2 fis-4 a-2 fis-4 dis-1 (fis-4) dis (fis) a-2 fis a fis      | % 13 
      g-4_\4 fis-3 e-1 g fis-3 g a-1_\3 fis-3 g-4( fis-3) e-1 d-0 c-2 h-1 a-0 g-4      | % 14
      fis-3-\pfi c'-1 d-4( c) d-0 c-2 d c fis, c' d (c )d c d c      | % 15
      g-4 h-1 f'-2( e-1) f h, f' h, g h f' (e) f h, f' h,      | % 16
      g-4 c-2 e-1( d-0) e c e c g c e( d) e c e c      | % 17
      g-3 fis'-1 c'-2_\3 (h-1_\3) c fis, c' fis, g, fis' c' (h) c fis, c' fis,      | % 18 x
      g,-3 d'^0 h'^0 a-1 h g-0 fis-3 e-1 d-0 c-2 h-1 a-0 g-4 fis-3 e-1 d-0      | % 19
      cis'-3 a'-1 e'-4_\2 fis-1 g-2 e fis g cis,, a' e' fis g e fis g      | % 20
      c,,!-3 a'-1 d-4 e-0 fis-2 d e fis c, a' d e fis d e fis      | % 21
      c,-3 a'-1 d-4 fis-1 a-4 cis-1 d8-2~ d16 a,,-0 h-1 c-2 d-0 e-1 fis-3 g-0      | % 22
      a-2 fis-4 d-0 e-1 fis-3 g-0 a-2 h-0 c-1 a-2 fis-4 g-0 a-2 h-0 c-1 d-3      | % 23
      es-4( d-3) cis-2 d-3 d-3( c-1) h-0 c-1 c-1 a-2 fis-4 e-2 d-0 a h-1 c-2      | % 24
      d, a' d fis-4 a-2 h-0 c-1 a-2 h g d c-2 h-1 g-4 a-0 h-1      | % 25
      d, g-4 h-1 d g a-2 h-0 g-0 cis-2 b-3 a-1( b-3) b-3( a-1) gis-1 a-2      | % 26
      a-2 g!-0 fis-4 g g e-1 cis-3 h!-1 a ( cis-4) e-1 g a-1 cis-1 d-2 cis      | % 27
      d-2 a-1 fis-3 (e-1) fis-3 a-1 d,-0 fis-3 a, d-0 cis-3 h-1 a-0 g-4 fis-3 e-1      | % 28
      d8 c''!16 h a g-0 fis-4 e-1 d-0 c' h a g fis e d      | % 29 xxxxxx
      c!-3 h' a g fis e d c h-1 a' g fis e d c h      | % 30
      << { s4 fis'8 d^0 e^1 fis^3 g^4\4 e | % 31
           fis d g e fis d g e | % 32
           fis d^0 e^1 fis^3 g^4\4 a^1\4 h^3\4 d,^0 | % 33
           a'^1\4 h^3\4 c^4\4 d,^0 h'^1\4 c^2\4 d^4\4 h^1 | % 34     ->raz znaczki strun są powyżej, raz poniżej palca
           c^2 h^1 c^4 a^1 h^3 a^1 h^4 g^1 | % 35
           a^3 g^1 a^4 fis^1 g^2 fis^1 g^4 e^1 | % 36
         } \\
         {
      a,16 g'-0 fis-3 e-1 fis a,_\pfi d a_\pfi e' a,_\pfi fis' a,_\pfi g' a,_\pfi e' a,_\pfi      | % 31
      fis' a, d a g' a, e' a, fis' a, d a g' a, e' a,      | % 32
      fis' a, d a e' a, fis' a, g' a, a' a, h' a, d a      | % 33
      a' a, h' a, c' a, d a h' a, c' a, d' a, h' a,      | % 34
      c' a, h' a, c' a, a' a, h' a, a' a, h' a, g' a,      | % 35
      a' a, g' a, a' a, fis' a, g' a, fis' a, g' a, e' a,      | % 36
      } >>
      fis' a d,( e-1) f-2 d-0_\pfi fis-1 d-0_\pfi g-1\4 d-0_\pfi gis-1 d^0_\pfi a'-1 d,^0_\pfi b'-1 d,^0_\pfi      | % 37
      h' d,_\pfi c' d,_\pfi cis' d,_\pfi d' d,_\pfi es' d,_\pfi e' d,_\pfi f' d, fis' d,      | % 38
      g'-1_\afi h,-2\3_\ifi d,^0_\pfi h'_\ifi g'_\afi h, g' h, g' h, d, h' g' h, g' h,      | % 39
      g'-3 a,-1 d, a' g' a, g' a, g' a, d, a' g' a, g' a,      | % 40
      fis'-1 c-4\3 d, c' fis c fis c fis c d, c' fis _\rit c fis c      | % 41
      <g,_3 h'_2 h^0 g'^1>1 \bar "|."
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




