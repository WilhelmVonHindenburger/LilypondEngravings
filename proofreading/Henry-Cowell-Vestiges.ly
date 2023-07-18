\version "2.24.1"
% NOT PROOFREAD
#(set-global-staff-size 19)
\paper {
  #(define fonts
    (set-global-fonts
     #:music "BMusicFont"
     #:brace "emmentaler"
     #:factor (/ staff-height pt 20)
   ))
}
\layout {
  \enablePolymeter
}
\header {
  title = "Vestiges"
  composer = "Henry Cowell"
  copyright = "Piece in public domain, edition by Wilh3lm released under CC BY-SA 4.0"
  tagline = "Engraved with GNU Lilypond 2.24.1 by Wilh3lm, June 30 2023. Edition released under CC BY-SA 4.0"
  opus = "HC 305"
}

\score{
  \new PianoStaff<<
    \new Staff \relative{
      \accidentalStyle Score.modern
      \clef treble
      \key dis \minor
      \numericTimeSignature \time 4/4
      \tempo "Allegretto Maestoso"
      <<{\voiceOne dis'2\f(cisis)}\new Voice{\voiceTwo r4 ais r b!}>> \bar "||"
      \repeat segno 2{
        % Repeated part
        
        <<{\voiceOne
          dis4(cisis dis ais)
          fis'2(eis)
          fis4(eis fis dis)
          ais'2(gis4~ \tuplet 3/2{8) <f a>(<gis bis>}
          b!4) cis(dis! dis,)
          \override DynamicTextSpanner.style = #'none
          gis2(fis!\dim)
        }\new Voice \relative c'{\voiceTwo
          b8(ais a gis b a gis fis!)
          r4 cis' dis cis
          dis8 d cis c b ais! gis! fis
          r4 <b dis fisis> r \once \accidentalStyle modern <b d fis>
          ais'!8(gis g f e d cis! b
          <cis eis>4 <b dis> <ais> <gis b>)
        }>>
        
        \time 2/4
        \override Rest.voiced-position = #4.
        <fis, ais dis>4\pp(8-.) r
        
        \time 4/4
        <<{\voiceOne
          ais'4.\p(b8 cisis4. dis8
          fis4. eis!8 b4. c8
          \tuplet 3/2{fis2\f-^ dis d}
          \tuplet 3/2{ais d,\dim \clef bass ais})
          \clef treble cis16\p(b' ais! g a fis! d) d'(a, ais'! g! e dis d gis,! gis'
          c, ais' fis dis! c a' b,! b') dis,,!(d' a gis dis fis' e, e')
          \tuplet 3/2{e'2->(g, fis)}
        }\new Voice \relative c'{\voiceTwo
          \mergeDifferentlyDottedOn
          <ais dis>4 <gisis dis' fisis> <cisis gis'!> <g b eis>
          <ais' cis!> <e gis d'> <ais, e'> <a e' gis!>
          \tuplet 3/2 2{<ais' cis>4 <a c> <gis b> <f a> <fis ais> <dis! fisis>
          <d fis!> <c e> <g bes> <f a> <e gis> <dis! fis>}
          cis'4.(d8) a4.(gis8)
          c4(c8 b) dis,4(dis8 e)
          \tuplet 3/2 2{<g' c>4\f <fis! ais!> <c es> <bes d>^\dim <a cis> <g b>\!}
        }>>
        \time 2/4
        <fis, ais dis>4\p(8-.)r \bar "||"
        
        \volta 2 \tweak direction #UP \fine
        \volta 1{
          \time 3/4
          \tempo "Calmato"
          %Middle section
          
          <<{\voiceOne
            e''4\mp(dis8 ais d cis!)
            a4(gis8 e' g,4
            fis8 cis'!) e4(dis8 ais
            eis'! d) cis4(c8 gis'!
            b,4 bes8 fis'! b16\mp ais f e
          }\new Voice \relative{\voiceTwo
            dis'4 e fis
            e dis d
            c dis e
            fis gis g
            fis f <d' g>8 r
          }>>
          \time 2/4
          d16 f ais! cis) <a,, d>4\pp(
          <gis cis>8 a' <g, c>4
          <<{\voiceOne <fis b!>8 fis') bis'16\mf(b g fis}\new Voice \relative{\voiceTwo fis4 <dis'' gis>8 r}>>
          eis16 ais cis! e) \break <a,,, c f>4\p\dim(
          <<{\voiceOne e'8 c'}\new Voice{\voiceTwo <gis, b>4}>> <fisis ais dis>4
          <fis! a d>8 a') <<{\voiceOne a'16\mp(g fis f}\new Voice{\voiceTwo <e b!>8 r}>>
          \time 3/4
          <<{\voiceOne e!4 dis8 ais d cis!)}\new Voice{\voiceTwo dis,4 eis fis}>>
          <<{\voiceOne
            <e a>4(<dis gis>8 e') b'16\mf(ais! f e
            d f ais! cis!) bis\<(b g fis eis!^\markup \italic "rit." ais cis! e\!)
          }\new Voice \relative{\voiceTwo
            s4 dis'4 <d' g>8 r
            r4 <dis! gis>8 r r4
          }>>
          \time 2/4
          \tempo "Meno Mosso"
          <<{\voiceOne
             fis4\p_\markup \italic "legato"(eis!
             fis dis)
             ais'(a
             ais! fis)
             \time 3/4
             eis(\tuplet 2/2{e8 c} dis![d])
             \time 2/4
             c,4 b
             cis! f\dim
          }\new Voice \relative{\voiceTwo
             \tuplet 3/2{fis'''8 fis, b} \scaleDurations 2/3 {eis eis, bis'}
             \tuplet 3/2{fis' fis, a} \scaleDurations 2/3{dis dis, fisis}
             \tuplet 3/2{ais' ais, e'} \scaleDurations 2/3{a a, cis}
             \tuplet 3/2{ais' ais,! g'} \scaleDurations 2/3{fis fis, bis}
             % \time 3/4
             \tuplet 3/2{eis eis, ais} \scaleDurations 2/3{e' e, gis dis' dis,! b'}
             %\time 2/4
             \tuplet 3/2{c,(b'' dis,,} b16) a'' d, a
             \tuplet 3/2{cis,8(c'' e,,}f16) g' c, b,
          }>>
          \time 2/12
          \clef bass
          \tuplet 3/2{r8\pp b,,,_(
          cis!_>[} \tuplet 3/2{dis_.])
          r r}
          \time 3/10
          \tuplet 5/4{\once \shape #'((0 . 0) (0 . -2.1) (0 . 0) (0 . 0)) Slur e_([f, g]
          \time 2/10
          a_>[b!_.])}
          \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
          \mark \markup{\smaller \smaller \musicglyph #"scripts.ufermata"}
          \time 5/10
          \tuplet 5/4 2{bes[(c d e-> g,)]
          dis'[(fis, gis! ais!->\dim bis)]
          cis[(e, fis\ppp gis!^\markup \italic "rit." ais!)]}
          \time 4/16
          \clef treble
          <<{\voiceOne
            <g'' b!>16\mp^\markup \italic "a tempo"[(<fis ais> <cis eis> <c e>)]
            \time 4/4
            dis'4( d8_\markup{\fontsize #1 \italic "poco cresc."} a cis[c^\markup \italic "non rit."]) b16(ais f eis)
            dis2->\f d-> \bar "||"
          }\new Voice \relative{\voiceTwo
            <d' g>8 r
            e4 dis! d <d g>8 r
            r4 ais! c b
          }>>
        }
      }
    }
    \new Staff \relative{
      \accidentalStyle Score.modern
      \clef bass
      \key dis \minor
      \override Staff.RehearsalMark.direction = #DOWN
      \override Staff.RehearsalMark.rotation = #'(180 0 0)
      \numericTimeSignature \time 4/4
      r4 <fis, bis disis> r <a dis fis> \bar "||"
      
      % Repeated part
      \accidentalStyle Score.default
      <c c,>4(<b b,>8 <ais! ais,!> <g g,> <f f,> <e e,> <dis dis,>)
      r4 <a' dis fisis> <b eis gisis> <a dis fisis>
      <d d,>8 <c c,> <b b,> <ais ais,> <a a,> <g g,> <eis eis,> <dis! dis,!>
      r4 <fis! fis'!> r <eis eis'>
      <dis dis'>(<d d'> <c c'> <b b'>8 <ais ais'>
      \tuplet 3/2 2{<dis dis'>4 <fisis fisis'> <ais ais,> <gis gis,> <a a,> \ottava #-1 <eis eis,>)}
      \time 2/4
      <dis dis,>4(8-.) \ottava #0 r
      \time 4/4
      \tuplet 3/2 2{dis'4 f gis,! g' ais cis,!
      c' e g, d fis ais,!}
      <gis gis,> <ais! ais'!> <cis! cis,!> <gis gis'>
      <e e,> <fis fis'> <cis! cis'!> <dis! dis,!>
      <<{\voiceOne
      \scaleDurations 2/3 {<b' a'>2(<ais! gis'!>4) <gis fis'>2(<a f'>4)
      fis'8[(g a aes)] g4} \once \stemDown ais,,! r
      }\new Voice\relative{\voiceTwo
        \tuplet 3/2 2{f4 dis e d cis d
        <b dis>(<d f> <bes es>8) \once \shape #'((0 . -1) (0 . -5) (0 . 0) (0 . 0)) Slur a(} \stemUp \tuplet 3/2 4{bes fis d' a eis! dis!)}
      }>>
      \ottava #-1 <cis! cis,!>4->(\ottava #0 <b b'> <gis! gis'!> <e e'>)
      \time 2/4
      \override Rest.voiced-position = #4.
      <dis dis'>(8-.)r \bar "||"
      
      % Middle section, Calmato
      \time 2/4
      \revert Stem.direction
      <dis'' fis ais>4(<dis gis b>
      <dis! a' c> <dis ais' cis>)
      <dis a' c>(<dis! gis! b>
      <dis fisis ais!> <dis fis ais>)
      <dis gis b>(<dis a' c>
      <a' d f> <a cis! e>)
      <g c es>(<g b! d>
      \clef treble <dis'! gis! b!> <dis! fis! a>)
      \clef bass <gis,, dis'! fis>(<gis d' f>
      <gis! cis! e> <gis bis dis>)
      \clef treble <dis'' a' cis>( <dis fis a c>
      \clef bass <gis,, dis'! fis!> <gis d' f>
      <gis cis e> <gis bis dis>)
      <c' es aes>(<dis, fis ais>
      <dis gis b> <dis! a' c>)
      <dis ais'! cis!>(<dis a' c>)
      \clef treble <dis'! gis! b>(<dis! fis! a>)
      <dis a' cis!>(<dis fis a c>)
      % Meno mosso
      \time 3/4
      \set Staff.pedalSustainStyle = #'bracket
      c'16\sustainOn e g, c,\sustainOff
      fis\sustainOn dis' ais ais,\sustainOff \break
      eis'_\markup \italic "simile" d' gis, b,!
      \time 4/4
      e b' gis! e,b'' f'8 d,16 ais'! fis'8 bis,,16 a' e'8 dis,16
      g8 dis'16 a, b'8 d16 e, eis cis'!8 b,16 d a'8 c,16
      <<{\voiceOne g'4fis f e}\new Voice{\voiceTwo 
        \once \shape #'((0 . 5) (0 . 6) (0 . 4) (0 . 0)) Slur b4^(
        \tuplet 3/2{ais dis!8} a4 \tuplet 3/2{gis cis8)}
      }>>
      \time 2/4
      <c es g>4 <a d fis>
      <gis! b dis!> <f bes d>
      % Fermata
      <b! d fis!> <aes des f>
      <a c e> <fis b dis>
      \clef bass <g bes d> <e a cis>
      <bis gis'!>(<b g'>)
      \time 3/4
      <ais fis'>(<a f'> <gis! dis'!>)
      \time 4/4
      r <fis c' e> r <a dis! fis!> \bar "||"
    }
  >>
}