% This file is part of "Cello Suite in G-major BWV 1007" project
% Copyright on the terms of Creative Commons Legal Code CC0 1.0 Universal license
% Authors: Martyna Danysz (martynadanysz@gmail.com) and Tomasz Bojczuk (seelook@gmail.com)

\version "2.19.80"


\include "global.ly"
\include "paper.ly"

#(set-global-staff-size 21)


%\header {
%  title = \markup  \center-column { \fontsize #3 {"Cello Suite in G-major BWV 1007" } "Courante" " "}
%  composer = \markup \center-column { "Johann Sebastian Bach" " " }
%}


\score {
  \header {
    piece = \markup { \fontsize #2 "Courante" }
  }

  \new Staff {
    \set Staff.midiInstrument="acoustic guitar (nylon)"
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \override Staff.Stem #'length-fraction = #1.2
    \time 3/4
    \key g \major
    \clef "G_8"
    \relative c' {
      \repeat volta 2 {
        \tempo "Allegro maestoso" 4=100
        \once \override TextScript #'extra-offset = #'(-6 . 0)
        \partial8  g8^0 _\SCORDATURE | % 2
        g8 [  d8_0 g,8_4 h'16^0  (c16)^1 ]
        d16^3 [  c16  h16  a16^2 ] | % 3
        h8^0 [  d,8^0 g,8^4 g'16  (a16)^1 ]
        h8 [  g8 ] | % 4
        e8^1 [  c8^2 ]  c8 [  a'16^1  (h16)^3 ]
        c16^4 [  h16  a16  g16^0 ] | % 5
        fis8^1 [  d8_\5^2 ]  d,8 [  d'16  (e16)^1 ]
        fis16^4 [  g16^0  a16^2  h16^0 ]  | % 6
        c16^1 [  (h16)  c16  a16^2 ]
        c16 [  (h16)  c16  a16 ]
        d,16^0 [  c'16  (h16)^0  a16 ] | % 7
        h16_\3^4 [  (a16)^1  h16  g16^0 ]  h16 [ (a16)  h16  g16 ]  c,16^2 [  h'16_\3  (a16)  g16 ] | % 8
        fis16^3 [  a16^1  d16^2  d,16^0 ]  g8^0 [
        h,8^1 ]  d,8 [  fis'8^1 ] | % 9
        g4.^2\trill  h16_\3 [  (a16) ]  g16 [  fis16^3 e16^1  d16^0 ] |
        e'8^0 [  cis8^2 ]  a8^1 [  h16
        (cis16)^2 ]  d16^3 [  fis,16^4  e16^1  d16^0
        ]  | % 11
        a8 [  d'8^2 ]  cis8^1\trill [  h16
        a16^1 ]  d16^1 [  a16  h16  fis16_\4^1 ] | % 12
        g16_\4^2 _\afi [  (fis16)  g16 _\mfi  e16_\5^4_\ifi ]  g16 [
        (fis16)  g16  e16 ]  <a,-0>16 _\pfi [  <g'-2>16
        (fis16)^1  e16^1_\4 ] | % 13
        fis16^3 [  (e16)^1  fis16  d16^0 ]  fis16
        [  (e16)  fis16  d16 ]  g,16_\6^4 [
        fis'16  (e16)  d16 ] | % 14
        d'16^2 [  cis16^1  h16^0  a16^1 ]
        d8^2 [  (cis16)^1  h16^0 ]  a16^1 [
        g16  fis16^4  e16^1 ]  | % 15
        d16^0 [  (e16)^1  d16  fis16^3 ]  d16 [
        (e16)  d16  g16^4 ]  d16 [  (e16)
        d16  a'16^4 ] | % 16
        d,16 [  (e16)  d16  h'16_\3^3 ]  d,16 [
        (e16)  d16  cis'16^4 ]  d,16 [  (e16)
        d16  d'16^4 ] | % 17
        g,16^0 [  fis16^4  e16^1  d16^0 ]  cis16^4
        [  h16^1  a16^0  g'16 ]  fis8.^1\trill [  e16^1
        ] | % 18
        a16^2[  g16^0  h16^0  a16^1 ]  g16^0 [
        fis16 ^4 e16^1  d16^0 ]  a8^0 [  cis8^1 ]
        | % 19
        d,2^0 r8
      }
      \repeat volta 2 {
        a''8^1 | % 38
        a8 [  fis8^3 ]  d8^4 [  e16^1  (fis16)^3 ]
        g16_\4^4 [  fis16  e16  d16^0 ] | % 39
        d'8^2 [  fis,8^3 ]  c8^1 [  h16^1  (c16)^2 ]
        d16^4 [  c16  h16  a16^0 ] |
        h16^1 [  g'16^0  (a16)^2  h16^0 ]  c16^1 [
        h16  a16  g16^0 ]  fis8^4 [  d'8^1 ] | % 41
        h8^2 [  g8^3 ]  g,8^4 [  h'16_\3^4  (a16)^1 ]
        c16^4 [  h16  a16  g16^0 ]  | % 42
        a8^1 [  fis8^2 ]  dis16^4 [  a'16^1  (h16)^3
        c16^4 ]  h16 [  a16  g16_\4^4  fis16^3 ]
        | % 43
        g8^0 [  e8_\2^4 ]  e,8_\6^1 [  g'16_\4^4  (fis16)^3 ]
        a16^1 [  g16^4  fis16  e16^1 ] | % 44
        f16^2 [  (e16)^1  f16^2  a16^1 ]  f16 [
        (e16)  f16^3  a16^2 ]  c16^1 [  (h16)
        c16^1  a16^2 ] | % 45
        dis4^4 ~  dis16 [  c16^1  (h16)
        a16 ]^2  g16^0 [  fis16^4  a16^1  dis,16^4
        ]  | % 46
        g,8^3 [  h'8^0 ]  a16^1 [  (g16)^0  fis16^4
        e16^2 ]  h8^1 [  dis8^4 ] | % 47
        e,4.^1  e'16^1 [  (fis16)^4 ]  g16^0 [  a16^2
        h16^0  c16^1 ] | % 48
        d8^4 [  f,8^3 ]  h,8^2 [  e16^1  (f!16)^3 ]
        g16^4 [  f16  e16  d16^0 ] | % 49
        e8^1 [  c8^2 ]  c8 [  c16  (d16)^4 ]
        e16^1 [  fis16^3  g16^4  e16 ] |
        cis16^3_\5 [  g'16_\4^4  a16_\3^1  g16 ]  a16 [
        g16  cis,16  g'16 ]  cis,16 [
        g'16  a16  g16 ] | % 51
        c,16^2 [  fis16^4  a16^1  fis16 ]  a16
        [  fis16  c16  fis16 ]  c16 [
        fis16  a16  fis16 ] | % 52
        h,16_1^"1/2C" [  d16^4  e16^1  f16^2 ]  g,16^4 [
        f'16^2  e16^1  d16^0 ]  e16^1 [  d'16^3
        c16^1  h16^0 ] | % 53
        fis16^4_\pfi [  a16^2  h16^0  c16^1 ]  d,16_\pfi [
        c'16^1  h16  a16^2 ]  h8 [  g,8^4 ] | % 54
        c8^3 [  h'16^3_\3  (a16)^1 ]  c16^4 [  h16
        a16  g16^0 ]  d8 [  fis8_\5^4 ]  | % 55
        g,16^1_\6 [  (a16)^2_\6  g16  h16^4_\6 ]  g16 [
        (a16)  g16  c16^4\6 ]  g16 [  (a16)
        g16  d'16^1_\5 ] | % 56
        g,16 [  (a16)  g16  e'16^3_\5 ]  g,16 [
        (a16)  g16  fis'16^4_\5 ]  g,16 [  (a16)
        g16  g'16^1_\4 ] | % 57
        c16_\4 [  h16^3  a16^1  g16^0 ]  fis16^4_\4 [
        e16^1_\4  d16^0  c'16_1 ]  h8._0 \trill [  a16_2  ]
        | % 58
        d16^4 [  (c16)^1  d16  h16^0 ]
        d16 [  (c16)  d16  h16 ]
        e,16^2 [  d'16  (c16)  h16 ] | % 59
        c16^1 [  (h16)^0  c16  a16^2 ]
        c16 [  (h16)  c16  a16 ]
        d,16^0 [  c'16  (h16)  a16^1 ] |
        h16^4 [  (a16)^1  h16  g16^0 ]  c,16^2 [
        h'16  (a16)  g16^0 ]  d8^0 [  fis8^1 ] | % 61
        g2^2\trill r8
      }
      \bar ":|."
    }

  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 73 4)
    }
  }
  \layout {
    %ragged-last = ##t
  }

}




