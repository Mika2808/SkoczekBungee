function narysuj_energie(t,x,y,Ek,Ep,Es,E,L)

figure(4)

nt = length(t);
% % Rysunek pozycji x w czasie
% subplot(3,2,1)
% x_p = t;     % dane x do rysunku
% y_p = x;     % dane y do rysunku
% plot(x_p,y_p)
% xlabel('$t$, s','Interpreter','LaTeX')
% ylabel('$x$, m','Interpreter','LaTeX')
% xlim([0 max(t)])
% grid on

% Rysunek pozycji y w czasie
subplot(2,1,1);
% Plot: y position and time
x_p = t;     % dane x do rysunku
y_p = y;     % dane y do rysunku
plot(x_p,y_p)
hold on
y_p = -L .* ones(nt,1);
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$y$, m','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

%%% Rysunek energii w czasie
% energia kinetyczna
subplot(2,1,2);
x_p = t;        % dane x do rysunku
y_p = Ek/1000;   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$Energia$, kJ','Interpreter','LaTeX')
xlim([0 max(t)])
grid on; hold on

% energia potencjalna
x_p = t;        % dane x do rysunku
y_p = Ep/1000;   % dane y do rysunku
plot(x_p,y_p)
grid on; hold on
% energia liny
x_p = t;        % dane x do rysunku
y_p = Es/1000;   % dane y do rysunku
plot(x_p,y_p)
grid on; hold on
% energia całkowita
x_p = t;        % dane x do rysunku
y_p = E/1000;      % dane y do rysunku
plot(x_p,y_p)

% legend('Ek','Ep','Es','E','Location','NorthOutside','Orientation','horizontal')
legend('Ek','Ep','Es','E')

hold off

end