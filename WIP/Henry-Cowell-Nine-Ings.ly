\version "2.24.1"
#(set-global-staff-size 17)
\paper {
  #(define fonts
    (set-global-fonts
     #:music "BMusicFont"
     #:brace "emmentaler"
     #:factor (/ staff-height pt 20)
   ))
  print-all-headers = ##t
}
\layout {
  \enablePolymeter
}
\header {
  title = "Nine Ings"
  composer = "Henry Cowell"
  copyright = "Piece in public domain, edition by Wilh3lm released under CC BY-SA 4.0"
  tagline = "Engraved with Lilypond [VERSION] by Wilh3lm, [Date]. Edition released under CC BY-SA 4.0"
}

\score{
  \header{
    subtitle = "1. Floating"
    subsubtitle = ##f
    title=##f
    composer=##f
  }
  \new PianoStaff<<
    \new Staff \relative{
      \time 3/4
      \clef treble
      \tempo "Placido"
      
      \ottava #1 <aes'' c>8\mp(<f a> <fis ais> <dis fisis> <e gis>) <a cis>(
      <gis bis> <f! a!>\< <fis ais> <dis fisis> \once \override Staff.Accidental.parenthesized = ##t <e gis!>) <bes' d>(
      <a cis>\> <fis ais> <g b> <e gis> <f a>\!) <a cis> \bar "||"
      % LH 4/4
    }
    \new Staff \relative{
      \clef treble
      \time 3/4
      R2.
      R
      R
      \numericTimeSignature
      \once \override Staff.TimeSignature.stencil = #(lambda (grob)
        (parenthesize-stencil (ly:time-signature::print grob) 0.1 0.4 0.4 0.1))
      \time 4/4
    }
  >>
}
\markup \fill-line {
  \center-column{
    \bold \fontsize #10 "Editorial notes"
  }
}
\markup \wordwrap{
  \vspace #1.5
  \fontsize #4 {
  }
}