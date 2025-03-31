function [x,y,r,e] = inicjalizacja_pozycji(nt)
%{ 
Cel:
    Funkcja tworzy wektory współrzędnych x,y skoczka oraz wektory 
    informacji o aktualnych parametrach liny r, e. Dane te są na tym etapie
    wypełnione zerami i będą nadpisywane w dalszej części algorytmu.
Argumenty:
    nt - liczba kroków symulacji
Wartości:
    x - wektor (nt,1), zawierający współrzędną x skoczka w czasie (m)
    y - wektor (nt,1), zawierający współrzędną y skoczka w czasie (m)
    r - wektor (nt,1), zawierający długość liny w czasie (m)
    e - wektor (nt,1), zawierający wydłużenie liny w czasie (m)
%}

% Zalokowanie pamięci czterech wektorów o długości nt  
x = zeros(nt,1);
y = zeros(nt,1);
r = zeros(nt,1);
e = zeros(nt,1);

end