#(ly:set-option 'midi-extension "mid")
\version "2.12.3"
\include "english.ly"
\header{


}
%{

%}
melody = {
\clef treble
\key c \major
\cadenzaOn


  g4 e'4 e'4 d'8[ c'8] \bar "|"  d'4 f'4 f'4 r4 \bar "|"  g'8[ e'8] f'8[ d'8] g8[ d'16 e'16] f'8[ d'8] \bar "|"  
 
}


text = \lyricmode {
                 
}

\score{
\transpose c' e'
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