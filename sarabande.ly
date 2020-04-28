\version "2.19.80"

\language "deutsch"


\include "global.ly"
\include "paper.ly"

#(set-global-staff-size 21)


\header {
  title = \markup  \center-column { \fontsize #3 {"Suita G-dur BWV 1007" } "Sarabanda" " "}
  composer = \markup \center-column { "Johan Sebastian Bach" " " }
}


\score {

  \new Staff {
    \set Staff.midiInstrument="acoustic guitar (nylon)"
    \override Staff.NoteCollision #'merge-differently-headed = ##t
    \override Staff.NoteCollision #'merge-differently-dotted = ##t
    %\override Staff.Stem #'length-fraction = #1.2
    \time 3/4
    \key g \major
    \clef "G_8"
    \relative c {
      <<
        {
          \once \override TextScript #'extra-offset = #'(-7 . 4)
          h'4_\SCORDATURE c4. h8
          | % 2
          fis16 a h c h4 a8 g
          | % 3
          d' f, e8. \tuplet 3/2 {d32 c32 h32} c8 e
          | % 4
          fis16 c' h g fis4 e8 d
          | % 5
          a'16 fis d c h8. g16 h d g a
          | % 6
          h g e d cis8. a32 h cis16 d e fis
          | % 7
          g cis d cis d a g fis e g fis d
          | % 8
          a d e cis d4 d,\bar ":|.:" %
          fis'8 e16 d c'4. h16 a
          | % 18
          h fis g e dis8. e16 fis g a h
          | % 19
          dis, a' h c h8 a16 g fis e a fis
          | % 20
          g e fis dis e4 e,
          | % 21
          d'8. e32 f e8. fis16 g a h c
          | % 22
          gis, d'' c h c8. h16 a g fis e
          | % 23
          d16*5 e16 fis g a c h g
          | % 24
          d g a fis g4 g,\bar ":|."

          |
        }\\% 33

        {
          <d' g,>4 <g,g'>2
          s4 <g d'>4 s4
          s2.
          s4 <d a'> s4
          s2.
          s2.
          s2.
          s2.
          <a' d,>8 s8 <d, a' fis'>2
          <d' g,>4 a4 s4
          s2.
          s2.
          h4 <g c e>4 s4
          s4 <a e'>4


        }
      >> \bar ":|."
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




