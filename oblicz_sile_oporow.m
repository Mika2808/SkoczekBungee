function [Oi] = oblicz_sile_oporow(Vi,d)
%{ 
Cel:
    Funkcja oblicza aktualną wartość siły oporów ruchu. Obliczenia 
    wykonywane są bazując na aktualnej prędkości skoczka oraz współczyniku 
    oporów ruchu.
Argumenty:
    Vi - wektor (1,3), zawierający odpowiednie składowe prędkości (m/s)
    d - współczynnik oporu ruchu (N*s2/m2)
Wartości:
    Oi - wektor (1,2), zawierający odpowiednie składowe aktualnej siły 
    oporów ruchu (N)
%}

% Liczymy składowe siły oporów ruchu
Oi(1) = -d * Vi(1) * Vi(3);
Oi(2) = -d * Vi(2) * Vi(3);

end