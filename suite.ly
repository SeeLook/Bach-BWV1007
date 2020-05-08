\version "2.19.80"


\include "global.ly"
\include "paper.ly"

#(set-global-staff-size 21)


\header {
  title = \markup  \center-column { \fontsize #3 {"Suite G-major BWV 1007" } " "}
  composer = \markup \center-column { "Johann Sebastian Bach" " " }
}


\include "preludium.ly"

\include "courante.ly"

\include "sarabande.ly"

\pageBreak
\include "minuetti.ly"