% This file is part of "Cello Suite in G-major BWV 1007" project
% Copyright on the terms of Creative Commons Legal Code CC0 1.0 Universal license
% Authors: Martyna Danysz (martynadanysz@gmail.com) and Tomasz Bojczuk (seelook@gmail.com)

\include "deutsch.ly"

#(ly:set-option 'point-and-click #t)


\layout  {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
    \override TextSpanner  #'(bound-details left stencil-align-dir-y) = #0
  }
  \context {
    \Staff
    \override TimeSignature #'style = #'numbered
    \override StringNumber #'font-size = #-3
    \override Fingering #'font-size = #-3
    \override VerticalAxisGroup #'minimum-Y-extent = #'(0.5 . 3)
    \override TextSpanner  #'(bound-details left stencil-align-dir-y) = #0
    %           \override VerticalAxisGroup #'default-staff-staff-spacing
    %                 #'basic-distance = #15
  }
}


%############ FINGERING ################
pfi=\markup { \smaller  \italic "p"}
ifi=\markup { \smaller  \italic "i"}
mfi=\markup { \smaller  \italic "m"}
afi=\markup { \smaller  \italic "a"}

aTag = \markup { "" }
half = \markup {\column { "1" \draw-line #'(3 . 0) "2"} }

%######### GUITAR MARKS ######################
SCORDATURE = \markup {
  \general-align #Y #CENTER { \bold { \circle {"6"} "=" "D" } }
}

SCORDATUREg = \markup {
  \general-align #Y #CENTER { \bold { \circle {"5"} "=" "G" } }
}

SCORDATUREais = \markup {
  \general-align #Y #CENTER { \bold { \circle {"2"} "=" "ais" } }
}

SCORDATUREdONE = \markup {
  \general-align #Y #CENTER { \bold { \circle {"1"} "=" "d" } }
}


%########### ARTICULATION #################
gliss = \markup { \italic \bold \teeny "gliss."}
dolce = \markup { \italic "dolce"}
pocometal = \markup { \italic "poco metallico"}
sim = \markup { \italic "sim."}
sonoro = \markup{ \italic "sonoro" }
sulpont = \markup{ \italic "sul pont." }
naturale = \markup{ \italic "naturale" }
ord = \markup{ \italic "ord." }
marcatoIlBasso = \markup{ \italic "marcato il basso" }
rit = \markup{ \italic "rit." }

%################ DYNAMICS #######################
ritmolto = \markup { \italic "molto rit."}
cresc = \markup { \italic "cresc."}

%################# TWEAKERS ####################
MvTx = #(define-music-function (parser location xy) (pair?)
          #{
            \once \override TextScript #'extra-offset = #$xy
          #}
          )

MvTxAll = #(define-music-function (parser location xy) (pair?)
             #{
               \override TextScript #'extra-offset = #$xy
             #}
             )

MvFi = #(define-music-function (parser location xy) (pair?)
          #{
            \once \override Fingering #'extra-offset = #$xy
          #}
          )

MvFiAll = #(define-music-function (parser location xy) (pair?)
             #{
               \override Fingering #'extra-offset = #$xy
             #}
             )

MvStr = #(define-music-function (parser location xy) (pair?)
           #{
             \once \override StringNumber #'extra-offset = #$xy
           #}
           )

MvStrAll = #(define-music-function (parser location xy) (pair?)
              #{
                \override StringNumber #'extra-offset = #$xy
              #}
              )

%½
fat = #(define-music-function (parser location ft xy) (string? pair?)
         #{
           \once \override TextScript #'extra-offset = #$xy
           (markup (#:line (#:bold ft ) )
         #}
         )
