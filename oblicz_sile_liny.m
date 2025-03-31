function [Si] = oblicz_sile_liny(xi,yi,ri,ei,k,e_b)
%{ 
Cel:
    Funkcja oblicza aktualną wartość siły sprężystości liny. Obliczenia
    wykonywane są bazując na aktualnej pozycji skoczka, aktualnej długości
    oraz wydłużeniu liny bungee oraz parametrach materiałowych liny.
Argumenty:
    xi - współrzędna x skoczka w aktualnym kroku (m)
    yi - współrzędna y skoczka w aktualnym kroku (m)
    ri - aktualna długość liny bungee (m)
    ei - aktualne wydłużenie liny bungee (m)
    k - wektor (1,2), zawierający sztywności k_1 oraz k_2 liny (N/m)
    e_b - wydłużenie graniczne liny (m)
Wartości:
    Si - wektor (1,3), zawierający odpowiednie składowe aktualnej siły 
    sprężystości liny (N)
%}

% Jeżeli aktualne wydłużenie liny jest mniejsze niż graniczne
if ei < e_b
        Si(1) = -k(1)*ei*xi/ri;
        Si(2)= -k(1)*ei*yi/ri;

% Jeżeli aktualne wydłużenie liny jest większe lub równe niż graniczne
else
        Si(1)= -(k(2) * ei + (k(1) - k(2)) * e_b) * xi /ri;
        Si(2)= -(k(2) * ei + (k(1) - k(2)) * e_b) * yi /ri;
end

% Siła wypadkowa nie zależy od wydłużenia więc jest poza konstrukcją if
Si(3) = sqrt((Si(1)^2+Si(2)^2));

end

    