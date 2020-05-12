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
      \once \override TextScript #'extra-offset = #'(-7 . 1)
      g16-3 _\SCORDATURE d'-\pfi h'-\mfi (a-1-\ifi) h-\afi d,-\ifi h'-\afi d,-\ifi g, d' h' (a) h d, h' d,      | % 1
      g, e' c' (h) c e, c' e, g, e' c' (h) c e, c' e,      | % 2
      g, fis'-2 c' (h) c fis, c' fis, g, fis' c' (h) c fis, c' fis,      | % 3
      g,-\pfi g'-4-\pfi h-2-\mfi (a-1-\ifi) h-\afi g-4-\ifi h-\afi g-4-\ifi g,-\pfi g'-\ifi h-\afi (a-\mfi) h-\afi g-\ifi h-\afi fis-2-\ifi      | % 4
      g,-4 e'-1 h'-3( a-1) h-3 g-0 fis-3-\pfi g-2 e-1-\pfi g fis-2-\pfi g h,-1-\pfi d-0-\mfi cis-3-\ifi( h-1)      | % 5
      cis-3-\pfi g'-0-\pfi a-1-\mfi( g-\ifi) a-1 g-4 a g cis, g' a( g) a g a g      | % 6
      fis-3 a-1-\ifi d-2-\mfi( cis-1) d-\afi a-1 g-4 a fis-3 a g-4 a d,-\ifi fis-4-\mfi e-1-\ifi( d)      | % 7
      e,-1-\pfi h'-2-\afi g'-0 (fis-4) g h, g' h, e, h' g' (fis) g h, g' h,      | % 8
      e,-1 cis'-4 d-0 e-2 d cis-4 h-1 a \laissezVibrer g'-4 fis-3 e-1 d'-2 cis-1 h-3 a-1 g-4      | % 9
      fis-3 e-1 d-3 d'-2 a-1 d fis,-3 a d,-0 e-1 fis-3 a-1 g-4 fis-3 e-1 d-0      | % 10
      gis-1 d-3 f-4( e-2) f-4( d) gis d h' d, f( e) f( d) gis-\mfi d-\ifi      | % 11
      c-4-\pfi e-2 a-3 h c a e( d) c-\pfi e a h c a fis e      | % 12
      dis-1( fis-4) dis (fis) a-1 fis-3 a-1 fis-2 dis-4 (fis-2) dis (fis) a-1 fis a fis      | % 13
      g-4 fis-3 e-1 g-4 fis-1 g-2 a-4 fis-1 g-4( fis-3) e-1 d-0 c-2 h-1 a-0 g-4      | % 14
      fis-3-\pfi c'-2-\pfi d-4( c) d-0 c-2 d c fis, c' d (c )d c d c      | % 15
      g-4 h f'-2( e) f h, f' h, g h f' (e) f h, f' h,      | % 16
      g-4 c-2 e-1( d-0) e c e c g c e( d) e c e c      | % 17
      g-3 fis'-2 c'-4 (h-0) c fis, c' fis, g, fis' c' (h) c fis, c' fis,      | % 18
      g,-3 d' h' a-1 h g-0 fis-3 e-1 d-4 c-2 h-1 a-0 g-4 fis-3 e-1 d-0      | % 19
      cis'-4-\pfi a'-1-\ifi e'-0-\afi fis-1-\mfi g-3-\afi e-\ifi fis-\mfi g-\afi cis,,-\pfi a'-\ifi e'-0-\afi fis-\mfi g-\afi e-\ifi fis-\mfi g-\afi      | % 20
      c,,!-2-\pfi a'-1-\ifi d-2-\mfi e-0-\afi fis-1-\mfi d-\ifi e-\mfi fis-\afi c,-"P" a'-\ifi d-\mfi e-\afi fis-\mfi d-\ifi e-\mfi fis-\afi      | % 21
      c,-\pfi a'-1-\ifi d-3-\mfi fis-1-\afi a-2-\mfi cis-1-\afi d8-3-\mfi~ d16 a,,-0-\mfi h-1-\ifi c-2-\mfi d-0-\ifi e-1 fis-3 g-0      | % 22
      a-1-\afi fis-3 d-4 e-1 fis-3 g-0 a-2 h-0 c-1 a-2 fis-4 g-0 a-2 h-0 c-1 d-3      | % 23
      es-4( d-3) cis-2 d-3 d-3( c-1) h-0 c-1 c-1 a-2 fis-4 e-2 d-0 a h-1 c-2      | % 24
      d,-\pfi a'-\pfi d-\pfi fis-3 a-1-\ifi h-3-\mfi c-4-\ifi a-1-\mfi h-\afi g-\mfi d-\ifi c-2-\pfi h-1 g-4 a-0 h-1      | % 25
      d, g-4 h-1 d g-\ifi a-\mfi h-1-\ifi g-3-\mfi cis-2 b-3 a-1( b-3) b-3( a-2) gis-1 a-2      | % 26
      a-2 g!-3 fis-4 g g e-2 cis-4 h!-1 a-\pfi( cis-4) e-2 g-\ifi a-\pfi cis-\ifi d-2-\pfi cis-\ifi      | % 27
      d-2-\mfi a-1-\ifi fis-3-\pfi(e-1) fis-3-\pfi a-1-\ifi d,-4-\pfi fis-3-\ifi a,-\pfi d-4-\pfi cis-3-\pfi h-1 a-0 g-4 fis-3 e-1      | % 28
      d8 c''!16-\ifi h a g fis-4 e-2 d-0-\pfi c'-\ifi h a g fis e d      | % 29
      c! h'-\mfi a g fis e d c h a'-\ifi g fis e d c h      | % 30
      << { s4 fis'8-\ifi d-\mfi e-\ifi fis-\mfi g-\ifi e-\mfi | % 31
           fis d g e-\ifi fis d g e | % 32
           fis d e-\mfi fis-\afi g-\ifi a-\mfi h-\afi d,-\ifi | % 33
           a'-\mfi h-\afi c-\mfi d, h'-\afi c-\mfi d-\afi h-\mfi | % 34
           c-\afi h-\mfi c-\afi a-\mfi h-\ifi a-\mfi h-\ifi g-\mfi | % 35
           a-\ifi g-\mfi a-\ifi fis g fis g e | % 36
         } \\
         {
      a,16 g'-4 fis-3 e-2 fis-\pfi a, d a e' a, fis' a, g' a, e' a,      | % 31
      fis' a, d a g' a, e' a, fis' a, d a g' a, e' a,      | % 32
      fis' a, d a e' a, fis' a, g'-0 a, a' a, h' a, d a      | % 33
      a' a, h'-0 a, c' a, d a h' a, c' a, d' a, h' a,      | % 34
      c' a, h' a, c' a, a' a, h' a, a' a, h' a, g' a,      | % 35
      a' a, g' a, a' a, fis' a, g' a, fis' a, g' a, e' a,      | % 36
      } >>
      fis'-\ifi a d,-\mfi( e-1) f-2-\mfi d-4 fis-3-\mfi d-4 g-0-\ifi d-0 gis-4-\mfi d a'-2-\ifi d, b'-3-\mfi d,      | % 37
      h'-0-\ifi d, c'-\mfi d, cis'-\ifi d, d'-\mfi d, es'-\ifi d, e'-\mfi d, f'-\ifi d, fis'-\mfi d,      | % 38
      g'-2 h, d, h' g' h, g' h, g' h, d, h' g' h, g' h,      | % 39
      g' a,-1 d, a' g' a, g' a, g' a, d, a' g' a, g' a,      | % 40
      fis'-1 c-4 d, c' fis c fis c fis c d, c' fis _\rit c fis c      | % 41
      <g, h' h g'>1 \bar "|."
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




