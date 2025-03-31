function [Ek,Ep,Es,E] = oblicz_energie(m,Vw,g,y,h,e,k,e_b,nt)
%{ 
Cel:
    Funkcja oblicza poszczególne składowe energii, w tym energię kinetyczną
    skoczka, energię potencjalną sprężystości liny oraz energię potencjalną
    grawitacji.
Argumenty:
    m - masa skoczka (kg)
    Vw - wektor (nt,1), zawierający wypadkową prędkości skoczka w czasie
    (m/s)
    g - przyspieszenie grawitacyjne (m/s2)
    y - wektor (nt,1), zawierający współrzędną y skoczka w czasie (m)
    h - wysokość dźwigu (m)
    e - wektor (nt,1), zawierający wydłużenie liny w czasie (m)
    k - wektor (1,2), zawierający sztywności k_1 oraz k_2 liny (N/m)
    e_b - wydłużenie graniczne liny (m)
    nt - liczba kroków symulacji
Wartości:
    Ek - wektor (nt,1), zawierający wartości energii kinetycznej skoczka w
    czasie (J)
    Ep - wektor (nt,1), zawierający wartości energii potencjalnej
    grawitacji w czasie (J)
    Es - wektor (nt,1), zawierający wartości energii potencjalnej
    sprężystości liny w czasie (J)
    E - wektor (nt,1), zawierający wartości energii całkowitej w czasie (J)
%}

% Tworzymy wektory energii 
Ek = zeros(nt,1);
Ep = zeros(nt,1);
Es = zeros(nt,1);
E = zeros(nt,1);

% Przechodzimy przez wszystkie elementy wektorów poprzez inkrementacje 'i'
% i dokonujemy potrzebnych obliczeń
for i = 1:size(E,1)
Ek(i) = m *(Vw(i)^2) / 2;
Ep(i) = m * g * (h + y(i));
    if e(i) <= e_b
        Es(i) = k(1) * (e(i)^2)/2;
    else
        Es(i) = k(2) * (e(i)^2)/2 + (k(1) - k(2)) * e_b * e(i) - (k(1) - k(2)) * (e_b^2)/2; 
    end
E(i) = Ek(i) + Ep(i) + Es(i);
end
end