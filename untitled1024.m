clear all; close all; clc

f = @(x) (x.*cos(x));
fprime = @(x)(cos(x) - x.*sin(x));
fdprime = @(x)(-2*sin(x) - x.*cos(x));

xplot = -2:0.01:8;

yplot = f(xplot);

plot(xplot, yplot, 'k')

x0 = 5;
hold on
plot(x0, f(x0), 'ro')
%By adding a third input argument to the plot function, 
%you can plot the same variables using a red dashed line.

tolerance = 1e-8

tic
for k = 1:1000
    x0 = x0 -fprime(x0) / fdprime(x0);
    plot(x0, f(x0), 'ro')
    if abs(fprime(x0)) < tolerance
        break
    end
end
toc

k

% x1 = x0 -fprime(x0) / fdprime(x0)
% plot (x1, f(x1), 'r0')

%x2 = x1 - fprime(x1) / fdprime(x1)
% plot (x2, f(x2), 'r1')





