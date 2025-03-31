function narysuj_sily(t,x,y,F_E,F_D,F,L)

figure(3)

nt = length(t);
% Rysunek pozycji x w czasie
subplot(4,2,1)
x_p = t;     % dane x do rysunku
y_p = x;     % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$x$, m','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek pozycji y w czasie
subplot(4,2,2);
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

% Rysunek siły w linie x w czasie
subplot(4,2,3);
x_p = t;        % dane x do rysunku
y_p = F_E(:,1);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$S_x$, N','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek siły w linie y w czasie
subplot(4,2,4);
x_p = t;        % dane x do rysunku
y_p = F_E(:,2);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$S_,y$, N','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek oporów ruchu x w czasie
subplot(4,2,5);
x_p = t;        % dane x do rysunku
y_p = F_D(:,1);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$O_x$, N','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek oporów ruchu y w czasie
subplot(4,2,6);
x_p = t;        % dane x do rysunku
y_p = F_D(:,2);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$O_y$, N','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek wypadkowej sily x w czasie
subplot(4,2,7);
x_p = t;        % dane x do rysunku
y_p = F(:,1);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$F_x$, N','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

% Rysunek wypadkowej sily y w czasie
subplot(4,2,8);
x_p = t;        % dane x do rysunku
y_p = F(:,2);   % dane y do rysunku
plot(x_p,y_p)
xlabel('$t$, s','Interpreter','LaTeX')
ylabel('$F_y$, N','Interpreter','LaTeX')
xlim([0 max(t)])
grid on

hold off

end