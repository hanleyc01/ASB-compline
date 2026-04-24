\version "2.24.0"

\header {
  tagline = ##f  % removes the "Music engraving by LilyPond" footer
%   subtitle = "Tone II.1"
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
    f4 f4 f4 f4( g4) g4( f4) g4( a4) \bar "'"
    a4( f4) g4( a4) g4( f4 d4) f4( g4) g4 f4 \bar "||"
    % a\breve g4 e4 f1 \bar "||"
    \cadenzaOff
}
\addlyrics {
    In -- to thy hands, O Lord, I com -- mend my spi -- rit.
}
\addlyrics {
    \set stanza = \markup \italic "All"
    \markup \bold "In" --
    \markup \bold "to"
    \markup \bold "thy"
    \markup \bold "hands,"
    \markup \bold "O"
    \markup \bold "Lord,"
    \markup \bold "I"
    \markup \bold "com" --
    \markup \bold "mend"
    \markup \bold "my"
    \markup \bold "spi" --
    \markup \bold "rit."
}
\layout { }
}

\score{
\new Voice \relative a' {
	\clef treble
    \key c \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    a4 a4 a4 a4 a4( bes4) a4 a4 \bar "'"
    g4 g4 f4 f4( g4) a4 a4( g4) \bar "||"
    \cadenzaOff
}
\addlyrics {
    For thou hast re -- deem -- èd me,
    O Lord, thou God of truth.
}

\layout { }
}

\score{
\new Voice \relative a' {
	\clef treble
    \key c \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    a4( f4) g4( a4) g4( f4 d4) f4( g4) g4 f4 \bar "||"
    \cadenzaOff
}
\addlyrics {
    \set stanza = \markup \italic "All"
    \markup \bold "I"
    \markup \bold "com" --
    \markup \bold "mend"
    \markup \bold "my"
    \markup \bold "spi" --
    \markup \bold "rit." 
}
}

\score{
\new Voice \relative a' {
	\clef treble
    \key c \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    a4 a4 a4 a4 a4 a4( bes4) a4 \bar "'"
    a4 g4( a4) g4 g4 \bar "'"
    g4 g4 a4 g4 f4 g2( a2) \bar "||"
    \cadenzaOff
}
\addlyrics {
    Glo -- ry be to the Fa -- ther, 
    
    and to the Son, 
    
    and to the Ho -- ly Ghost.
}
\layout { }
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
    f4 f4 f4 f4( g4) g4( f4) g4( a4) \bar "'"
    a4( f4) g4( a4) g4( f4 d4) f4( g4) g4 f4 \bar "||"
    % a\breve g4 e4 f1 \bar "||"
    \cadenzaOff
}
\addlyrics {
    \set stanza = \markup \italic "All"
    \markup \bold "In" --
    \markup \bold "to"
    \markup \bold "thy"
    \markup \bold "hands,"
    \markup \bold "O"
    \markup \bold "Lord,"
    \markup \bold "I"
    \markup \bold "com" --
    \markup \bold "mend"
    \markup \bold "my"
    \markup \bold "spi" --
    \markup \bold "rit."
}
\layout { }

}

% TODO (fix this score: this part is weird)
% source: https://gregobase.selapa.net/chant.php?id=19225#source_1
\score{
\new Voice \relative g' {
	\clef treble
    \key c \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    f4( g4) f4 f4 f4 f4 f4 g4 a4 a4( g4) \bar "||"
    \cadenzaOff
}
\addlyrics {
    Keep me as an app -- le of an eye;
}
\layout { }
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
    f4 f4 f4 f4 f4 f4( g4) f4 f4 g4( a4) a4( g4) \bar "||"
    \cadenzaOff
}
\addlyrics {
    \set stanza = \markup \italic "All"
    \markup \bold "Hide"
    \markup \bold "me" 
    \markup \bold "un" --
    \markup \bold "der"
    \markup \bold "the"
    \markup \bold "sha" --
    \markup \bold "dow"
    \markup \bold "of"
    \markup \bold "thy"
    \markup \bold "wings."
}
\layout { }
\midi { }
}