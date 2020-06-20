% This file is part of "Suita G-dur BWV 1007" project
% Copyright on the terms of Creative Commons Legal Code CC0 1.0 Universal license
% Authors: Martyna Danysz (martynadanysz@gmail.com) and Tomasz Bojczuk (seelook@gmail.com)

\version "2.20.0"

\include "global.ly"
\include "paper.ly"

#(set-global-staff-size 21)


\header {
  title = \markup  \center-column { \fontsize #3 {"Cello Suite in G-major BWV 1007" } " "}
  composer = \markup \center-column { "Johann Sebastian Bach" " " }
}


\include "preludium.ly"

\include "allemande.ly"

\include "courante.ly"

\include "sarabande.ly"

\pageBreak
\include "minuetti.ly"

\pageBreak
\include "gigue.ly"