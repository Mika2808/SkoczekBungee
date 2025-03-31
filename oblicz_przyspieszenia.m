function [Ai] = oblicz_przyspieszenia(Fi,m)
%{ 
Cel:
    Funkcja oblicza przyspieszenie skoczka w aktualnym kroku, bazując na
    działającej na niego sile wypadkowej.
Argumenty:
    Fi - wektor (1,3), zawierający odpowiednie składowe aktualnej siły 
    wypadkowej (N)
    m - masa skoczka (kg)
Wartości:
    Ai - wektor (1,3), zawierający odpowiednie składowe przyspieszeń (m/s)
%}

% Liczymy składowe przyśpieszenie skoczka
Ai(1) = Fi(1)/m;
Ai(2) = Fi(2)/m;
Ai(3) = sqrt(Ai(1)^2 +Ai(2)^2);

end