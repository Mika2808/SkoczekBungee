function [xi,yi] = oblicz_pozycje_skoczka(xi_1,yi_1,vi_1x,vi_1y,ai_1x,ai_1y,dt)
%{ 
Cel:
    Funkcja oblicza pozycję skoczka w aktualnym kroku, bazując na
    danych z kroku poprzedniego.
Argumenty:
    xi_1 - współrzędna x skoczka w poprzednim kroku (m)
    yi_1 - współrzędna y skoczka w poprzednim kroku (m)
    vi_1x - prędkość na kierunku x w poprzednim kroku (m/s)
    vi_1y - prędkość na kierunku y w poprzednim kroku (m/s)
    ai_1x - przyspieszenie na kierunku x w poprzednim kroku (m/s2)
    ai_1y - przyspieszenie na kierunku y w poprzednim kroku (m/s2)
    dt - przyrost czasu pomiędzy krokami (s)
Wartości:
    xi - aktualna współrzędna x skoczka (m)
    yi - aktualna współrzędna y skoczka (m)
%}

% Wyliczamy współrzędne skoczka
 xi = xi_1 + vi_1x * dt + ai_1x * (dt^2)/2;
 yi = yi_1 + vi_1y * dt + ai_1y * (dt^2)/2;
end