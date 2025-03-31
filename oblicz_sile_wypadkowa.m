function [Fi] = oblicz_sile_wypadkowa(Gi,Si,Oi)
%{ 
Cel:
    Funkcja oblicza aktualną wartość siły wypadkowej, działającej na 
    skoczka. Obliczenia wykonywane są bazując na aktualnej pozostałych sił,
    tj. siły grawitacji, siły sprężystości liny oraz siły oporów ruchu.
Argumenty:
    Gi - wektor (1,3), zawierający odpowiednie składowe aktualnej siły 
    grawitacji (N)
    Si - wektor (1,3), zawierający odpowiednie składowe aktualnej siły 
    sprężystości liny (N)
    Oi - wektor (1,3), zawierający odpowiednie składowe aktualnej siły 
    oporów ruchu (N)
Wartości:
    Fi - wektor (1,3), zawierający odpowiednie składowe aktualnej siły 
    wypadkowej (N)
%}

% Liczymy składowe wartości siły wypadkowej
Fi(1) = Gi(1) + Si(1) + Oi(1);
Fi(2) = Gi(2) + Si(2) + Oi(2);
Fi(3) = sqrt(Fi(1)^2 +Fi(2)^2);

end
    