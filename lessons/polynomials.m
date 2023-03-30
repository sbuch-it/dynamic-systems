poly = [2 -2 5]; % coefficienti del polinomio 2*x^2-2*x+5

p = roots(poly); % radici del polinomio

v = polyval(poly,0); % valore in nel punto zero

x = 0:.1:1; % punti equispaziati

figure, plot(x, polyval(poly,x));

poly([-1 -2 -3 -4]) % coefficienti del polinomio
% che ha come radici il vettore dato