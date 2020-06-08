% This file is part of "Cello Suite in G-major BWV 1007" project
% Copyright on the terms of Creative Commons Legal Code CC0 1.0 Universal license
% Authors: Martyna Danysz (martynadanysz@gmail.com) and Tomasz Bojczuk (seelook@gmail.com)

\version "2.20.0"

\language "deutsch"


\include "global.ly"
\include "paper.ly"

#(set-global-staff-size 21)


%\header {
% title = \markup  \center-column { \fontsize #3 {"Cello Suite in G-major BWV 1007" } "Sarabande" " "}
%composer = \markup \center-column { "Johan Sebastian Bach" " " }
%}


\score {
  \header {
    piece = \markup {
      \bold { \fontsize #3 "Allemande " }
      \concat {"( Moderato " \smaller \smaller \general-align #Y #DOWN \note #"4" #1 " = 104 )" }
    }
  }
  \new Staff {
    \set Staff.midiInstrument="acoustic guitar (nylon)"
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \override Staff.NoteCollision #'merge-differently-dotted = ##t
    \override Staff.Stem #'length-fraction = #1.2
    \time 4/4
    \key g \major
    \clef "G_8"
    \relative c' {
      \partial 16
      \repeat volta 2 {
        \once \override TextScript #'extra-offset = #'(-7 . 2)
        h16_\SCORDATURE^0 |
        <g,_4 d' h'>4 ~ <d' h'>16 a'16^1 g16^0 fis16^4 g16^0 d16^0 e16^1 fis16^4 g16^0 a16^2 h16^0 c16^1 | % 3
        d16^3 h16^0 g16^0 fis16^4 g16 e16 d16 c16^2 h16^1 c16 d16 e16 fis16 g16 a16 h16
        | % 4
        c16^1 a16^2 g16^0 fis16 g16 e16^1 fis16^4 g16^0 a,16^0 d16^0 fis16^4 g16 a16 h16^0 c16^1 a16
        | % 5
        h16^0 g16^0 g16 d16^0 d16 h16^1 h16 g16^4 g8. h'16^0 c16^1 h16 a16^2 g16^0 | % 6
        a16 h16 c16 a16 g16 fis16^4 g16 a16 dis,8.^1 c'16^2 h16 a16^3 g16 fis16^4 | % 7
        g16 e16^2 e16 h16^1 h16 g16^4 g16 e16^1 e8. h'16^1 e16^1 g16^4_\4 fis16^3 a16^1 | % 8
        g16^0 fis16^4 e16^1 fis16 g16 cis16^2 g16 fis16^4 g16 cis16 e,16^1 fis16^4 g16 e16^1
        a,16^0 g'16^0 | % 9
        fis8^4 d16^0 e16^1 fis16 d16 g16^0 e16 fis16 d16 fis16 g16 a16^2 h16^0 c16^1 a16 |
        h16^0 d,16^0 g,16^4 d'16 h'16^0 g16^0 a16^1 fis16^4 g16^0 e16^1 g16 a16 h16 cis16^1 d16^2 
        h16^0 | % 11
        cis16^1 e,16^1 g,16^3 e'16 cis'16 a16 h16^0 d16^3 cis16^2 a16^1 d16^3 h16^0 cis16^2 a16^1
        e'16^0 g,16^0 | % 12
        fis8.^4\trill d'16^2 a16^1 g16^0 fis16^4 e16^1 d16^0 a'16 g16^0 e16 fis16 d16 a'16^2 c,16^3 | % 13
        h8.^1\trill g'16^0 d16^0 c16^2 h16^1 a16^0 g16^4 d'16^0 c16 a16 h16 g16 d'16^0 fis,16^3 | % 14
        e16^1 g16^4 a16^0 h16 cis16^4 d16^0 e16 fis16 g16^0 a16^1 cis16^2 d16^3 e16^0 a,16^1 g'8^4 | % 15
        d,16^0 g'16^4 fis16^2 e16^0 fis16^2 d16^3 a16^1 d16 d,16 fis16^4 a16^2 c16^1 h8.^0 a16^1 | % 16
        <g,_4 d' h'>8. a'16^1 g16 fis16 e16^1 d'16^3 cis16^2 e16^0 a,16^1 g16^0 fis16 d16 a16^0 cis16^1 | % 17
        d,8.^0 a'16^0 d16^0 fis16^4 a16^1 cis16^1 d16^2 a16 fis16 d16 d,8.^0
      }
      \repeat volta 2 {
        a''16 | % 19
        <d, a'^1>4 ~ q16 fis16^4 g16^0 a16^2 d,16^0 e16^1 fis16 g16 a16^2 fis16 d16 c16^2 |

        h16^1 d16 g16 fis16 g16 a16^2 h16 c16^1 d16^3 h16 a16 g16 f16^2 e16^1 f16^2 d'16^3 | % 21
       \afterGrace e,8^1\trill {d16} c8^3 c'16^1 a,16 h16^2 c16^3 d,16 c''16^1 h16^0 c16 d16^3 h16 c16^4_\3 a16^1 | % 22
       \afterGrace gis8^4_\4\trill{fis16} e8^1 h'16^0 d,16^0 c16^2 h16^1 c16 e16^1 fis16^4 gis16 a16 c16 h16 a16^2 | % 23
        d8^4 h,16^1 c16^2 d16^0 e16^1 f16^2 a,16^0 gis8.^4\trill e'16^1 h'16^0 d16^3 c16^1 h16^0 | % 24
        <a, e'^2 c'^1>8. h'16 a16^2 g16 f16^2 e16^1 f16 d16^0 b'16^3 a16 b16 c16^1 d16^4 a16^2 | % 25
        gis16^1 a16 h!16^0 e,16^1 f16^2 d16 c16^2 h16^1 c16^3 e16^1 a16^2 h16^0 <e,_1 h'>8.\trill
        a16^2 | % 26
        <a, e' a>8. h'16^0 c16^1 h16 c16 g16^0 fis16^4 g16 a16^2 e16^1 d16 c16 h16 a16 | % 27
        g16^4 d'16 fis16^3 c'16^1 h16^0 a16^2 g16 a16 h16 c16 d16^3 e16^0 d16 e16 f16^1 d16^2
        | % 28
        e8 g,8 c,16^3 d'16^4 c16^1 h16^0 a16^2 h16 c16 e16 d8.^4\trill c16^1 | % 29
        d8^4 a8^2 h,16^1 c'16^4_\3 h16^3 a16^1 g16^0 fis16^4 e16^1 g16 h16 d16^3 c16^1 h16^0 |
        c8^1 g8 a,16 e'16^1 fis16^4 g16^0 fis16^4 a16^2 h16^0 c16^1 d,16 c16^3 h16^2 a16 | % 31
        g16^4 d'16^0 fis16^3 a16^1 c16^4_\3 a16^1 fis16^3 d16 <g,_4 d' h'>8. d'16 e16^1 g16 a16^2 cis16^3 | % 32
        d16^4 a16^1 fis16^4 e16^1 d16^0 f16^3 g16 h16 c16^1 g16 e16^2 d16 c16^4 e16^2 a16^3 c16^1 | % 33
        fis,16^4 a16^2 c16^1 e16^0 d8.^3 c,16^2 h16^1 g'16^0 a,16 g16^4 d16 a'16 g'16 fis16^4 | % 34
        g16 g,16^4 h16^1 d16 g16 h16 d16^2 fis16^1 g16^3 d16^2 h16 g16 g,8.^4
      }

      %\bar ":|."
    }

  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 104 4)
    }
  }
  \layout {
    %ragged-last = ##t
  }

}




