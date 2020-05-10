% This file is part of "Suita G-dur BWV 1007" project
% Copyright on the terms of Creative Commons Legal Code CC0 1.0 Universal license
% Authors: Martyna Danysz (martynadanysz@gmail.com) and Tomasz Bojczuk (seelook@gmail.com)

\version "2.19.80"

\language "deutsch"


\include "global.ly"
\include "paper.ly"

#(set-global-staff-size 21)


%\header {
 % title = \markup  \center-column { \fontsize #3 {"Suita G-dur BWV 1007" } "Sarabande" " "}
  %composer = \markup \center-column { "Johan Sebastian Bach" " " }
%}


\score {
    \header {
    piece = \markup { \fontsize #2 "Sarabande" }
  }

  \new Staff {
    \set Staff.midiInstrument="acoustic guitar (nylon)"
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \override Staff.NoteCollision #'merge-differently-dotted = ##t
    \override Staff.Stem #'length-fraction = #1.2
    \time 3/4
    \key g \major
    \clef "G_8"
    \relative c {
      
     <<{ \once \override TextScript #'extra-offset = #'(-8 . 5) % wyskakuje ostrzeżenie -> log
    h'4^1 _\SCORDATURE c4.^4 h8^1
      | % 2
      fis16_\4-3 a_\3-1 h^0 c_\3-3 h4^1\startTrillSpan a8_\3-1\stopTrillSpan g-0
      | % 3
      d'^4 [f,^3] e8.^1\tuplet 3/2 {d32_4 c_2 h_1} c8 e_1\4
      | % 4
      fis16_4 c'_\2^1 h^0 g_\4^2 fis4^1\startTrillSpan e8^1\stopTrillSpan d^0
      | % 5
      a'16^1 fis^4 d^0 c^2 h8.^1 g16^4 h_\5^1 d^0 g^0 a^1
      | % 6
      h^0 g^0 e_\5^4 d^1 cis8.^2\startTrillSpan a32^0\stopTrillSpan h^1 cis16^3 d^0 e^1 fis^4
      | % 7
      g^0 cis^1 d^2 cis d a^1 g^0 fis^4 e^1 g^0 fis^4 d^0
      | % 8
      a^0 d e^1 cis^4 d4 d,\bar ":|.:" % 
      fis'8^1 e16_\5^4 d^0 c'4.^\4^2 h16_\3^1 a_\4^4     
      | % 18
      h\3-1 fis^1 g^0 e^2 dis8.^1\startTrillSpan e16^2\stopTrillSpan fis^4 g^0 a^2 h^0
      | % 19
      dis,^1 a'^2 h^0 c^1 h8^0\startTrillSpan a16^2\stopTrillSpan g^0 fis^4 e^1 a^1 fis^4
      | % 20
      g^0 e^1 fis^4 dis^1 e4^2 e,^1
      | % 21
      d'8.^0 e32^1 f^2 e8.^1 fis16^3 g^0 a h^0 c^1_\3
      | % 22
      gis,^3_\6 d''^4_\3 c^2 h^1 c8.^1 h16^1 a^4_\4 g^2 fis^1 e^4_\5
      | % 23
      d16^2 e16^4 fis^1_\4 g^2 a^4 c^2_\3 h^1 g^0
      | % 24
      d^0 g^0 a^1 fis^4 g4^0 g,^4\bar ":|."
      
      |}\\% 33
       
       {<d' g,_2>4 <g,_2g'^3>2
        s4 <g_2 d'>4 s4
        s2.
        s4 <d a'> s4
        s2.
        s2.
        s2.
        s2.
        <a' d,>8 s8 <d, a' fis'>2
        <d' g,_2>4 a4 s4
        s2.
        s2.
        h4_1  <g _4c_2 e>4 s4
        s4 <a_4 e'_3>4
        
        
       }>> \bar ":|."
    }

  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 8)
    }
  }
  \layout {
    %ragged-last = ##t
  }

}




