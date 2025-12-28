\version "2.24.2"
\pointAndClickOff % clic en notas

\header {
  title = "Suite No. 2 in B Minor, BWV 1067: VI. Menuet"
  subtitle  = "Transcription for Solo Electric Guitar"
  composer = "Johann Sebastian Bach"
  arranger = \markup
    \with-url #"https://www.youtube.com/@xavierjimenez"
      \fontsize #-4 "Xavier Jiménez-Albán"
}


\layout {
  \context {
    \Staff
    \omit StringNumber   % oculta los círculos en el pentagrama
  }
}

melodia = \relative d' {
  \key b \minor
  \time 3/4
  % Compás 1
  b8(\4 cis\4 d8\4)  fis\3  b4-.\2 |      
  % Compás 2
  \appoggiatura { a8\2 } g2.\2~ | 
  % Compás 3 
   g4 fis\2 e\3 | 
  % Compás 4
  d\3^\trill cis8\3 d\3 b4\4 |
  % Copmás 5
  g'8(\3 fis\3 e\3) ais\2 b\1 g\2 |
  % Compás 6
  fis8\3( e\3 d\3) ais'8\2 b8\1 fis\2 |
  % Compás 7
  e8(\3 d\3 cis\3) fis8\2 d8\3 b8\4 |
  % Compás 8
  \appoggiatura {d8\3 } cis2.\3 \bar ":|."
  \break
  
  % Compás 9
  fis,8(\5 gis\5 ais\5) cis\4 fis4\3-. |
  
  % Compás 10
  \appoggiatura { e8\3 } d2.\3 |
  
  % Compás 11
  a!8\4 (b8\4 cis8\4) e8\3 a4\2-.
  
  % Compás 12
  \appoggiatura { g8\2 } fis2.\2 |
  
  % Compás 13
  b,8\4 (a8\4 g8\4) cis8\3 d8\3 b8\3 |
  
  % Compás 14
  a8\4(g8\4 fis8\4) cis'8\3 d8\3 a8\4 |
  
  % Compás 15
  g4-.\5 fis-.\5 e\5^\trill |
  
  % Compás 16
  d2.\5 |
  
  \break
  % Compás 17
  fis'8\3(e8\3 dis8\3) b8\4 a'4\2 |
  
  % Compás 18
  \appoggiatura { a8\2 } g2.\2 | 
  
  % Compás 19
  cis,8\3(d8\3 e8\3) a8\1 g4\2
  
  % Compás 20
 \appoggiatura { g8\2 } fis2.\2 |
 
 % Compás 21
 ais,8\4(b8\4 cis\4) e8\3 d8\3 b8\4 |
 
 % Compás 22
 
 g8\5(fis8\5 e8\5) d'8\3 cis8\3  ais'8\1 | 
 
 % Compás 23
 
 b4\1 fis8\2(e8\2) d8\3(cis8\3)
 
 % Compás 24
 b2.\4  \bar ":|."
  
}

\score {
  <<
    % Pentagrama normal
    \new Staff \with {
      instrumentName = ""
      shortInstrumentName = ""
      \clef "treble_8"       % clave de sol 8ª abajo (propia de guitarra)
    }
    { \melodia }

    % Tablatura
    \new TabStaff \with {
      tablatureFormat = #"numbers"   % muestra solo números
      instrumentName = ""
      shortInstrumentName = ""
    }
    { \melodia }
  >>
  \layout { }
  \midi { }
}