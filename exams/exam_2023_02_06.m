clear all
close all

s = tf('s');

G = (9 * (s^2 + 9)) / (5 * s^2 + 9*s + 27) ;

%G = zpk(G);
%G.DisplayFormat = 'frequency';
%bode(G);

syms l;
A = [l-1/2 0 0; -1/2 l -1; 1 -1 l-2]
det(A)