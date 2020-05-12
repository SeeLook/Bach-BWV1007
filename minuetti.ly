% This file is part of "Cello Suite in G-major BWV 1007" project
% Copyright on the terms of Creative Commons Legal Code CC0 1.0 Universal license
% Authors: Martyna Danysz (martynadanysz@gmail.com) and Tomasz Bojczuk (seelook@gmail.com)

\version "2.19.80"


\include "global.ly"
\include "paper.ly"

#(set-global-staff-size 21)


%\header {
%  title = \markup  \center-column { \fontsize #3 {"Cello Suite in G-major BWV 1007" } "Menuetto I & II" " "}
%  composer = \markup \center-column { "Johann Sebastian Bach" " " }
%}




\score {
  \header {
    piece = \markup { \fontsize #2 "Menuetto I" }
  }

  \new Staff {
    \set Staff.midiInstrument="acoustic guitar (nylon)"
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \override Staff.Stem #'length-fraction = #1.2
    \time 3/4
    \key g \major
    \clef "G_8"
    \relative c {
      \once \override TextScript #'extra-offset = #'(-8 . 3)
      g8_\6^2 _\SCORDATURE [ d'8 ]^0 h'4_\3^1 a8_\3^1 [ h16^3
      (c16)^4 ] | % 2
      h8 [ a8 ] g8_\4^4 [ fis8^3 ] g8 [
      d8^0 ] | % 3
      e8_\5^4 [ g8_\4^1 ] c8^1 [ a8_\4-4] fis8^1 [
      d'8_\3^4 ] | % 4
      <g,,_2 d'_0 h'^1>2 \trill <d'_0 a'^2>4 | % 5
      a8 [ fis'8_\4^1 ] c'4^2 h8_\3-1 [
      c16 (d16) ] | % 6
      c8 [ h8 ] a8_\4-4 [ g8^2 ] fis8^1
      [ e8_\4-4 ] | % 7
      fis8^1 [ g16 (a16^4) ] g8 [ fis8 ]
      e8^4 [ fis8 ] | % 8
      d4^0 a4^0 d,4^0\bar ":|.:" | % 9
      | % 17
      d'8_\5^4 [ fis8^3 ] a4^1 g8^0 [ a16^1
      (h16)^3 ] | % 18
      a8 [ g8 ] fis8^4 [ e8^1] d8^0 [
      fis8 ] | % 19
      h,8^2 [ d8 ] gis8^1 [ a8^2 ] h8^0
      [ d8^4 ] |
      a,8^2 [ d'8^4 ] c8^1 [ h8 ]
      c4 | % 21
      dis,8_\5-4 [ fis8^2 ] a8^1 [ c8_\3-3 ] h8^2
      [ a8 ]^1 | % 22
      h8^4 [ e,8^1 ] g,8^4 [ a'8^1 ] c8^4
      [ h8 ] | % 23
      a8 [ g8_\4^4 ] fis8 [ e8^1 ] h8^3 [
      dis8^1 ] | % 24
      e,4.^2 e'8_\mfi^1 d8_\ifi^0 [ c8_\mfi^2 ] | % 25
      h8_\pfi^1 [ d8_\ifi ] g4_\mfi d8_\ifi [ e16_\mfi^1
      (f16) ] | % 26
      f8_\ifi [ d8 ] e8^1 [ c8_\mfi^2 ] c8_\ifi [
      h8_\mfi ] | % 27
      cis8_\pfi^3 [ e8^1 ] a4^1 e8^ [ fis16^3
      (g16)^4 ] | % 28
      g8 [ e8 ] fis8 [ d8^0 ] d,8 [
      a'8 ] | % 29
      d8 [ fis8^4 ] a8^2 [ c8^1 ] h8^ [
      d8^3 ] |
      e,8^1 [ g8^0 ] h8^0 [ d8^3 ] c8^1
      [ e8^0 ] | % 31
      d8^3 [ fis,8^4 ] g8^0 [ h,8^1 ] d,8^0
      [ fis'8^1 ] | % 32
      <g,_2 g'^3>2.\bar ":|." | % 33
      % 49
    }
  }
}


\score {
  \header {
    piece = \markup { \fontsize #2 "Menuetto II" }
  }

  \new Staff {
    \set Staff.midiInstrument="acoustic guitar (nylon)"
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \override Staff.Stem #'length-fraction = #1.2
    \time 3/4
    \key g \minor
    \clef "G_8"
    \relative c {
      \once \override TextScript #'extra-offset = #'(-6 . 0)
      b'8^2 _\SCORDATURE [ (a8)^1 ] b8 [ d,8^0 ]
      dis8_\5^4 [ g,8^2 ] |
      f4^2 a'4^1 d,4^0 | % 51
      g8^4 [ (fis8)^3 ] g8^0 [ b,8^1 ] c8^3
      [ dis,8^1 ] | % 52
      d!8 [ a'8 ] d8 [ g8^0 ] fis8^3 [
      a8^1 ] | % 53
      b8^2 [ (a8) ] b8 [ d,8^0 ] dis8^4
      [ g,8^2 ] | % 54
      f4 a'4 d,4 | % 55
      g8^4 [ (fis8)^3 ] g8^0 [ b,8 ] c8
      [ dis,8 ] | % 56
      d!8 [ g'8^0 ] fis2^4 \bar ":|.:" % 57
      | % 65
      d8_\5^4 [ fis8^3 ] a8^1 [ c8_\3^4 ] dis8^2
      [ d8^1 ] | % 66
      c8_\3^3 [ (b8)^1 ] a8^1 [ b8^2 ]
      g4^0 | % 67
      c,8^2 [ e8^1 ] g8^0 [ b8^3 ] d8^4
      [ c8^1 ] | % 68
      b8^3 [ (a8)^2 ] g8^0 [ a8 ] f8^3 [
      dis8^1 ] | % 69
      d8_\5^4 [ f8^1 ] b8^1 [ a8_\4-4 ] b8 [
      d,8^0 ] |
      dis8^1 [ g8 ] b8^3 [ a8^2 ]
      b8 [ d8^4 ] | % 71
      c8^1 [ dis8^4 ] d8^4 [ b8^3 ]
      f8^2 [ a8^1 ] | % 72
      b8^1 [ f8^3 ] d8^0 [ f8 ] b,4^1
      | % 73
      b8 [ d8 ] f8^3 [ gis8^1 ] g8^0 [
      f8 ] | % 74
      dis8^1 [ g8 ] c8^2 [ d8^4 ]
      dis4^4 | % 75
      a,8 [ c8^3 ] dis8^1 [ g8 ] f8^3 [
      dis8 ] | % 76
      d!8 [ f8^3 ] b8^4 [ c8^1 ]
      d4^4 | % 77
      fis,,8^4 [ a8 ] c8^3 [ dis8^1 ] d8
      [ c8 ] | % 78
      b8^1 [ d8 ] g8 [ a8^2 ] b8^3 [
      g8^0 ] | % 79
      c,8^2 [ b'8^3 ] a8^1 [ g8^0] d8 [
      fis8^1 ] |
      g,2.^2_"Menuetto I Da Capo" \bar ":|." | % 81
      % 97

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






