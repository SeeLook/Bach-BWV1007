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
      \partial8 d8^0 _\SCORDATURE  g^0 d^0 e^1 e c^2 d | % 1
      d g d h^! g^4 d' | % 2
      g16 a^2 h8^0 a a16 h c8^1 h | % 3
      < g,_4 d' h' >4. \trill < d' a'^1 >4 a'8 | %4
      h^0 fis^4 g^0 ~ g e^1 g | % 5
      a^2 e^1 g^0 ~ g  d^0 fis^4 | % 6
      g^0 h g e^2 h^1 d^0 | % 7
      cis^4 e^1 a^1 a,4^0 e'8^1 | % 8
      f^2 e g^0 g f a | % 9
      a g b b^3 a^2 g^0 | % 10
      f^3 e^2 d^0 a^0 d cis^3 | % 11
      d a fis^1 d4 \bar ":|.:" 
      a''8^1 | % 12
      a fis^3 g^0 g e^1 fis^4 | % 13
      fis16 g a8^2 fis d c'^1 h^0 | % 14
      h g a a fis g | % 15
      g16 a h8 g^0 e^2 d'^4 c^1 | % 16
      a^2 d^4 c^1 d,^0 c'^1 h^0 | % 17
      g^0 c h c,^3 h'^0 a^2 | % 18
      g fis^4 e^2 h^1 e^2 dis^1 | % 19
      e h^1 g^4 e4^1  g'8 | % 20
      a^2 fis^4 g cis16^1 d^2 e8^0 fis,^4 | % 21
      g e^1 f^2 h16^0 c^1 d8^3 g, | % 22
      f d e a16^2 h^0 c8^1 a | % 23 
      fis16^4 g a8^2 fis d4  a'8 | % 24
      b^3 a^2 c^1 c b^3 d^4 | % 25
      d c es^4 es d c | % 26
      b a g d g fis | % 27
      g h,!16^1 c^2 d8 g,^4 h d | % 28
      g e16^1 f^2 g8 h,^1 c^2 e^1 | % 29
      a^1 fis16^3 g^4_\4 a8^1 cis,^3 d^0 fis^4 | % 30
      h g16 a^2 h8 dis,^1 e^2 c'^1 | % 31
      e,^1 fis^3 d'^2 fis,^1 g^2 e'^3 | % 32
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