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
      <gis bis> <f! a!>\< <fis ais> <dis fisis> <e gis?>) <bes' d>(
      <a cis>\> <fis ais> <g b> <e gis> <f a>\!) <a cis>( \bar "||"
      % LH 4/4
      <gis bis> <f a!> <fis ais> <dis fisis> <e gis?>) <a cis!>(
      \tuplet 7/6{<gis bis> <f a!> <fis ais> <dis fisis> <e gis?>) <a cis>( <gis bis>}
      <f a!> <fis ais> <e gis>\<) <g b>(<ges bes> <a cis>
      <gis bis>\> <fis ais> <g b>\! <e gis> <f a> <d fis>
      <es g>) <aes c>(<g b> <e gis> <f a> <d fis>
      <e gis> <g b> <ges bes>\< <a cis> <aes c>) <b dis>(
      \tuplet 7/6{<a cis>\> <gis bis> <f a!> <fis ais> <dis fisis>\! <e! gis!>) <a cis>(}
      <gis bis> <d fis> <dis fisis> <fis ais> <c e> <cis eis>
      \ottava #0 <e? gis>^\markup \italic "loco" <dis fisis> <cis eis> <d fis> <f a>) <b, dis>(
      <c e> <es g> <a, cis> <bes d> <des f>) <g, b>(
      \tuplet 7/6{<aes c> <ces es> <bes d> <des f>\< <c e> <b dis>) <e gis>\!(}
      <des f> <bes d> <a cis> <es' g> <d fis>) <aes c>(
      <g b> <des' f?> <c e> <beses des> <aes c!>) <ces es>(
      <bes d> <e, gis> <f a> <d fis> <es g>) <c e>(
      \tuplet 7/6{<des f> <e gis> <f a> <aes c>\< <ces es> <bes d!> <a cis>}
      <gis bis>\> <f a!> <fis ais>\! <dis fisis> <e! gis!>) <a cis>(
      <gis bis> <f a!> <fis ais> <dis fisis> <e! gis>)\dim <bes' d>\!(
      <a cis> <fis ais> <g b> <e gis> <f a>)_\markup \italic "rit." <a c>(
      <gis bis>\> <f a!> <fis ais> <dis fisis> <e gis> <des f>
      \scaleDurations 2/3 <aes c e>2. s4\!)
      \fine
    }
    \new Staff \relative{
      \clef treble
      \time 3/4
      R2.
      R
      R \bar "||"
      \numericTimeSignature
      \once \override Staff.TimeSignature.stencil = #(lambda (grob)
        (parenthesize-stencil (ly:time-signature::print grob) 0.1 0.4 0.4 0.1))
      \time 3/4
      \set Staff.timeSignatureFraction = 4/4
      \scaleDurations 3/4
      <<{
        \tuplet 4/4{a'4(b?~16 ais8. b4}
        c gis a b?
        c a?~16 b8.) aes4(
        g? gis~16 bes8. a4
        gis) c(~16 b8. cis4
        b bes~16 a8.) aes4(dis b? c? bes
        a) c(~16 bes8. a!4
        g? gis~16 a8.) g4(
        g? fis~16 a8. f4
        fis g aes bes
        a?) fis4(~16 g8. f4
        e fis~16 eis8.) fis4(
        f? d~16 es8. des4
        \clef bass c) d(dis e?
        es des~16 c8.) d4(
        a b?~16 ais8. b4
        ~4 bes~16 a8. aes4
        g? fis~16 e8. d?4
        <cis fis,>1)
      }\\{
        \resetRelativeOctave c' <d f>1~1~1
        s1 s s s s s<b dis>2.. <bes d>8~1~8
        s2.. s1 s r8 <f a>2..~<f aes>1~<d? f?>~d~<b? d>2~16 <gis b>8.~4
      }\\{
        s1 s s s s s s s s s s s s s s s s
        f'?1
      }>>
      \fine
    }
  >>
}
\score{
  \header{
    subtitle = "2. Frisking"
    subsubtitle = ##f
    title=##f
    composer=##f
  }
  \new PianoStaff<<
    \new Staff \relative{
      \key d \minor
      \clef treble
      \time 3/8
      \partial 4
      \tempo "Vivo e leggiero" 8 = 144
      r8\pp r \bar "||"
      \repeat segno 2{
        % REPEATED PART
        <dis' a' b>4->(<e a cis>8
        <a cis e>4 <cis, g' a>8
        <d f a>4 <f a d>8
        <a d f>4) 8(
        <gis d' e>4 <a d fis>8
        <d fis a>4 \break <fis, c' d>8
        <g bes d>4 <bes d g>8
        <d g bes>4)
      }
      \alternative{
        \volta 1{
          % NOT REPEATED
        }
        \volta 2 \volta#'() {
          \section
          \sectionLabel "Coda"
        }
      }
      % CODA
      \fine
    }
    \new Staff \relative{
      \key bes \minor
      \clef bass
      \time 3/8
      \partial 8
      bes,32-. c-. des-. es-.
      f8->~ \bar"||" 
      % SEGNO
      8 e32-.[des-. c-. ces-.]
      bes4 des32-. f-. aes-. a-.
      bes4 a32-. f-. es-. eses-.
      des4 es32-. ges-. aes-. a-.
      bes4 c32-. des-. d-. f-.
      es4 des32-. c-. bes-. beses-.
      aes8.[des16-.] \clef treble c32-. des-. es-. f-.
      ges8.[e16] f32-. es-. des-. c-.
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
