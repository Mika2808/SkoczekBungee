function narysuj_trajektorie_skoku(x,y,t,t_max)

figure(1)
% Rysunek trajektorii lotu skoczka
if ~ t
    zakres = 1;
else
    zakres = int64(t/t_max*length(x));
end
x_p = x(1:zakres);     % współrzędne x do rysunku
y_p = y(1:zakres);     % współrzędne y do rysunku

plot(x_p,y_p,'-o','LineWidth',1.5, ...
    'MarkerIndices',1:1000:length(x_p), ...
    'MarkerSize',2)
title('Trajektoria lotu skoczka')
xlabel('pozycja $x$, m','Interpreter','LaTeX')
ylabel('pozycja $y$, m','Interpreter','LaTeX')

hold on

% Rysunek liny bungee
plot([0,x_p(end)],[0,y_p(end)],'k','linewidth',1)

% Rysunek aktualnej pozycji skoczka
plot(x_p(end),y_p(end),'.r','MarkerSize',24)

% Określenie zakresu rysunku
xlim([min(x)-0.5 max(x)+0.5])
ylim([min(y)-2 max(y)+1])

legend(["trajektoria lotu","lina bungee","skoczek"])

hold off

end