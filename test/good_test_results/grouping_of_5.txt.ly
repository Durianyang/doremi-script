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


  c'8[~c'32 d'16.] r16 e'8~e'32 f'32 r8 g'8 r32 a'8~a'32 b'16 r16. c''8~c''32  
 
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