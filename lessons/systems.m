%% Definizione del sistema
A = [-1 0; 3 -4];
B = [2 1]';
C = [1 2];
D = 0;

%% Sistema LTI a tempo continuo
mysys = ss(A,B,C,D)
% crea sistema dinamico partendo dalle matrici A,B,C,D

%% Sistema LTI a tempo discreto
mysys_d = ss(A,B,C,D,1)
% sistema con tempo di campionamento = 1

%% Funzione di trasferimento TC
s = tf('s');
G = (s+1)/(s^2+s+1); % mettere sempre le parentesi
G = tf([1 1],[1 1 1]); % altra definizione di G

%% Funzione di trasferimento TD
z = tf('z', 1);
G_z = (z+1)/(z^2+2);
G_z = tf([1 1],[1 0 2],1);

%% Passaggio i/s/o --> i/o
[num, den] = ss2tf(A,B,C,D);
myG = tf(num,den); % funzione di trasferimento

%% Passaggio i/o --> i/s/o
[Ar,Br,Cr,Dr] = tf2ss(num,den);
% notare che le matrici sono diverse ...
[numr,denr] = ss2tf(Ar,Br,Cr,Dr);
myGr = tf(numr,denr); % ... ma la tf è la stessa