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
    piece = \markup { \bold { \fontsize #3 "Gigue " }
     \concat {"( Allegro " \smaller \smaller \general-align #Y #DOWN \note #"4" #1 " = 100 )" }
    }
  }

  \new Staff {
    \set Staff.midiInstrument="acoustic guitar (nylon)"
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \override Staff.Stem #'length-fraction = #1.2
    \time 6/8
    \key g \major
    \clef "G_8"
    \relative c {
      \once \override TextScript #'extra-offset = #'(-6 . 0)
      \partial8 d8 _\SCORDATURE  g d e e c d | % 1
      d g d h g d' | % 2
      g16 a h8 a a16 h c8 h | % 3
      < g, d' h' >4. \trill < d' a' >4 a'8 | %4
      h fis g ~ g e g | % 5
      a e g ~ g  d fis | % 6
      g h g e h d | % 7
      cis e a a,4 e'8 | % 8
      f e g g f a | % 9
      a g b b a g | % 10
      f e d a d cis | % 11
      d a fis d4 \bar ":|.:" 
      a''8 | % 12
      a fis g g e fis | % 13
      fis16 g a8 fis d c' h | % 14
      h g a a fis g | % 15
      g16 a h8 g e d' c | % 16
      a d c d, c' h | % 17
      g c h c, h' a | % 18
      g fis e h e dis | % 19
      e h g e4  g'8 | % 20
      a fis g cis16 d e8 fis, | % 21
      g e f h16 c d8 g, | % 22
      f d e a16 h c8 a | % 23 
      fis16 g a8 fis d4  a'8 | % 24
      b a c c b d | % 25
      d c es es d c | % 26
      b a g d g fis | % 27
      g h,!16 c d8 g, h d | % 28
      g e16 f g8 h, c e | % 29
      a fis16 g a8 cis, d fis | % 30
      h g16 a h8 dis, e c' | % 31
      e, fis d' fis, g e' | % 32
      d, e16 fis g a h8 g fis | % 33
      g d h g4 \bar ":|." % 34
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