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
  tagline = "Engraved with Lilypond 2.24.1 by Wilh3lm, July 18 2023 - [Completion date]. Edition released under CC BY-SA 4.0"
  % There are five more that werent published in AMP, looking for those as well
}

\score{
  \header{
    subtitle = "1. Floating"
    subsubtitle = ##f
    title=##f
    composer=##f
    opus="HC 353/1"
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
    opus="HC 353/2"
  }
  \new PianoStaff<<
    \new Staff \relative{
      \key d \minor
      \clef treble
      \time 3/8
      \partial 4
      \tempo "Vivo e leggiero" 8 = 144
      r8\pp r \bar "||"
      <<{\voiceOne
        \repeat segno 2{
          % REPEATED PART
          <dis' a' b>4->(<e a cis>8
          <a cis e>4 <cis, g' a>8
          <d f a>4 <f a d>8
          <a d f>4) 8(
          <gis d' e>4 <a d fis>8
          <d fis a>4 \break <fis, c' d>8
          <g bes d>4 <bes d g>8
          <d g bes>4) 8(
          <cis g' a> <d g bes> <d f a>
          <a d f> <bes d g> <a d f>
          <f a d>8. <g bes e>16 <f a d>8
          <e a cis>4) \break <e g cis>8^(
          <gis d'>8. e'16 <d f>8
          <d f>8. g16 <cis, e>8
          <b d>4.~
          4) <gis ais>8\p(
          <gis b>4 cis8
          <cis e>4 \break <g a>8
          <f a>4^\< <a d>8\!
          <d f>4) <d f>8(
          <d e>4 <d fis>8
          <fis a>4 <c d>8
          <bes d>4^\< <d g>8\!
          <g bes>4) \break 8(
          <g a> <g bes> <f a>
          <d f> <d g> <d f>
          <a d>8. <bes e>16 <a d>8
          <a cis>4) <g cis>8(
          <gis d'>8. <e'>16 \break <d f>8\<
          <d f>8. g16 <cis, e>8\!
          d4.~
          4~) \break
        }
        \alternative{
          \volta 1{
            % NOT REPEATED chord and trio
            <d, f d'>8_\markup \right-align {\italic "a tempo" \dynamic p}
            %<<{\voiceOne <d, f d'>8_\markup \italic "a tempo"\p}\new Voice{\voiceTwo <d f>8}>>
            \repeat volta 2{
              f'8->\mf(d-.)a-.
              a'(f-.)d-.
              cis(e-.)g-.
              bes(a-.)g-.
              fis(cis-.)a-.
              a'(fis-.)cis-.
              bis(gis'-.)gis-.
              gis(a-.)gis-.
              f!(des-.)aes-.
              aes'(f-.)des-.
              c(es-.)ges-.
              a(aes-._\markup \italic "rit.")ges-.
            }
          }
        }
      }\new Voice \relative{\voiceTwo
        \repeat unfold 12 {s4.}
        f'4 gis8
        a4 g8
        aes8(bes16-.)beses-. aes-. g-.
        f8(gis-.) f-.
        f16(e-.)f-. ges-. <f a>-. e-.
        r f-. e-. f-. d-. cis-.
        r d-. dis-. e-. f-. g-.
        r a-. gis-. bes-. a-. b-.
        r a-. gis-. bes-. c-. b-.
        r d-. es-. d-. bes-. a-.
        r g-. gis-. a-. bes-. c-.
        r es-. d-. f-. es-. d-.
        r cis-. d-. es-. d-. cis-.
        r a-. c-. ces-. bes-. a-.
        r f-. aes-. g-. ges-. f-.
        r e-. fis-. g-. f-. e-.
        r f-. b-. bes-. a-. gis-.
        r a-. c-._\markup \italic "rit." ces-. bes-. a-.
        f4 <e g>8\>
        ~8 <d f>\!~ % NOT REPEATED CHORD
        \once \hideNotes 8
        
        % TRIO
        f'16(a, d-.)f,-. a-. d,-.
        a''(d, f-.) a,-. d-. f,-.
        cis'(e, e'-.)g,-. g'-. bes,-.
        bes'(des, a'-.) c,-. g'-. bes,-.
        fis'(a, cis-.) fis,-. a-. cis,-.
        a''(cis, fis-.) a,-. cis-. fis,-.
        bis(fis gis'-.) gis,-. gis'-. bis,-.
        gis'(dis a'-.)fis-. gis-. dis-.
        f(aes, des-.) f,-. aes-. des,-.
        aes''(des, f-.) aes,-. des-. f,-.
        c'(es, es'-.) ges,-. ges'-. a,-.
        a' c, aes' ces, ges' bes,
      }\new Voice \relative{\voiceFour
        \repeat unfold 30 {s4.}
        a'8[aes]
      }>>
      \volta 2 \volta#'() {
        \section
        \sectionLabel "Coda"
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
      ces8~16[bes32-. ces-.] des-. es-. f-. ges-.
      aes8.[bes32-. aes-.]ges-. f-. es-. des-.
      es4 f32-. es-. des-. c-. \clef bass
      bes4 ces32-. aes-. ges-. f-.
      es4 aes32-. ges-. f-. es-.
      des4-. aes32-. bes-. c-. des-.
      es4 c32-. des-. es-. f-.
      ges4 f32-. es-. eses-. des-.
      c4 e32-. des-. c-. ces-.
      bes4 des32-. f-. aes-. a-.
      bes4 a32-. f-. es-. eses-.
      des4 es32-. ges-. aes-. a-.
      bes4 c32-. des-. d-. f-.
      es4 des32-. ces-. bes-. beses-.
      aes8.[des16-.] \clef treble c32-. des-. es-. f-.
      ges8.[e16-.]f32-. es-. des-. c-.
      ces8.[bes32-. ces-.] des-. es-. f-. ges-.
      aes8.[bes32-. aes-.]ges-. f-. es-. des-.
      es4 f32-. es-. des-. c-. \clef bass
      bes4 ces32-. aes-. ges-. f-.
      es4 aes32-. ges-. f-. es-.
      des-. es-. f-. ges-. aes-.[bes-. c-. des-.]\clef treble es-. f-. ges-. aes-.
      ges-. f-. es-. des-. \clef bass c-.[bes-. aes-. ges-.] f-. es-. des-. c-.
      bes16-. aes-. ges-. f-. fes-. es-. \bar "||"
      des8->[(aes'-.) f'-.]
      f,(des'-.) aes'-.
      es,(c'-.) aes'-.
      aes,(es'-.) c'-.
      des,,(aes'-.) f'-.
      f,(\break des'-.) aes'-.
      e,(cis'-.) a'-.
      a,!(e'!-.) cis'!-.
      d,,(a'-.) f'-.
      f,(d'-.) a'-.
      e,(cis'-.)g'-.
      es,!(des'!-.)ges!-.
      des,(\break
      % End repeat
      ges-.)
    }
  >>
}
\markuplist{
\fill-line {
  \center-column{
    \bold \fontsize #10 "Editorial notes"
  }
}
\vspace #1.5 % Before first text
\wordwrap{
  \fontsize #4 \wordwrap-string
  #"Text example"
}

\vspace #2 % Above header
\wordwrap{
  \fontsize #6 {
    Header example
  }
}
\vspace #1 % Below header
\fontsize #4 \wordwrap-string
#"More text

Two line breaks for a new paragraph"
}
