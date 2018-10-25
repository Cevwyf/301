%  flop = floating point operation
% one "step" or one fundamental operation on your processor
% each flop takes (every approximately) 10^(-6) seconds

% x + y is one flop ( if x and y are numbers)
% x * y is one flop ( if x and y are numbers)
% x*y + z is one flop (if x, y ,z are numbers)

% a x_1 + a x_2 + ... + a x_n = b_1
% 0 x_1 + a x_2 + ... + a x_n = b_2
% ...
% 0 x_1 + 0 x_2 + ... + a x_n = b_n
%diagonal zero matrix

% Equation n takes 1 flop
% Equation n-1 takes 2 flops
% Equation n-2 takes 3 flops
% ...
% Equation 2 takes n-1 flops
% Equation 1 takes n flops

% Total flops = 1 + 2 + 3 + 4 + ... + n-2 + n-1 + n
% = 1 + n-1 + 2 + n-2 + ... + n
% Total = (n - 1)/ 2 * n + n = n^2 / 2 + n/2
% Total = 0(n^2) "BIg oh of n^2'

% In the first column, there are n - 1 zeroes
% Each zero takes n+1 flops
% Total = (number of columns) * (zeros per column)
% * (flops per zero)
% = (n - 1) * (n - 1) * (n + 1) = 0(n^3)

t = 1e-6;
%  Total_time for back sub = t * N^2
N = 10000;
T = t * N^3

