\version "2.24.0"

\header {
  tagline = ##f  % removes the "Music engraving by LilyPond" footer
  subtitle = "Tone II.1"
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
\relative c' {
	\clef treble
    \key aes \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    e f4 s4 \bar "'" a\breve b4 \parenthesize a1 \bar "|" 
    a\breve g4 e4 f1 \bar "||"
	% c a1 g4 f4 g4( a4) \parenthesize g4 g2 \bar "||"
    \cadenzaOff
}

  \layout {
 }
}