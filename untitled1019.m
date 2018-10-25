% Solve A*x = b using matrix splitting methods
A = [6 1 1; 1 8 2; 2 3 9]
b = [7; 13; -1]
% A = P + T
% Choose P so that P/(sth) is fast
P = [6 0 0; 0 8 0; 0 0 9]
T = A - P
% This choice is called the Jacobi method

% This formula updates your guesses
% x_k = P\ (-T)*x_(k-1) + b)
% e_k = M^k * e_0
% M = -P\T
% e_k = x_k - x


%% Eigenvalues
% M*v = lambda*v
%lambda is an eigenvalue of M and v is a corresponding eigenvector

M = [1 2; 0 3]
e = eig(M)
[V, D] = eig(M)


lambda1 = D(1, 1)
v1 = V(:, 1)
M*v1
lambda1*v1

lambda2 = D(2, 2)
v2 = V(:, 2)
M*v2
lambda2*v2

% V*D*V(-1) = M
V * D * inv(V)
% M^2 = M*M = (V*D*V^(-1)) * (V*D*V^(-1))
% = V*D*D*V^(-1) = V*D^2*V^(-1)

% M^3 = M^2*M = (V*D*V^(-2)) * (V*D*V^(-1))
% = V*D^2*D*V^(-1) = V*D^3*V^(-1)

% M^k = V*D^k*V^(-1)
D = [2 0 0; 0 -1/2 0; 0 0 3]
D^2
D^3
%%
% e_k = M^k * e0
% = V * D^k * V^(-1) * e0

%If all of the eigenvalues of M are less than 1 
%in magnitude(abs(lambda) < 1) then the errors e_k will go to zero
%If all of the eigenvalues of M are less than 1 
%in magnitude(abs(lambda) < 1) then the errors e_k will blow up

A
b
P
T
M = -P\T
abs(eig(M))

tolerance = 1e-8
x0 = [1; 1; 1]
% x1 = P\(-T*x0 + b)
% x2 = P\(-T*x1 + b)
% x3 = P\(-T*x2 + b)
X = zeros(3, 100);
X(:, 1) = x0
for k = 2:100
    
    X(:, k) = P\(-T*X(:, k-1) + b)
    if(X(:,k) - X(:, k-1)) < tolerance
        break
    end
end
    

%%
A = [1 8 10; 20 1 7; 40 -8 2]
b = [7; 13; -1]

% Gauss- Seidel method
% P is the upper triangle part of A
P = [6 1 1; 0 8 2; 0 0 9] %= triu(A)
T = A - P

M = -P\T
abs(eig(M))


tolerance = 1e-8
x0 = [1; 1; 1]
% x1 = P\(-T*x0 + b)
% x2 = P\(-T*x1 + b)
% x3 = P\(-T*x2 + b)
X = zeros(3, 100);
X(:, 1) = x0
for k = 2:100
    
    X(:, k) = P\(-T*X(:, k-1) + b)
    if(X(:,k) - X(:, k-1)) < tolerance
        break
    end
end
    

A = [1  8 10; 20 1 7 ; 40 -8 2]
%strict diagonal dominance
abs(A0
1 > 8+10?
1 > 20 +7?
2 > 40 + 8?

























