\version "2.24.0"

\header {
  tagline = ##f  % removes the "Music engraving by LilyPond" footer
}

#(set-global-staff-size 26)

\paper {
  \include "line-width.ily"
  indent = 0
  ragged-right = ##f
  top-margin = 0
  bottom-margin = 0  
  left-margin = 0
  right-margin = 0
}

\score{
\new Voice \relative c' {
	\clef treble
    \key c \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    c4( e4 f4 g4 a4) g2 \bar "'" g4 g4 g4 a4 b4 c4 g2 \bar "|"
    e4 e4 e4 f4 e4 d4 e4 f4 a4 g2 \bar "'" a4  c4 b4 a4 g2 \bar "|"
    e4 f4 e4 d4 e4 g2 \bar "'" e4 f4 g4 a4 c4 b4 d4 c4 c2 \bar "|"
    c4 b4 c4 c4 d2 g,4 \bar "'" % thou maiden who barest
    c4 b4 a4 g4 f4 e2 \bar "'" % thy holy creator
    e4 e4 a4 g4 f4 e4 d4( e4) f2( e2) \bar "|" % to the wonder of all nature
    c'4 b4 a4 g2 \bar "'" a4 g4 e4 f4 g4 a4 a4 c4 a4 g4 f4 e2 \bar "'" % Ever virgin, after as before thou receivedst that Ave
    f4 e4 g4 g4 a4 g2 \bar "|" %from the mouth of gabriel
    c4 b4 c4 a4( g4) a4 f4 e4( d4) c2 \bar "||"
    \cadenzaOff
}
\addlyrics {
    Gra -- cious Mo -- ther of our Re -- deem -- er,
    for ev -- er a -- bid -- ing; Hea -- ven's gate -- way, and 
    star of oc -- ean, O succ -- or thy peo -- ple, who,
    though fall -- ing, strive to rise a -- gain. Thou Maid -- en
    who bar -- est thy ho -- ly Cre -- a -- tor, to the  won -- der
    of all nat -- ure; ev -- er Vir -- gin, af -- ter, as be -- fore thou 
    re -- ceiv -- edst that A -- ve from the mouth of Ga -- briel;
    have com -- pass -- ion on us sinn -- ers.
}
\layout { }
}