%% Analisi dei sistemi

% definizione del sistema
A = [-1 0; 3 -4];
B = [2 1]';
C = [1 2];
D = 0;
mysys = ss(A,B,C,D);

% intervallo
t = 0:0.01:1;

% funzione di trasferimento
[num, den] = ss2tf(A,B,C,D);
myG = tf(num,den);

% risposta impulsiva
figure, impulse(mysys); % plot
[y, t] = impulse(mysys); % calcolo

% risposta al gradino
figure, step(mysys) % plot
[y,t] = step(mysys); % calcola 

% diagramma di bode
figure, bode(mysys);

% condizione iniziale e intervallo
x0 = [10 5];
t = 0:0.01:40;

% risposta libera
[y_l, t, x_l] = initial(mysys, x0,t);
figure, plot(t, x_l);

% risposta forzata
u = sin(1/2*t);
y_f = lsim(mysys,u,t);
figure, plot(t, y_f);

% risposta totale
y_tot = lsim(mysys,u,t,[10 10]');

% valori dei diagrammi di Bode per omega=1/2
[mag,pha] = bode(myG,1/2)

% risposta di regime permanente (fase in radianti)
y_perm = mag*sin(1/2*t+pha*pi/180);

% grafico della risposta permanente
hold on
plot(t, y_perm, 'r');
legend('risposta forzata', 'risposta permanente')

% visualizzazione
figure, plot(t,y_l,'b',t,y_f,'g',t,y_tot,'r',t,y_perm,'c--')
legend('risposta libera','risposta forzata','risposta totale','regime permanente')