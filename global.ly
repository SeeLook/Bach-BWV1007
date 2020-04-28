%\version "2.12.0"
\include "deutsch.ly"

#(ly:set-option 'point-and-click #t)
#(set-global-staff-size 18)




\layout  {
	indent = #0
	\context {
      \Score 
        \remove "Bar_number_engraver" 
        \override TextSpanner  #'(bound-details left stencil-align-dir-y) = #0
      }
    \context {
      \Lyrics
          \consists "Bar_engraver"
          \consists "Separating_line_group_engraver"
          \override BarLine #'transparent = ##f
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
lvSempre = \markup { \italic "lasciar vibrare sempre"}
Lv = \markup { \italic "L.v."}
gliss = \markup { \italic \bold \teeny "gliss."}
dolce = \markup { \italic "dolce"}
loco = \markup { \italic "loco"}
pocometal = \markup { \italic "poco metallico"}
sim = \markup { \italic "sim."}
decisio = \markup { \italic "decisio"}
lantano = \markup{ \italic "lantano" }
sonoro = \markup{ \italic "sonoro" }
sulpont = \markup{ \italic "sul pont." }
moltoSonoro = \markup{ \italic "molto sonoro" }
naturale = \markup{ \italic "naturale" }
ord = \markup{ \italic "ord." }
marcatoIlBasso = \markup{ \italic "marcato il basso" }
semprePizz = \markup{ \italic "sempre pizz." }
% pizz = \markup{ \italic "pizz." }
pizz = #(define-music-function (parser location nouse) (string?)
  #{
    \override TextSpanner #'(bound-details centre text) = \markup { \italic "pizz. " } 
  #}
  )
tamburomil = \markup{ \italic "tamburo militare" }
vibrAlaBlues = \markup{ \italic { \column {"vibrato" "ala" "blues" }}}

leggiero = \markup{ \bold \italic "leggiero" }
agitato = \markup{ \bold \italic "agitato" }
calmo = \markup{ \bold \italic "calmo" }
rit = \markup{ \italic "rit." }

%################ DYNAMICS #######################
crescpocpoc = \markup { \italic "c r e s c e n d o   p o c o   a   p o c o"}
meno = \markup { \italic "meno"}
repalninente = \markup { \italic "repetare ad libitum al niente"}
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


arrow = \markup {
    \postscript #"
  0.2 setlinewidth
  -0.6 0.5 moveto
  0.4 1.5 lineto
  1.4 0.5 lineto
  stroke
  "
}

arrowBack = \markup {
    \postscript #"
  0.2 setlinewidth
  -0.6 1.5 moveto
  0.4 0.5 lineto
  1.4 1.5 lineto
  stroke
  "
}


%%% FLAMENCO
% Finger stroke symbols
strokeUp = \markup { \postscript #"
  0.1     setlinewidth
  0.5 0   moveto
  0.5 2   lineto
  0.2 1.4 lineto
  0.5 2   moveto
  0.8 1.4 lineto
  stroke
"}

strokeDown = \markup { \postscript #"
  0.1     setlinewidth
  0.5 2   moveto
  0.5 0   lineto
  0.2 0.6 lineto
  0.5 0   moveto
  0.8 0.6 lineto
  stroke
"}
% Golpe symbol
golpe = \markup { \postscript #"
  0.2 setlinewidth
  0 0 moveto
  1 0 lineto
  1 1 lineto
  stroke
  "\postscript #"
  0.1       setlinewidth
  -0.6 -0.1  moveto
  -0.6  1.0 lineto
  0.5  1.0 lineto
  stroke
"}
% Strokes for all fingers
pUp   = \markup { \column { \pfi \line { \strokeUp }}}
pDown = \markup { \column { \pfi \line { \strokeDown }}}
iUp   = \markup { \column { \ifi \line { \strokeUp }}}
iDown = \markup { \column { \ifi \line { \strokeDown }}}
mUp   = \markup { \column { \mfi \line { \strokeUp }}}
mDown = \markup { \column { \mfi \line { \strokeDown }}}
aUp   = \markup { \column { \afi \line { \strokeUp }}}
aDown = \markup { \column { \afi \line { \strokeDown }}}
xUp   = \markup { \column { \small x \line { \strokeUp }}}
xDown = \markup { \column { \small x \line { \strokeDown }}}

tambMil = \markup {
  \postscript #"
  0.2 setlinewidth
  0 -1 moveto
  3 1 lineto
  9 1 lineto
  stroke
  "\postscript #"
  0.2 setlinewidth
  -0.5 1 moveto
  2.5 -1 lineto
  8.5 -1 lineto
  stroke
  "
}

tambMilShort = \markup {
  \postscript #"
  0.2 setlinewidth
  0 -1 moveto
  3 1 lineto
  4 1 lineto
  stroke
  "\postscript #"
  0.2 setlinewidth
  -0.5 1 moveto
  2.5 -1 lineto
  3.5 -1 lineto
  stroke
  "
}