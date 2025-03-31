function [t,dt] = inicjalizacja_czasu(t_max,nt)
%{ 
Cel:
    Funkcja tworzy wektor czasu t oraz określa przyrost czasu pomiędzy 
    kolejnymi krokami dt.
Argumenty:
    t_max - maksymalny czas symulacji (s)
    nt - liczba kroków symulacji
Wartości:
    t - wektor (1,nt), zawierający nt równo rozłożonych 
        punktów czasu od 0 do t_max (s)
    dt - przyrost czasu pomiędzy kolejnymi krokami (s)
%}


% Stowrzenie wektora o długości nt o jednakowych odstępach czasu
t = linspace(0,t_max,nt); 

% Jako, że pierwszy element jest równy 0 to drugi element tablicy
% przechowuje nam odstęp pomiędzy poszczególnymi elementami
dt = t(2);

end