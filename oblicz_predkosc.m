function [Vi] = oblicz_predkosc(vi_1x,vi_1y,ai_1x,ai_1y,dt)
%{ 
Cel:
    Funkcja oblicza prędkość lotu skoczka w aktualnym kroku, bazując na
    danych z kroku poprzedniego.
Argumenty:
    vi_1x - prędkość na kierunku x w poprzednim kroku (m/s)
    vi_1y - prędkość na kierunku y w poprzednim kroku (m/s)
    ai_1x - przyspieszenie na kierunku x w poprzednim kroku (m/s2)
    ai_1y - przyspieszenie na kierunku y w poprzednim kroku (m/s2)
    dt - przyrost czasu pomiędzy krokami (s)
Wartości:
    Vi - wektor (1,3), zawierający odpowiednie składowe prędkości (m/s)
%}

% W odpowiednie kolumny wektora Vi wyliczamy składowe prędkości 
Vi(1) = vi_1x + ai_1x * dt;
Vi(2) = vi_1y + ai_1y * dt;
Vi(3)= ((vi_1x)^2 + (vi_1y)^2)^0.5;
  
end