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
  #(define fonts
    (make-pango-font-tree
      "Sabon LT Std"
      "Sabon LT Std"
      "Sabon LT Std"
      (/ staff-height pt 20)))
}

\score{
\new Voice \relative c' {
	\clef treble
    \key aes \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    f a a a a b a g1 \bar "|"
    f4 f4 f4 f4 g4 g4 f4 e1 \bar "|"
    g4 g4 f4 e4 c4 e4 f4 f1 \bar "|"
    a4 a4 a4 a4 f4 g4 f4 e1 \bar "||"
    e4( f4 e4) f1 \bar "||"
    \cadenzaOff
}
\addlyrics {
    To thee be -- fore the close of day, Cre -- a -- tor of the world, we pray,
    That, with thy wont -- ed fa -- vour thou Would'st be our guard and keep -- er now.
    A -- men.
}
\layout { }
}