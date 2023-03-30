%% exercise 1.1

% rappresentazione i/s/o
A = [0 1 1; 1 0 1; 1 1 0];
B = [0; 0 ; 1];
C = [1 0 0];
D = [0];

system = ss(A,B,C,D);

% funzione di trasferimento
[num, den] = ss2tf(A,B,C,D);

% risposta impulsiva
figure, impulse(system); % plot
[y, t] = impulse(system); % calcolo

%% exercise 1.2

syms alpha;
A = [0 1 1; 1 0 1; 1 1 alpha];

A^2;
(A^2) * B;

%% exercise 1.4

syms l1 l2 l3;
% rappresentazione i/s/o
A = [0 1 1; 1 0 1; 1 1 1];
L = [l1; l2; l3];
C = [1 0 0];

A - (L*C)