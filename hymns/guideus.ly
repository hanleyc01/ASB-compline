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
\new Voice \relative b' {
	\clef treble
    \key c \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    b4( c4 e4) e4 e4( f4 e4) e4( d4) c4( d4) c4( b4) \bar "|"
    b4( d4 e4) f4 e4( c4) e4 d4 \bar "|"
    d4( b4) d4 f4 e4 c4 e4 e4 d2( e2) \bar "'"
    c4 c4 c4 b4 a4 b4( c4) b4( a4) g4 \bar "||"
    \cadenzaOff
}
\addlyrics {
    Guide us, wa -- king, O Lord,
    and guard us sleep -- ing;
    that a -- wake we may watch with Christ
    and a -- sleep we may rest in peace.
}
\layout { }
\midi { }
}

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
\new Voice \relative b' {
	\clef treble
    \key c \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    b4 b4 c4 b4( a4) \bar "'"
    c4 e4 d4( e4) c4( b a4)
    b4( c4) c4 b4 b4 \bar "||"
    \cadenzaOff
}
\addlyrics {
    \set stanza = \markup \italic "In Easter Season, add:"
    Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu --ia.
}
\layout { }
\midi { }
}