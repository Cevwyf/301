A = [2 1 1; 4 3 3 ; 8 7 9]
b = [1; 1; -1]
% x = [1; 0 ;-1]
x = A\b
Ax = b

U = [2 1 1 ; 0 1 1; 0 0 2]
L = [1 0 0; 2 1 0; 4 3 1]
L*U %=A

%select using LU decomposition
y = L\b
x = U\y

[L, U, P] = lu(A)       % L*U = P*A.
P*A
L*U
y = L\(P*b)
x = U\y

%SOLVE using LU decomp
[L, U, P] = lu(A) %O(u^3)

y = L\(P*b)        %O(n^2)
x = U\y             %O(n^2)

%Now solve A*x - c using LU decomp
c = [2; 3; 4]
y = L\ (P*c)             %O(n^2)
x = U\y                  %O(n^2)

%Solve using inverse
x = inv(A) * b