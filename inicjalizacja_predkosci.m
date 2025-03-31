function V = inicjalizacja_predkosci(nt)
%{ 
Cel:
    Funkcja tworzy trójkolumnową macierz prędkości skoczka V, gdzie 
    kolumna nr 1 zawiera prędkość na kierunku x,
    kolumna nr 2 zawiera prędkość na kierunku y,
    kolumna nr 3 zawiera wypadkową prędkość skoczka. Dane te są na tym 
    etapie wypełnione zerami i będą nadpisywane w dalszej części algorytmu.
Argumenty:
    nt - liczba kroków symulacji
Wartości:
    V - macierz (nt,3), zawierająca odpowiednie prędkości skoczka w czasie
    (m/s)
%}

% Lokowanie pamięrzy macierzy o wymiarze ntx3, gdzie każdy wiersz 
% przechowuje składowe prędkości (Vx,Vy,Vwyp)

V = zeros(nt,3);
end