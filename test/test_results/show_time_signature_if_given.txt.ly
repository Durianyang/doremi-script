#(ly:set-option 'midi-extension "mid")
\version "2.12.3"
\include "english.ly"
\header{


}
%{
TimeSignature:5/4

S - - - - R - - - -

%}
melody = {
\time 5/4
\clef treble
\key c \major
\autoBeamOn
\cadenzaOn


 c'4 r4 r4 r4 r4 d'4 r4 r4 r4 r4
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
\remove "Bar_number_engraver"
}
}
\midi {
\context {
\Score
tempoWholesPerMinute = #(ly:make-moment 200 4)
}
}
}