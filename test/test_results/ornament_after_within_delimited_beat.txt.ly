#(ly:set-option 'midi-extension "mid")
\version "2.12.3"
\include "english.ly"
\header{ 
}
%{
  RG
<S>

%}
melody = {
\once \override Staff.TimeSignature #'stencil = ##f
\clef treble
\key c 
\major
\cadenzaOn
  \afterGrace c'4({d'16[ e'16])} \break 
 }
text = \lyricmode {
 
}
\score{

<<
\new Voice = "one" {
\melody
}
\new Lyrics \lyricsto "one" \text
>>
\layout {
\context {
\Score
}
}
\midi {
\context {
\Score
tempoWholesPerMinute = #(ly:make-moment 200 4)
}
}
}