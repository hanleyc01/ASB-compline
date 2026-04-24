\version "2.24.0"

\header {
  tagline = ##f  % removes the "Music engraving by LilyPond" footer
  subtitle = "Tone III.5"
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
\relative c' {
	\clef treble
    \key aes \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    e f4 s4 \bar "'" a\breve b4 a4 g4 a1 \bar "|" 
    a\breve f4 a4 g4( f4) \bar "||"
    \cadenzaOff
}

  \layout {
 }
}