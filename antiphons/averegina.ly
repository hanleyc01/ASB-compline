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
\new Voice \relative f' {
	\clef treble
    \key c \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    f4 e4 d4 c4 d4 f4 g4 f2 \bar "|" % queen of the heavens we hail thee
    a4 c4 bes4 g4 a4 g4 f4 a4 g2 \bar "|" % hail thee, lady of all the angels
    f4 e4 d4 c4 d4 f4 g4 f2 \bar "|" %  thou the dawn, the door of morning
    a4 g4 bes4 a4 g4 d4 g2 f2 \bar "|" % whence the world's true light is risen
    f4 g4 a4 a4 g4 a4 bes4 a2 \bar "'" % joy to thee, o virgin glorious
    c4 bes4 a4 g4 f4 e4 g4 f2 \bar "|" % beautiful, beyond all other;
    bes4 a4 g4 bes4 a4 g4 f4( g4 a4) a2 \bar "'" %Hail, and farewell, O most gracious
    c4 bes4 bes4( c4 d4) a4 a4 a4 g4 f4 g2 f2 \bar "||" % intercede for us alway to jesus
    \cadenzaOff
}
\addlyrics {
  Queen of the hea -- vens, we hail thee,
  Hail thee, La -- dy of all the Ang -- els;
  Thou the dawn, the door of morn -- ing
  Whence the world's true light is ris -- en:
  Joy to thee, O Vir -- gin glor -- ious,
  Beau -- ti -- ful be -- yond all o -- ther;
  Hail and fare -- well, O most gra -- cious,
  In -- ter -- cede for us al -- way to Je -- sus.
}
\layout { }
}