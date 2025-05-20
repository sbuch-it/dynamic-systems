%% definizione
% l'apice è l'operatore di trasposizione
A = [0 1 0; 0 0 1; 0 -6 -5]; % matrice
B = [0; 0; 1]; % vettore colonna
B = [0 0 1]'; % vettore colonna
C = [1 0 0]; % vettore riga
D = 0; % scalare

%% operatori aritmetici
A = [2 3; 1 0];
B = [20 10; 1 9];
sum = A+B; % A_ij + B_ij 
diff = A-B; % A_ij - B_ij
pro = A*B; % prodotto riga colonna
pro_ele = A.*B; % prodotto per elemento A_ij*B_ij
div = A/B; % = A * inv(B)
div_inv = A\B; % = inv(A) * B
div_ele = A./B; % A_ij/B_ij

%% Matrici elementari
m=3; n=2;
A = zeros(m,n); % matrici di zeri
A = ones(m,n); % matrici di 1 m x n
A = eye(n); % matrice identità n x n

%% Informazioni matrici
[m,n] = size(A);
M = length(A);
isequal(A,B) % ritorna 1 se A = B
A==B % ritorna 1 nella posizione ij se A_ij = B_ij

%% Manipolazione matrici
A = diag([1 2 3]); % matrice diagonale
x = 0:0.1:2; % vettore con passo 0.1 x = 0, 0.1, 0.2 ... 2;

%sottomatrici
A = rand(4); % crea una matrice random 4x4
A1r = A(1,:); % seleziona la prima riga di A
A2c = A(:,2); % seleziona la seconda colonna di A
A_1 = A(1:2,:); % selezione le prime 2 righe e le colonne di A

% concatenazione 
B1 = rand(2);
B2 = rand(2);
A1 = [B1 B2]; % orizzontale matrice 2x4 
A2 = [B1;B2]; % verticale matrice 4x2

%% Altre operazioni matrici
r = rank(A); % rango
inversa = inv(A); % inversa
determinante = det(A); % determinante
[V,D] = eig(A); % V contiene gli autovettori,
% D matrice diagonale autovalori A*V=V*D 
nA = norm(A); % norma della matrice A = max(sqrt(eig(X'*X))) 
v=rand(5,1); nv = norm(v); % norma del vettore v = sqrt(v'*v)

%% maggiori informazioni
help elmat % tutte le funzioni per le matrici