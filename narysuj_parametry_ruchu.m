function narysuj_parametry_ruchu(t,x,y,V,A,L)

figure(2)

nt = length(t);
% Rysunek pozycji x w czasie
subplot(3,2,1)
x_p = t;     % dane x do rysunku
y_p = x;     % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$x$, m','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek pozycji y w czasie
subplot(3,2,2);
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

% Rysunek prędkości x w czasie
subplot(3,2,3);
x_p = t;        % dane x do rysunku
y_p = V(:,1);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$v_\textrm{x}$, m/s','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek prędkości y w czasie
subplot(3,2,4);
x_p = t;        % dane x do rysunku
y_p = V(:,2);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$v_\textrm{y}$, m/s','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek przyspieszen x w czasie
subplot(3,2,5);
x_p = t;        % dane x do rysunku
y_p = A(:,1);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$a_\textrm{x}$, m/s$^2$','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek przyspieszen y w czasie
subplot(3,2,6);
x_p = t;        % dane x do rysunku
y_p = A(:,2);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$a_\textrm{y}$, m/s$^2$','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

hold off
end