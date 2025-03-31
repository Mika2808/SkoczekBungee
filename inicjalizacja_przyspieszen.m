function [A] = inicjalizacja_przyspieszen(nt)
%{ 
Cel:
    Funkcja tworzy trójkolumnową macierz przyspieszeń skoczka A, gdzie 
    kolumna nr 1 zawiera przyspieszenie na kierunku x,
    kolumna nr 2 zawiera przyspieszenie na kierunku y,
    kolumna nr 3 zawiera wypadkowe przyspieszenie skoczka. Dane te są na 
    tym etapie wypełnione zerami i będą nadpisywane w dalszej części 
    algorytmu.
Argumenty:
    nt - liczba kroków symulacji
Wartości:
    A - macierz (nt,3), zawierająca odpowiednie przyspieszenia skoczka w
    czasie (m/s2)
%}

% Lokowanie pamięrzy macierzy o wymiarze ntx3, gdzie każdy wiersz 
% przechowuje składowe przyśpieszenia (Ax,Ay,Awyp)

A = zeros(nt,3);
end