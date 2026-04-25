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
    \key c \major
    \override Staff.TimeSignature.stencil = ##f
    \override Staff.Accidental.stencil = ##f
    \override Staff.AccidentalCautionary.stencil = ##f
	\hide Staff.Stem
    \cadenzaOn
    c4 e4 g4 a4 g2 \bar "'" %Mary we hail thee
    a4 c4 b4 a4 g4 a4 g4 g2 \bar "|" % Mother and queen compassionate
    c4 g4 a4 f2 d2 \bar "'" % Mary our comfort
    e4 f4 g4 e4 e4( d4) c2 \bar "|" % life, and hope, we hail thee.
    g'4 a4 b4 c4 g2 \bar "'" %to thee we exiles
    a4 b4 c4 b4 a4 g4 a4 g2 \bar "|" % children of eve, lift our crying
    c4 g4 a4 f4 d4 e2 \bar "'" % to thee our sighing,
    e4 g4 a4 c4 a4 g2 \bar "'" % as mournful weeping
    a4 g4 f4 e4 d4 e4 d2 c2 \bar "|" % we pass throuh this vale of sorrow
    g'4 a4 b4 c2 \bar "'" %turn thou therefore
    g4 a4 c4 b4 a4 g2 \bar "'" %O our intercessor,
    c4 g4 a4 f4 d4 e4 g4 f4 a4( g4) g2 \bar "'" %those thine eyes of pity and loving-kindness
    f4 e4 d4 e4( d4) c2 \bar "|" %upon us sinners
    g'4 a4( b4) c2 \bar "'" % here-after 
    b4 g4 a4 g4 g4 a4 c4 b4 a4 g2 \bar "'" % when our earthly exile endeth
    c,2 g'2 a4( b4) c2 \bar "'" %shew us jesus
    b4 a4 g4 e2 f4 e4( d4) c2 \bar "|" % the blessed fruit of thy womb
    e2( f4 g4) e2 c2 \bar "'" % o gentle
    g'2( a4 b4 c4 b4) a2( g2) g2 \bar "'" % o tender
    c2( g4 a4 f4 f4 d4) e2( f2) g2 \bar "'" % o gracious
    c,2 f2 e2( d2) c2 \bar "||" % virgin mary
    \cadenzaOff
}
\addlyrics {
  Ma -- ry, we hail thee, 
  Moth -- er and Queen com -- pass -- ion -- ate; 
  Ma -- ry, our com -- fort, life and hope, we hail thee. 
  To thee we exil -- es, chil -- dren of Eve, lift our cry -- ing. 
  To thee we are sigh -- ing, 
  as mourn -- ful and weep -- ing, we pass through this vale of sor -- row. 
  Turn thou there -- fore, 
  O our in -- ter -- cess -- or, those thine eyes of pi -- ty and 
  lov -- ing-kind -- ness up -- on us sinn -- ers. 
  Here -- af -- ter, when our earth -- ly ex -- ile shall be end -- ed,
  show us Je -- sus, the bless -- ed fruit of thy womb. O gen -- tle, O ten -- der, O
  grac -- ious Vir -- gin Ma -- ry.
}
\layout { }
\midi { }
}