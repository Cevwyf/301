clear all; close all;clc
%x = 5
%while x > 1
    %y = 1
%end
%z = 2


%fib_n = fib_(n-1) + fib_(n-2)

fib = zeros(1, 100);
fib(1) = 1;
fib(2) = 2;

n = 3;
while fib(n) < 1000
    fib(n) = fib(n-1) + fib(n-2)
    n = n + 1;
end


fib(1:end - 1)
fib(1:n-1)
    



