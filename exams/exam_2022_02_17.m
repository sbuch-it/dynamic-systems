%% exercise 1.4

% rappresentazione i/s/o
A = [-2 -1; 1 0];
B = [1; 0];
C = [1 0];
D = [0];

system = ss(A,B,C,D);

% funzione di trasferimento
[num, den] = ss2tf(A,B,C,D)

% risposta al gradino
figure
step(system)

% diagramma di bode
figure
bode(system);