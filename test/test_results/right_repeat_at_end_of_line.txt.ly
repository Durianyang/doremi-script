#(ly:set-option 'midi-extension "mid")
\version "2.12.3"
\include "english.ly"
\header{ 
}
%{
|: S - - - | G - - - :|

|: R - - -  | m - - - :|

%}
melody = {
\once \override Staff.TimeSignature #'stencil = ##f
\clef treble
\key c 
\major
\cadenzaOn
 \bar "|:"  c'4 r4 r4 r4 \bar "|"  e'4 r4 r4 r4 \bar ":|" \break 
 \bar "|:"  d'4 r4 r4 r4 \bar "|"  f'4 r4 r4 r4 \bar ":|" \break 
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