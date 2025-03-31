function [ri,ei] = oblicz_dlugosc_liny(xi,yi,L)
%{ 
Cel:
    Funkcja oblicza aktualną długość liny oraz jej wydłużenie, bazując na
    aktualnej pozycji skoczka oraz długości początkowej liny.
Argumenty:
    xi - współrzędna x skoczka w aktualnym kroku (m)
    yi - współrzędna y skoczka w aktualnym kroku (m)
    L - długość początkowa liny bungee (m)
Wartości:
    ri - aktualna długość liny bungee (m)
    ei - aktualne wydłużenie liny bungee (m)
%}

% Wyliczamy aktualne długość i wydłużenie liny
 ri = (xi^2 + yi^2)^0.5;
 ei = ri - L;

end