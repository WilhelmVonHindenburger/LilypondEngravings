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
            f8._\markup \italic "a tempo"(<a, d>16 <cis, a'>8
            f8. <f a>16 <e bes'>8
            <cis e a>4\dim <d a' b>8
            <e a cis>4\> <e a c>8\!) \bar "||"
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
        % End repeat
        d(a d-.)f,-. f-. e-.
        d(a d-.)d-. cis8
      }\new Voice \relative{\voiceFour
        \repeat unfold 30 {s4.}
        a'8[aes]
      }>>
      \volta 2 \volta#'() {
        \section
        \sectionLabel "Coda"
      }
      % CODA
      \override Tie.direction = #CENTER
      \scaleDurations 1/2{\once \hideNotes <d f d'>8~8~} \bar "|" 8\fermata
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
      \once \override Beam.positions = #'(2 . 2) % Make this beam look nicer
      des,[(\break
      % End repeat
      ges-.)] f32-. g-. a-. bes-.
      c8[(des-.)] bes32-. c-. des-. es-.
      f8(f,-.) c'?32-. bes-. a-. g-.
      f8(c'?-.) bes32-. c-. des-. es-. \scaleDurations 8/9 {f8~ \once \hideNotes 64} \bar "||"
      % Coda
      des,4\tenuto\fermata
      \fine
    }
  >>
}

