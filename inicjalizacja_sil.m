function [G,S,O,F] = inicjalizacja_sil(m,g,nt)
%{ 
Cel:
    Funkcja tworzy macierze, zawierające siły działające na skoczka, w tym 
    siłę grawitacji, siłę sprężystości liny, siły oporów ruchu oraz siłę 
    wypadkową, gdzie w każdej z sił
    kolumna nr 1 zawiera składową siły na kierunku x,
    kolumna nr 2 zawiera składową siły na kierunku y,
    kolumna nr 3 zawiera siłę wypadkową (jeżeli jest potrzebna). Dane te są 
    na tym etapie wypełnione zerami i będą nadpisywane w dalszej części. 
    Wyjątkiem jest siła grawitacji, która w pierwszej kolumnie zawiera
    zera, a w kolumnie drugiej zawiera wartość siły ciążenia, działającej
    na skoczka, zgodnie z jej zwrotem.
Argumenty:
    m - masa skoczka (kg)
    g - przyspieszenie grawitacyjne (m/s2)
    nt - liczba kroków symulacji
Wartości:
    G - macierz (nt,2), zawierająca odpowiednie składowe siły grawitacji w
    czasie (N)
    S - macierz (nt,3), zawierająca odpowiednie składowe siły sprężystości 
    liny w czasie (N)
    O - macierz (nt,2), zawierająca odpowiednie składowe siły oporów ruchu 
    w czasie (N)
    F - macierz (nt,3), zawierająca wypadkową sił, działających na skoczka
    w czasie (N)
%}
G=zeros(nt,2);

% Pętla, która wpisze nam siłę grawitacji działającą w pionie
for i=1:size(G,1)
    G(i,2)=-m*g;

end

% Macierze przechowujące składowe sił
S = zeros(nt,3);
O = zeros(nt,2);
F = zeros(nt,3);

end