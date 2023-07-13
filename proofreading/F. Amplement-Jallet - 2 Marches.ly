\version "2.24.1"
#(set-global-staff-size 17)
% Proofread by Wilh3lm, may want someone else to look over it
\paper {
  #(define fonts
    (set-global-fonts
     #:music "BMusicFont"
     #:brace "emmentaler"
     #:factor (/ staff-height pt 20)
   ))
  print-all-headers = ##t
}

\header {
  title = "2 Marches for piano"
  composer = "F. Amplement-Jallet"
  copyright = "Piece in public domain, edition by Wilh3lm released under CC BY-SA 4.0"
  tagline = "Engraved with GNU Lilypond 2.24.1 by Wilh3lm, June 28-29 2023. Edition released under CC BY-SA 4.0"
}

\score{
  \header{
    subsubtitle = "Tribute to Miss Marie Fondreton"
    title=##f
    composer=##f
    subtitle = "1. Souvenir de Beaugency"
  }
  \new PianoStaff<<
    \new Staff \relative{
      \time 4/4
      \key f \major
      \tempo "Tempo di Marcia"
      \partial 4
      <<{\voiceOne
          <f' a>8.\mf <g bes>16 \bar "||"
      }\new Voice \relative{\voiceTwo
          r4
      }>>
      \repeat segno 2{
        <<{\voiceOne
          <a c>4 <f c'> <a c>8. <gis b>16 <a c>8. <bes d>16
          <a c>4 <f c'> <a c>8. <gis b>16 <a c>8. <b d>16
          <g! bes!>4 4 <e g>8. <f a>16 <g bes>8. <e g>16
          a2(f8) b\rest <f a>8. <g bes>16
          <a c>4 <f c'> <a c>8. <gis b>16 <a c>8. <bes d>16
          <a c>4 <f c'> <a c>8. <gis b>16 <a c>8. <b! d>16
          <c e>4 <c e> e8. d16 c8. b!16
          a8 b\rest <c, e bes'!>2-> <f a>8.\f <g bes>16
          <a c>4 <a c> c8. b16 c8. d16
          c4 <a c> <a c>8. <gis b>16 <a c>8. <bes d>16
          <g! bes!>4 <e bes'> <e g>8. <f a>16 <g bes>8. <e g>16
          a2(f8) b\rest <f a>8. <g bes>16
          <a c>4 <a c> c8. b16 c8. cis16
          d4 <bes d> d8. e16 f8. d16
          c2~\tuplet 3/2{c8 d c}\tuplet 3/2{<bes e,> <a e> <g e>} \bar "||"
        }\new Voice \relative{\voiceTwo \shiftOff
          r4 c' f8 r r4
          r4 c f8 r r4
          r4 c c8 r r4
          c2(a8) s4.
          r4 c f8 r r4
          r4 c f8 r r4
        
          r4 a
          \once \override NoteColumn.force-hshift = #1.1 b
          \once \override NoteColumn.force-hshift = #1.1 gis!
        
          c,8 s2..
          r4 f f2
          4 4 2
          r4 c c r
          c2(a8) s4.
          r4 f' f2
        
          4 4 
          \once \override NoteColumn.force-hshift = #1.1 bes 
          aes
        
          <f a!>2 <e g>4 \tuplet 3/2{d8 c bes}
        }\new Voice \relative{\voiceFour \shiftOff
          s1 s1 s1
        
          \stemUp \once \shape #'((1 . 0.2) (0.3 . 0.2) (-0.4 . 0.2) (-1.1 . 0.2)) Slur f'2(
          \once \override Stem.length = #9.5 c8)
          s4 s8
        
          s1 s1 \stemDown
          s2 
          \tweak Dots.extra-spacing-width #'(0 . 0) gis'8. f16 e8. d16
          s1 s1 s1 s1
        
          \stemUp \once \shape #'((1 . 0.2) (0.3 . 0.2) (-0.4 . 0.2) (-1.1 . 0.2)) Slur f2(
          \once \override Stem.length = #9.5 c8)
          s4 s8
          s1
          \stemDown s2 f2
        }>>
      }
      \alternative{
        \volta 1{
          <f a,>8 b\rest <f a f'>8. 16 8 b\rest b4\rest \bar ".|:-||"
          \repeat volta 2{
            b8\rest <c g e>16 16 8 8 8 b\rest b4\rest
            b8\rest <c g e>16 16 8 8 8 b\rest <cis a e> b8\rest
            b\rest <d a d,> b\rest <d a f> b\rest <b g d> b\rest <b g f>
            b\rest <c! g e>16 <c g e>16 8 8 8 b\rest b4\rest
            b8\rest <c g e>16 16 8 8 8 b\rest b4\rest
            b8\rest <c g e>16 16 8 8 8 b\rest <cis a e> b8\rest
            b\rest <d a d,> b\rest <d a f> b\rest <b g d> b\rest <b g f>
            
          }
          \alternative{
            \volta 1{
              b8\rest <c g e>16 16 8 8 8 b\rest b4\rest
            }
            \volta 2{
              b8\rest <c g e>16 16 8 8 8 r <f, a>8.\f <g bes!>16
            }
          }
          <<{\voiceOne
             <a c>4 4 c8. b16 c8. d16
             c4 <a c> <a c>8. <gis b>16 <a c>8. <bes d>16
             <g! bes!>4 <e bes'> <e g>8. <f a>16 <g bes>8. <e g>16
             a2(f8) b\rest <f a>8. <g bes>16
             <a c>4 4 c8. b16 c8. cis16
             d4 <bes d> d8. e16 f8. d16
             c2~\tuplet 3/2{8 d c} \tuplet 3/2{<bes e,> <a e> <g e>}
          }\new Voice \relative{\voiceTwo
            r4 f' f2~
            4 4 2
            r4 c c r
            c2(a8) s4.
            r4 f'4 2~
            
            4 4 
            \once \override NoteColumn.force-hshift = #1.1 bes 
            aes
            
            <f a!>2 <e g>4 \tuplet 3/2{d8 c bes}
            
          }\new Voice \relative{\voiceFour \shiftOff
            s1 s1 s1
            
            \stemUp \once \shape #'((1 . 0.4) (0.3 . 0.6) (-0.4 . 0.4) (-1.1 . 0.4)) Slur f'2(
            \once \override Stem.length = #9.5 c8)
            s4 s8
            
            s1
            \stemDown s2 f2
          }>>
          
          %Last measure before trio
          f8 b\rest <f a f'>8. 16 8 b\rest <bes, d>8.\p <c es>16 \bar "||"
          
          \sectionLabel "Trio"
          \key bes \major
          
          <<{\voiceOne
            f8. d'16 c8. bes16 a8. c!16 bes8. g16
          }\new Voice \relative{\voiceTwo
            d'4 d cis cis
          }>>
          
          \set doubleSlurs = ##t
          <d f>2(<bes d>8) b'\rest <f d>8.\mf <f d d'>16
          <es f c'>4 <d f b> <es f c'> <es f cis'>
          
          \set doubleSlurs = ##f
          \once \override Tie.direction = #DOWN
          <d f d'>2(~ <d f bes>8) b'\rest <bes, d>8.\p <c es>16
          
          <<{\voiceOne
            f8. d'16 c8. bes16 a8. c!16 bes8. g16
          }\new Voice{\voiceTwo
            d4 d cis cis
          }>>
          
          \set doubleSlurs = ##t
          <d f>2(<bes d>8) b'\rest <bes, d>8.\mf e16
          
          <<{\voiceOne
            fis8. b16 a2 e8. fis16
          }\new Voice{\voiceTwo
            d4 d cis cis
          }>>
          
          \override Tie.direction = #CENTER
          <d fis,>2~8 b'\rest <bes,! d>8.\p <c! es!>16
          
          <<{\voiceOne
            f!8. d'16 c8. bes16 a8. c!16 bes8. g16
          }\new Voice \relative{\voiceTwo
            d'4 d cis cis
          }>>
          
          \override Rest.voiced-position = #4.
          <d f>2(<bes d>8) r <d f>8.\mf <d f d'>16
          <es f c'>4 <d f b> <es f c'> <es f cis'>
          
          \set doubleSlurs = ##f
          \once \override Tie.direction = #DOWN
          \override DynamicTextSpanner.style = #'none
          <d f d'>2(~ <d f bes>8) b'\rest <bes, d>8.\cresc <c es>16
          <d f>8. <f d'>16 <es c'>8. <d bes'>16 <c a'>8. <es c'>16 <d bes'>8. <c a'>16
          
          <bes g'>4 
          \override Tie.direction = #CENTER
          \once \override Stem.direction = #DOWN <g' es'>\f->~ 
          \tuplet 3/2{8 <f! d'> <es c'>} \tuplet 3/2{<g bes> <f a> <es g>}
          \tuplet 3/2 4{<d f>8 <d' f> <c es> <bes d> <a c> <g bes> <f a> <es g> <d f> <c es> <bes d> <a c>}
          
          <<{\voiceOne bes8}\new Voice{\voiceTwo bes8}>>
          \override Rest.voiced-position = #4. r <d bes'>8. 16 4 r
          
          % Unison fortissimo octaves
          <d d'>4.\ff 16 16 4. 16 16 
          8 16 16 8 <d a' c> <d g bes>[<d fis a>]<d g> r
          <c c'>4. 16 16 4. 16 16
          8 16 16 8 <c g' bes> <c f! a>[<c e g>] <c f>\noBeam <<{\voiceOne f}\new Voice{\voiceTwo f}>>
          <<{\voiceOne 4. 16 16 4. 16 16}\new Voice{\voiceTwo 4. 16 16 4. 16 16}>>
          <f a>8[<g bes>]<a c> <bes d> <c es> r <bes, d>8.\p <c es>16
          
          <<{\voiceOne 
            f8. d'16 c8. bes16 a8. c!16 bes8. g16
          }\new Voice{\voiceTwo
            d4 d cis cis
          }>>
          
          \set doubleSlurs = ##t
          <d f>2(<bes d>8) r <d f>8.\mf <d f d'>16
          <es f c'>4 <d f b> <es f c'> <es f cis'>
          
          \set doubleSlurs = ##f
          \once \override Tie.direction = #DOWN
          <d f d'>2(~ <d f bes>8) r <bes d>8.\cresc <c es>16
          <d f>8. <f d'>16 <es c'>8. <d bes'>16 <c a'>8. <es c'>16 <d bes'>8. <c a'>16
          
          <bes g'>4 
          \override Tie.direction = #CENTER
          \once \override Stem.direction = #DOWN <g' es'>\f->~ 
          \tuplet 3/2{8 <f! d'> <es c'>} \tuplet 3/2{<g bes> <f a> <es g>}
          \tuplet 3/2 4{<d f>8 <d' f> <c es> <bes d> <a c> <g bes> <f a> <es g> <d f> <c es> <bes d> <a c>}
          
          <<{\voiceOne bes8}\new Voice{\voiceTwo bes8}>>
          \override Rest.voiced-position = #4. r <d bes'>8. 16 8 r <f a>8.\mf <g bes>16
          
        }
        \volta 2 \volta#'() {
          \section
          \sectionLabel "Coda"
        }
      }
      \key f \major
      \time 4/4
      
      <f a,>8 r\ff r4 r8 <c f a>16 16 8 8
      <d f bes> r r4 r8 <f aes b>16 16 8 8
      <f a! c> a c f <g b, f>4 <f b, f>8 <d b f>
      
      <<{\voiceOne
        <f, c'> c f a
        \tuplet 3/2 4{c d c bes a g}
      }\new Voice{\voiceTwo
        s8 r8 r4 e8 r e r
      }>>
      
      <f a>8 r r4 r8 <c f a>16 16 8 8
      <d f bes> r r4 r8 <f aes b>16 16 8 8
      <f a! c> a c f <g b, f>4 <f b, f>8 <d b f>
      
      <<{\voiceOne
        <f, c'> c f a
        \tuplet 3/2 4{c d c bes a g}
        \partial 2.
        \override Score.Footnote.annotation-line = ##f
        \footnote \markup { \super "(a)" } #'(0 . 3.5)
        \markup { \super "(a)" " Bar missing a beat, reproduced as in original edition." } f8
      }\new Voice{\voiceTwo
        s8 r8 r4 e8 r e r
        
        f8
      }>>
      
      r16 <f a f'>16 4 4 %EDITORIAL NOTE: Bar missing a beat in original
      4 r4 r2
      
      \fine
    }
    \new Staff \relative{
      \clef bass
      \time 4/4
      \key f \major
      \partial 4
      r4 \bar "||"
      <f, f'>4 \once \stemUp <a a'> <f f'>8 r r4
      <f f'>4 \once \stemUp <a a'> <f f'>8 r r4
      <c c'> <e e'> <c c'>8 r r4
      f'8(f, a c f)r r4
      <f, f'>4 <a a'> <f f'>8 r r4
      <f f'>4 <a a'> <f f'>8 r f'4
      e8. e,16 a8. c16 e4 <e e,>
      <a a,>8 r <g! g,!>4-> <c, c,>8-> r r4
      r8 a c[f]a8. gis16 a8. bes!16
      a8 f c[a]f4 f'
      e8 bes' g e c4 c'
      f,8(f, a c f[)c(c'8. bes16)]
      a8 a, c f a8. gis16 a8. 16
      bes!8 bes, d[f]bes4 b
      c8 c, f[a]c4 \tuplet 3/2{c,8 c c}
      \bar "||"
      % TO CODA
      f r <f f,>8. 16 8 r e8.^\ff f16
      
      <<{\voiceOne
          g2~8. a16 g8. fis16
          g2~8. a16 g8. e16
          f!4 d g g,
          e'2(c8) d\rest e8. f16
          g2~8. a16 g8. fis16
          g2~8. a16 g8. e16
          f!4 d g g,
          c2~8 r e8. f16
          c2~8 d8\rest d4\rest
      }\new Voice \relative{\voiceTwo
          r8 c16 16 8 8 8 r8 r4
          r8 c16 16 8 8 8 r8 a r
          f'4 d g g,
          e'2(c8) s8 r4
          r8 c16 16 8 8 8 r8 r4
          r8 c16 16 8 8 8 r8 a r
          f'4 d g g,
          c2~8 s8 r4
          c2~8 s4.
      }>>
      
      % After 2nd ending
      \stemNeutral
      d8\rest a c[f] a8. gis16 a8. bes!16
      a8 f c[a] f4 f'
      e8 bes' g[e] c4 c'
      f,8(f, a c f[)c(c'8. bes16)]
      a8 a, c f a8. gis16 a8. 16
      bes!8 bes, d[f] bes4 b
      c8 c, f[a] c4 \tuplet 3/2{c,8 8 8}
      f d\rest <f f,>8. 16 8 d\rest d4\rest
      
      %TRIO
      \key bes \major
      
      <f bes,>4 4 <e bes> <e bes>
      
      <<{\voiceOne
        f2~8 d\rest d4\rest
      }\new Voice{\voiceTwo
        bes4 4 8 s4.
      }>>
      
      a8[f']gis,[f']a,[f']f,[f']
      bes, bes d f bes\> f d f
      bes,4\! <bes f'> <bes e> <bes e>
      
      <<{\voiceOne
        f'2~8 d\rest <bes g'>4
      }\new Voice{\voiceTwo
        bes4 4 8 s4.
      }>>
      
      <a a'>4 <a fis'> <a e'> <a g'>
      d(a d,8) d'\rest d4\rest
      <bes f'!>4 <bes f'> <bes e> <bes e>
      
      \override Rest.voiced-position = #4.
      
      <<{\voiceOne
        f'2~8 r r4
      }\new Voice{\voiceTwo
        bes,4 4 8 s4.
      }>>
      
      a8[f']gis,[f']a,[f']f,[f']
      bes, bes d f bes f d f
      bes,4 <bes f'> <d fis> <d fis>
      <es g> <es bes'>-> <c c'> <c c'>
      
      <<{\voiceOne
        f4 f <es f,> <es f,>
      }\new Voice{\voiceTwo
        f4 f s2
      }>>
      
      <bes, d>8 r <bes f'>8. 16 4 r
      
      %Unison fortissimo octaves
      <d d,>4. 16 16 4. 16 16
      8 16 16 8 <fis fis,> <g g,>[<a a,>]<bes bes,> r
      <c, c,>4. 16 16 4. 16 16
      8 16 16 8 <e e,> <f! f,>[<g g,>] <a a,>\noBeam <f f,>8
      4. 16 16 4. 16 16
      <es! es,!>8[<d d,>]<c c,> <bes bes,> <a a,> r r4
      <bes f'>4 <bes f'> <bes e> <bes e>
      <<{\voiceOne f'2~8 r r4}\new Voice{\voiceTwo bes,4 4 8 s4.}>> \override Rest.voiced-position = #4.
      a8[f']gis,[f']a,[f']f,[f']
      bes, bes d f bes f d f
      bes,4 <bes f'> <d fis> <d fis>
      <es g> <es bes'>-> <c c'> <c c'>
      <<{\voiceOne f f <es f,> <es f,>}\new Voice{\voiceTwo f f s2}>>
      <bes, d>8 r <bes f'>8. 16 8 r r4 \bar "||"
      
      %CODA
      \key f \major
      \time 4/4
      
      f'8 <f f,>16[16]8 8 <es es,>2->
      <d d,>8 <f f,>16 16 8 8 <des des,>2->
      <c c,>8 r r4 <g g'>4 8 8
      \override Stem.direction = #DOWN
      <c a'> r r4 <c g' bes!>8 r <c g' bes> r
      
      <f a> \override Stem.direction = #UP
      <f f,>16[16]8 8 <es es,>2->
      
      <d d,>8 <f f,>16 16 8 8 <des des,>2->
      <c c,>8 r r4 <g g'>4 8 8
      
      \override Stem.direction = #DOWN
      <c a'> r r4 <c g' bes!>8 r <c g' bes> r
      
      <f a>8 r16
      \ottava #-1
      \set Staff.ottavation = #"8va ad lib"
      f, c4 a
      
      f \ottava #0 r r2
      
      \fine
    }
  >>
}

\score{
  \header{
    subsubtitle = "To my niece Marthe Coisel"
    title=##f
    composer=##f
    subtitle = "2. Marthe"
  }
  \new PianoStaff<<
    \new Staff \relative{
      \clef treble
      \key f \major
      \time 4/4
      \tempo "Tempo di Marcia"
      
      %Pre=segno
      r4 r8 c'8\ff 4. 16 16
      4. 16 16 8[8]<c e> <c e g>
      <e g c>2~8 r c'4\mf
      c a f a
      c2. d4
      c bes d, e
      g2(f8) r c'4
      c a f a
      c2. d4
      c c b e,
      <<{\voiceOne a2~8}\new Voice{\voiceTwo r4 <e c>4 8}>> b'\rest <g! bes!>8.\f <f a>16
      \override Rest.voiced-position = #4.
      
      \stemNeutral <e g>8. <dis fis>16 <e g>8. <f a>16 <g bes>8. <a c>16 <bes d!>8. <g e'>16
      <a f'>4-> <f a>-> <a c>8-> r <bes d>8.\mf <a c>16
      
      \once \override Tie.direction = #CENTER
      <g bes>2~8 r <a c>8. <g bes>16
      \once \override Tie.direction = #CENTER
      <f a>2~8 r <g bes>8.\f <f a>16
      
      <e g>8. <dis fis>16 <e g>8. <f a>16 <g bes>8. <a c>16 <bes d!>8. <g e'>16
      <a f'>8 r <f b>2-> 4
      <f d'!>8-> <f c'>4 8 <e d'> <e c'> <e bes'!>[<e g>]
      \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
      f4 <e g bes c>\ff-> <f a f'>8-> r \bar "||" <c e>8.\mf <d f>16
      <e g>4 e <dis c'> <dis a'>
      
      \set doubleSlurs = ##t
      <e g>2(<c e>8) r <<{\voiceOne g'8.\f c16}\new Voice{\voiceTwo r4}>>
      
      <<{\voiceOne
        b4~8 a16 g b4~8 a16 g
        \set doubleSlurs = ##f
        e'2(<e, g c>8) r <c e>8.\mf <d! f>16
      }\new Voice{\voiceTwo
        r8 f!16 16 8 r r f16 16 8 r
        r <e g>8 8 8 s2
      }>>
      
      <e g>4 e <dis c'> <dis a'>
      \once \override Tie.direction = #CENTER
      <e g>2~8 r <<{\voiceOne g8.\f e'16}\new Voice{\voiceTwo r4}>>
      
      <<{\voiceOne
        d4~8 b16 g d'4~8 c16 a
        g2~8 r <c, e>8.\mf <d f!>16
      }\new Voice{\voiceTwo
        r8 g16 16 8 r r fis16 16 8 r
        r4 <b, d>4 8 s4.
      }>>
      
      <e g>4 e <dis c'> <dis a'>
      
      \set doubleSlurs = ##t
      <e g>2(<c e>8) r <<{\voiceOne g'8.\f c16}\new Voice{\voiceTwo r4}>>
      
      <<{\voiceOne
        b4~8 a16 g b4~8 a16 g
        \set doubleSlurs = ##f
        e'2(<e, g c>8) r <c e>8. <d! f>16
      }\new Voice{\voiceTwo
        r8 f!16 16 8 r r f16 16 8 r
        r <e g>8 8 8 s2
      }>>
      
      
      \override DynamicTextSpanner.style = #'none
      <e g>4 <c e>->\cresc <c f>-> <c e g>->
      <<{\voiceOne
        <c f a>8-> r c'4->\ff~ \tuplet 3/2{8 d! c} <b dis,> <a dis,>
        g8. e16 a8. e16 f!8. d16 g8. b,16
        c!2~8 r \stemDown c'4\mf \bar "||"
      }\new Voice{\voiceTwo
        s2 dis,4 s4
        e8 r cis r d! r b r
        c2~8 s4.
      }>>
      
      \repeat segno 2{
        %REPEATED PART
        \stemNeutral
        c'4 a f a
        c2. d4
        c bes d, e
        g2(f8) r c'4
        c a f a
        c2. d4
        c c b e,
        <<{\voiceOne a2~8}\new Voice{\voiceTwo r4 <e c>4 8}>> b'\rest <g! bes!>8.\f <f a>16
        \override Rest.voiced-position = #4.
      
        \stemNeutral <e g>8. <dis fis>16 <e g>8. <f a>16 <g bes>8. <a c>16 <bes d!>8. <g e'>16
        <a f'>4-> <f a>-> <a c>8-> r <bes d>8.\mf <a c>16
      
        \once \override Tie.direction = #CENTER
        <g bes>2~8 r <a c>8. <g bes>16
        \once \override Tie.direction = #CENTER
        <f a>2~8 r <g bes>8.\f <f a>16
      
        <e g>8. <dis fis>16 <e g>8. <f a>16 <g bes>8. <a c>16 <bes d!>8. <g e'>16
        <a f'>8 r <f b>2-> 4
        <f d'!>8-> <f c'>4 8 <e d'> <e c'> <e bes'!>[<e g>]
        \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        f4 <e g bes c>\ff-> <f a f'>8-> r \bar "||"
        
        
        \volta 2{
          \tweak direction #UP
          \fine %END
        }
        \volta 1{
          \key aes \major
          \sectionLabel "Trio"
          <<{\voiceOne es!4\p}\new Voice{\voiceTwo es4}>>
          %Post-fine (TRIO)
          <<{\voiceOne
            c'4. bes8 <aes c,>4 <f b,>
            es2~8 r <f des! aes>8.\cresc <g es bes!>16
          }\new Voice \relative c'{\voiceTwo
            c4 c s2
            c4 4 8 s4.
          }>>
          <c, es aes>4 <des es g> <c es aes> <c f a>
          \override Tie.direction = #CENTER <des f bes>2\f->~(<des f>8) r <es f>4\p
          
          <<{\voiceOne
            des'4. c8 <bes f>4 <aes! f>
            aes2(g8\noBeam) es\cresc g[bes]
            es4 <des! g, es> <c aes es> <bes es, des!>
            b2->\f(<c es,>8) b\rest es,4\p
            
            c'4. bes8 <aes c,>4 <f b,>
            es2~8 r <f des! aes>8.\cresc <g es bes!>16
          }\new Voice \relative c'{\voiceTwo \shiftOn
            \set doubleSlurs = ##t
            des4 es s2
            \once \override NoteColumn.force-hshift = #1.3
            es4 d s8 r r4
            r4 s2.
            \shiftOff \once \stemUp <d f>2(\once \stemUp es4) es
            c c s2
            c4 4 8 s4.
          }\new Voice \relative c'{\voiceFour \shiftOff
            s1
            bes2~8
          }>>
          
          <aes es c>4 <g es des> <aes es c> <a f c>
          \override Tie.direction = #CENTER
          <bes f des>2->~(<des, f>8) r
          
          <<{\voiceOne
            f4\ff <des' f>4.-> <c es>8 <bes des> r f4
            <c' es>4. <bes des>8 <aes c> r es4
          }\new Voice{\voiceTwo
            f4 2~8 s8 4
            es2~8 s8 4
          }>>
          
          <f des'>4.-> <es c'>8 <des bes'>4 <es c'>
          \override Tie.direction = #CENTER <c aes'>2->~8 r <f aes>8.\p <g bes>16
          <aes c>2 \once \override Stem.direction = #DOWN <des f>
          <aes c>2. \override Stem.direction = #DOWN <aes f'>4
          <c es> <bes des> \override Stem.direction = #UP <aes c> <g bes>
          <f aes>8. <e g>16 <f aes>8. <g bes>16 <aes c>4 <f aes>8.\cresc <g bes>16
          <aes c>2\< \override Stem.direction = #DOWN <aes f'> 
          <c es!>2\!~8 r \override Stem.direction = #UP <es, g es'>4\ff->
          <es aes c>-> <f aes>-> <<{\voiceOne bes!4.-> c8->}\new Voice{\voiceTwo <aes f>4 <g es>}>>
          \override Tie.direction = #CENTER <aes es! c>2->~8 r <f aes>8.\p <g bes>16
          <aes c>2 \once \override Stem.direction = #DOWN <des f>
          <aes c>2. \override Stem.direction = #DOWN <aes f'>4
          <c es> <bes des> \override Stem.direction = #UP <aes c> <g bes>
          <f aes>8. <e g>16 <f aes>8. <g bes>16 <aes c>4 <f aes>8.\cresc <g bes>16
          <aes c>2\< <g c>
          \override Tie.direction = #CENTER <f f'>2\!~8 r f8.\ff <f g>16
          <f aes>4-> <f a>-> <f bes>-> <f b>->
          <e c'>2->~8 r c'4 \bar "||"
        }
      }
    }
    \new Staff \relative{
      \clef bass
      \key f \major
      \time 4/4
      
      r4 r8 c8 4. 16 16
      4. 16 16 8[<c g' bes>]8 8
      2~ \tuplet 3/2 4{8 <d d'>\> <c c'> <bes bes'> <a a'> <g g'>\!}
      
      <f f'>8 <a' c>16 16 8 8 <f f,> <a c>16 16 8 8
      <f f,> <a c>16 16 8 8 <f f,> <a c>16 16 8 8
      <e e,> <g bes c>16 16 8 8 \once \override Stem.direction = #DOWN <c, c,> <g' bes c>16 16 8 8
      <f f,> <a c>16 16 8 8 <f f,> <a c>16 16 8 8
      <f f,> <a c>16 16 8 8 <f f,> <a c>16 16 8 8
      <e e,> <a c>16 16 8 8 <e e,> <a c>16 16 8 8
      <e e,> <gis d'>16 16 8 8 <e e,> <gis d'>16 16 8 8
      <a c> a(e c a)r r4
      <c bes' c>4-> 4-> 4-> 4->
      <f a c>4-> 4-> 8-> r r4
      r8 c(e[g]c)r r4
      r8 f,,(a[c]f)r r4
      <c bes' c>4-> 4-> 4-> 4->
      <f a c>8 r <des aes'>2-> 4
      <c a'!>8-> 4 8 <c g' bes>8 8 8 8
      <f a>4 <c c,>-> <f, f,>8-> r \bar "||" r4
      <c' g'>4 4 <c fis>4 4
      <c g'>4 4 8 r r4
      r8 <g d'! g>16 16 8 r r8 16 16 8 r
      r c e g c g e g
      c,4 <c g'>4 <fis c>4 4
      <g c,>4 4 8 r r4
      r8 <b d,>16 16 8 r r <c d,>16 16 8 r
      <g b>8 g(d b g) r r4
      <c g'>4 4 <c fis>4 4
      <c g'>4 4 8 r r4
      r8 <g d'! g>16 16 8 r r8 16 16 8 r
      r c e g c g e g
      c,4 <bes! bes'!>-> <a a'>-> <g g'>->
      <f f'>8-> r r4 <fis fis'>4 8 8
      <g g'> r <g e'> r <g d'!> r <g f'!> r
      <c e> r <bes! bes'!>4\> <a a'> <g g'>\!
      
      \bar "||" % SEGNO
      
      <f f'>8 <a' c>16 16 8 8 <f f,> <a c>16 16 8 8
      <f f,> <a c>16 16 8 8 <f f,> <a c>16 16 8 8
      <e e,> <g bes c>16 16 8 8 \once \override Stem.direction = #DOWN <c, c,> <g' bes c>16 16 8 8
      <f f,> <a c>16 16 8 8 <f f,> <a c>16 16 8 8
      <f f,> <a c>16 16 8 8 <f f,> <a c>16 16 8 8
      <e e,> <a c>16 16 8 8 <e e,> <a c>16 16 8 8
      <e e,> <gis d'>16 16 8 8 <e e,> <gis d'>16 16 8 8
      <a c> a(e c a)r r4
      <c bes' c>4-> 4-> 4-> 4->
      <f a c>4-> 4-> 8-> r r4
      r8 c(e[g]c)r r4
      r8 f,,(a[c]f)r r4
      <c bes' c>4-> 4-> 4-> 4->
      <f a c>8 r <des aes'>2-> 4
      <c a'!>8-> 4 8 <c g' bes!>8 8 8 8
      <f a>4 <c c,>-> <f, f,>8-> r \bar "||"
      
      \key aes \major % TRIO
      r4
      <aes es'>4 4 4 <aes d>
      <aes es'>4 4 8 r \ottava #-1 \set Staff.ottavation = #"8va ad lib" des,!4
      c bes aes8[ges] f es
      des4-> f8 bes des4 \ottava #0 <c c'>
      <bes bes'> <c c'> <des des'> <d d'>
      <es es'> <f f'> <es es'>8 r r4
      r <es es'> <f f'> <g g'>
      <as as'>-> <as as,> <as as'>8 r r4
      <as es'>4 4 4 <as d>
      <aes es'>4 4 8 r \ottava #-1 \set Staff.ottavation = #"8va ad lib" des,!4
      c bes aes8[ges] f es
      des4-> f8 bes des8 \ottava #0 r r4
      <des' f bes>4-> 4-> 8-> r r4
      <es aes! c>-> 4-> 8-> r r4
      <es g>4-> 4-> 4-> 4->
      aes->(es aes,8) r r4
      
      <<{\voiceOne
        r8 <aes' c>8 8 8 r <bes des>8 8 8
        r <aes c>8 8 8 r8 8 8 8
        r <bes des>8 8 8 r <c e,>8 8 8
        r <aes c>8 8 8 r8 8 8 8
        r8 8 8 8 r <f aes b>8 8 8
        r <aes c>8 8 8 8 d,\rest <es es,>4->
      }\new Voice{\voiceTwo
        f8 r r4 f8 r r4
        f8 r r4 f8 r r4
        bes,8 r r4 c8 r r4
        f8 r r4 f8 r r4
        f2 d
        es!~8
      }>>
      
      <aes aes,>4-> <f f,>-> <des des,>-> <es es,>->
      <aes aes,>8-> aes, c es as bes^\> as g\!
      
      <<{\voiceOne
        r8 <aes c>8 8 8 r <bes des>8 8 8
        r <aes c>8 8 8 r8 8 8 8
        r <bes des>8 8 8 r <c e,>8 8 8
        r <aes c>8 8 8 r8 8 8 8
        r8 8 8 8 r <g c>8 8 8
        r <f aes>8 8 8 8 d\rest \stemNeutral <des f>8. 16
      }\new Voice{\voiceTwo
        f8 r r4 f8 r r4
        f8 r r4 f8 r r4
        bes,8 r r4 c8 r r4
        f8 r r4 f8 r r4
        f2 es!
        des~8
      }>>
      <des f>4-> 4-> 4-> 4->
      <c g'>8-> r <bes! bes'!>4^\> <a a'> <g g'>\! \bar "||"
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
    The source for this engraving is the edition published in 1893 by G. Courleux, as available from IMSLP at
    \fontsize #-2 https://imslp.org/wiki/2_Marches_(Amplement-Jallet,_F.)
  }
}
