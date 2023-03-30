% definizione
x = [0:0.01:1]'; 
y = 10*x + 1;

% legenda
title('retta');
xlabel('x');
ylabel('y');

% grafico di una funzione
plot(x,y,'r') % plot semplice interpolato
hold on % plotta sulla stessa figura
plot(x,1/2*x.^2 + 2,'k')