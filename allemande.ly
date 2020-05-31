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
        h16 |
        <g, d' h'>4 ~ <d' h'>16 a'16 g16 fis16 g16 d16 e16 fis16 g16 a16 h16 c16 | % 3
        d16 h16 g16 fis16 g16 e16 d16 c16 h16 c16 d16 e16 fis16 g16 a16 h16
        | % 4
        c16 a16 g16 fis16 g16 e16 fis16 g16 a,16 d16 fis16 g16 a16 h16 c16 a16
        | % 5
        h16 g16 g16 d16 d16 h16 h16 g16 g8. h'16 c16 h16 a16 g16 | % 6
        a16 h16 c16 a16 g16 fis16 g16 a16 dis,8. c'16 h16 a16 g16 fis16 | % 7
        g16 e16 e16 h16 h16 g16 g16 e16 e8. h'16 e16 g16 fis16 a16 | % 8
        g16 fis16 e16 fis16 g16 cis16 g16 fis16 g16 cis16 e,16 fis16 g16 e16
        a,16 g'16 | % 9
        fis8 d16 e16 fis16 d16 g16 e16 fis16 d16 fis16 g16 a16 h16 c16 a16 |
        h16 d,16 g,16 d'16 h'16 g16 a16 fis16 g16 e16 g16 a16 h16 cis16 d16
        h16 | % 11
        cis16 e,16 g,16 e'16 cis'16 a16 h16 d16 cis16 a16 d16 h16 cis16 a16
        e'16 g,16 | % 12
        fis8. d'16 a16 g16 fis16 e16 d16 a'16 g16 e16 fis16 d16 a'16 c,16 | % 13
        h8. g'16 d16 c16 h16 a16 g16 d'16 c16 a16 h16 g16 d'16 fis,16 | % 14
        e16 g16 a16 h16 cis16 d16 e16 fis16 g16 a16 cis16 d16 e16 a,16 g'8 | % 15
        d,16 g'16 fis16 e16 fis16 d16 a16 d16 d,16 fis16 a16 c16 h8. a16 | % 16
        <g, d' h'>8. a'16 g16 fis16 e16 d'16 cis16 e16 a,16 g16 fis16 d16 a16 cis16 | % 17
        d,8. a'16 d16 fis16 a16 cis16 d16 a16 fis16 d16 d,8.
      }
      \repeat volta 2 {
        a''16 | % 19
        <d, a'>4 ~ q16 fis16 g16 a16 d,16 e16 fis16 g16 a16 fis16 d16 c16 |

        h16 d16 g16 fis16 g16 a16 h16 c16 d16 h16 a16 g16 f16 e16 f16 d'16 | % 21
        e,8 c8 c'16 a,16 h16 c16 d,16 c''16 h16 c16 d16 h16 c16 a16 | % 22
        gis8 e8 h'16 d,16 c16 h16 c16 e16 fis16 gis16 a16 c16 h16 a16 | % 23
        d8 h,16 c16 d16 e16 f16 a,16 gis8. e'16 h'16 d16 c16 h16 | % 24
        <a, e' c'>8. h'16 a16 g16 f16 e16 f16 d16 b'16 a16 b16 c16 d16 a16 | % 25
        gis16 a16 h16 e,16 f16 d16 c16 h16 c16 e16 a16 h16 h8. a16 | % 26
        a8. h16 c16 h16 c16 g16 fis16 g16 a16 e16 d16 c16 h16 a16 | % 27
        g16 d'16 fis16 c'16 h16 a16 g16 a16 h16 c16 d16 e16 d16 e16 f16 d16
        | % 28
        e8 g,8 c,16 d'16 c16 h16 a16 h16 c16 e16 d8. c16 | % 29
        d8 a8 h,16 c'16 h16 a16 g16 fis16 e16 g16 h16 d16 c16 h16 |
        c8 g8 a,16 e'16 fis16 g16 fis16 a16 h16 c16 d,16 c16 h16 a16 | % 31
        g16 d'16 fis16 a16 c16 a16 fis16 d16 g,8. d'16 e16 g16 a16 cis16 | % 32
        d16 a16 fis16 e16 d16 f16 g16 h16 c16 g16 e16 d16 c16 e16 a16 c16 | % 33
        fis,16 a16 c16 e16 d8. c,16 h16 g'16 a,16 g16 d16 a'16 g'16 fis16 | % 34
        g16 g,16 h16 d16 g16 h16 d16 fis16 g16 d16 h16 g16 g,8.
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