\score{
  \header{
    subtitle = "3. Fleeting"
    subsubtitle = ##f
    title=##f
    composer=##f
    opus = "HC 353/3"
  }
  \new PianoStaff<<
    \new Staff \relative{
      \clef treble
      \time 3/4
      \tempo "Allegretto placido"
      \repeat segno 2{
        % Repeated part
        r4\pp r16^\markup \italic "8va sempre" cis''(e f e dis b c
        gis a b c bes a g gis gis a b c)
        b\<(c d f g e f d\! b c d e
        f bes, a aes g b cis d\> dis e fis8\!)
        r4 r16 cis(e f e dis b c
        gis a b c bes a g gis gis a b c
        d e fis dis e\< c! cis d dis e g es
        d\> des c gis a? cis\! f bes, e c es des
        c b g? gis fis g gis b c\> cis d f\!)
        r4 r16 gis,(b c b ais fisis gis
        a b c gis b bes a cis d e f fis
        gis a b, c e d g,? a c b)d,(e
        f es e cis d b ais bis cis e f gis
        a cis)b(c d e a, b c d g, a
        b ais bis gis cis e f e b c es d
        f)e,(ges_\markup \italic "rit. e dim." f g gis a ais b c cis d)
        
        % Fermata on barline
        \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
          \mark \markup{\smaller \smaller \musicglyph #"scripts.ufermata"}
        \volta 2 \fine
        \volta 1{
          % Not repeated part
          <<{
            % Voice 1
            \tempo "Più mosso"
            r8\mp <c e>(<b c e><a c e><g c e><f c' e>)
            r <e a c>(<f a c><e a c><d a' c><c a' c>)
            r <b' d f>(<c d f><b d f><a d f><gis d' f>)
            r <f gis b>\>(<gis b><f gis! b><e gis b><d gis b>\!)
            r <d f gis>\<(<e gis>\! <d f gis!><c e gis>\> <b d gis>\!)
            r <c' e>(<b c e><a c e><g c e><f c' e>)
            r <e a c>(<f a c><e a c><d a' c><c a' c>)
            r <b' d f>(<cis d f><c d f><b d f><bes d f>)
            r <a b d>(<ais b d><gis b d><fis b d><f b d?>)
            r <f gis b>(<gis b><f gis! b><e gis b><d gis b>)
            r\f <e' f>\>(<d f> <c e f><b c f><a c f>\!)
            r e'(<d e><c e><b d e><a c e>)
            r d(<c d><b d><a c d><gis b d>)
            r <c e>_\markup \italic "dim. e rit."(<b c e><a c e><g? c e><f c' e>)
            r <c' e>(<b d><a c><g b c><f a c>)
          }\\ \relative{
            % Voice 2
            e'2.
            e
            e
            e
            e,
            e'
            e
            e
            e
            e
            f
            e
            e
            e
            e
          }\\ \relative{\voiceThree
            % Split stems
            s2. s2. s2.
            s4
            \once \override NoteHead.X-offset = #1.7
            \once \override Stem.length = #7
            \once \override Stem.rotation = #'(45 0 0)
            \once \override Stem.extra-offset = #'(-0.1 . -0.2)
            \once \override Flag.style = #'no-flag
            \once \override Accidental.extra-offset = #'(3 . -.1)
            g'!8
            s4. s4
            \once \override NoteHead.X-offset = #1.7
            \once \override Stem.length = #7
            \once \override Stem.rotation = #'(45 0 0)
            \once \override Stem.extra-offset = #'(-0.1 . -0.2)
            \once \override Flag.style = #'no-flag
            \once \override Accidental.extra-offset = #'(3 . -.1)
            g!8 s4.
            s2. s2. s2. s2. s4
            \once \override NoteHead.X-offset = #1.7
            \once \override Stem.length = #7
            \once \override Stem.rotation = #'(45 0 0)
            \once \override Stem.extra-offset = #'(-0.1 . -0.2)
            \once \override Flag.style = #'no-flag
            \once \override Accidental.extra-offset = #'(3 . -.1)
            g!8
          }>>
          \bar "||"
          \time 2/4
          <f c' e>2
          <e b' e gis>\arpeggio \bar "||"
        }
      }
    }
    \new Staff \relative{
      \clef treble
      \time 3/4
      <<{
        % Voice one
        r8 <a' c e>(<b c! e> <a c e> <g c e> <f c' e>)
        r <e a c>(<f a c> <e a c> <d f a> <c f a>)
        r <f gis b>(\once \override Stem.length = #11 <gis b> <f gis b> <e gis b> <d gis b>)
        r <d gis b?>(<e gis b> <d gis b> <c? f gis> <b f'? gis>)
        r <a' c e>(<b c? e> <a c e> <g c e> <f c' e>)
        r <e a c>(<f a c> <e a c> <d f a> <c f a>)
        r <b' d? f?>(<cis d f> <c d f> <b d f> <bes d f>)
        r <a b d>(<ais b d><gis b d><fis b d><f b d?>)
        r <d f gis>(\once \override Stem.length = #11 \once \override Accidental.extra-offset = #'(2.5 . 0) <e g!> <d f gis> <c e f> <b d f>)
        r <a' c d>(<b c d><a c d><g c d><f c' d>)
        r <e a c>(<f a c><e a c><d f a><c f a>)
        r <f a c>(<g? b c><f a c><e g a><d f a>)
        r <d f a>(<e g a><d f a><c? e f><b d f>)
        r <c' e g>(<d f g><c e g><b d e><a c e>)
        r <a? c e?>(<b d e><a c e><g b c><f a c>)
        r <d f gis>(\once \override Stem.length = #11 <e gis> <d f gis><c e f><b d f>) \bar "|."
      }\\ \relative{
        % Voice 2
        a2.
        a
        a
        e
        a
        a
        a
        a
        e
        f
        f
        g?
        g
        c?
        e
        e,
      }\\ \relative{
        \voiceThree
        % Split Stems
        s2. s2. s4
        \once \override NoteHead.X-offset = #1.7
        \once \override Stem.length = #7
        \once \override Stem.rotation = #'(45 0 0)
        \once \override Stem.extra-offset = #'(-0.1 . -0.2)
        \once \override Flag.style = #'no-flag
        \once \override Accidental.extra-offset = #'(3 . -.1)
        g'!8 s4.
        \repeat unfold 5 s2.
        s4
        \once \override NoteHead.X-offset = #-3.7
        \once \override Stem.length = #7
        \once \override Stem.rotation = #'(-45 0 0)
        \once \override Stem.extra-offset = #'(-2.6 . -0.2)
        \once \override Flag.style = #'no-flag
        \once \override Accidental.extra-offset = #'(3 . -.1)
        gis8
        s4.
        \repeat unfold 6 s2.
        s4
        \once \override NoteHead.X-offset = #1.7
        \once \override Stem.length = #7
        \once \override Stem.rotation = #'(45 0 0)
        \once \override Stem.extra-offset = #'(-0.1 . -0.2)
        \once \override Flag.style = #'no-flag
        \once \override Accidental.extra-offset = #'(3 . -.1)
        g8
      }>>
      % Middle part
      a'16(b c d)g,(a b c)f,(g a b)
      e,(f g a)d,(e f g)c,(d e f)
      b,(d e f)e(f gis a)d,(e f g)
      c,(d e f)b,(c d e)a,(b c d)
      c(b)d(c)e(d)f(e)g(f)a(gis)
      a(b c d)g,(a b c)f,(g a b)
      e,(f g a)d,(e f g)c,(d e f)
      b, c'(b c a c? aes c g c ges c)
      b, c'(f, c' fis, c' e, c' d, c' des, c')
      c,(d e f)b,(c d e)a,(b c d)
      a(f' c' a, b' a, a' a, gis' a, f' a,)
      gis(e' c' e, b' e, a e g! e f e)
      d(gis b c, b e g a, b e c' g)
      a(b c d)g,?(a b c)f,(g a b)
      b,(d e f)a,(c d e)g,(c d e)\bar "||"
      \time 2/4
      f,8(a b d)
      <e e,>2 \bar "||"
    }
  >>
}

\score{
  \header{
    subtitle = "4. Scooting"
    subsubtitle = ##f
    title=##f
    composer=##f
    opus="HC 353/4"
  }
  \layout {
    \context {
      \Voice
      \consists Horizontal_bracket_engraver
    }
  }
  \new PianoStaff<<
    \new Staff \relative{
      \clef bass
      \time 3/8
      \key fis \minor
      \repeat segno 2{
        % Repeated part
        <<{\voiceOne
          % Voice one
          s16\mf c'8(e es16~
          16 bes8 b c16~
          16 cis8 d fis?16~
          16 dis8 e cis?16~
          16 c4)r16
          r16 e8(cis? dis16~
          16[eis]dis8. b16~
          16 c a4)
          s16 fis?4(a16~
          8.)gis8(ais16~
          16 b!8 c cis16~
          16 d8 dis fis!16~
          16 dis8 c)r16
        }\\ \relative{\voiceTwo
          % Voice two
          \override Rest.staff-position = #0 r16 <f a>-. r <f a>-. r <f a>-.
          \repeat unfold 3{r <f a>-.}
          r <f a>-.\< r <f a>-. r <f a>-.\!
          r <e g>-.\> r <f gis>-. r <f a>-.
          r <f a>-. r <e g>-.\! r <dis fis>-.
          r <f a>-.\< r <f a>-. r <f a>-.
          r\! <eis gisis>-.\> r <fis! ais>-. r <fis ais>-.
          r <fis! ais>-. r <es g>-.\! r <des f>-.
          r\< d!-. r d-. r f-.\!
          r f-. r_\markup \italic "cresc." <d fis>-. r <e g>-.
          % WHY THE FUCK DOES THE FOOTNOTE DISPLAY TWICE
          r \override Score.Footnote.annotation-line = ##f
          \footnote \markup { \super "(a)" } #'(0 . 4.5)
          \markup {\super "(a)" " Staccato markings on the middle voice are absent in this measure of the original edition." }
          <e g>\parenthesize-. r <e? g>\parenthesize-. r <e g>\parenthesize-.
        }>>
      }
      \alternative{
        \volta 1{
          % Trio
        }
        \volta 2 \volta#'() {
          \section
          \sectionLabel "Coda"
        }
      }
      % CODA GOES HERE
    }
    \new Staff \relative{
      \clef bass
      \time 3/8
      \key fis \minor
      \override HorizontalBracket.direction = #UP
      \override HorizontalBracket.bracket-flare = #'(0 . 0)
      <fis,! cis'!>8-. \startGroup 8-. <g d'>-.
      <fis cis'>-. <f c'>-. <e b'>-.
      <es bes'>-. <d a'>-. <cis gis'>-.
      8-. <c g'>-. 8-. \stopGroup
      <cis! gis'!>-. \startGroup 8-. <d? a'>-.
      <cis gis'>-. <c g'>-. <bes f'>-.
      <es bes'>-. <d a'>-. <cis gis'>-.
      <f c'>-. \stopGroup r4
      <fis! cis'!>8-. 8-. <g cis>->
      <fis? cis'>-. 8-. <f cis'>->
      <e cis'>-. <es cis'>-. <d~ cis'>->
      <d cis'>-. <cis cis'>-. 8-. <c cis'?>-. 8-. cis'-.
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
