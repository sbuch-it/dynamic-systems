% funzioni di trasferimento
s = tf('s');
G1 = 1/s;
G2 = 1/(s+1);
G3 = 1/(s+2);
H = (s+3)/s;

% connessione in serie
S = G1*G2

% connessione in parallelo
P = S+G3

% connessione in retroazione negativa
W = P/(1+H*P);
W = minreal(W) % eventuale cancellazione poli-zeri

[zeri,poli,guadagno] = zpkdata(W)
% forma zeri-poli (attenzione: zeri e poli sono in formato cell)
zeri{1}     % mostra gli zeri
poli{1}     % mostra i poli