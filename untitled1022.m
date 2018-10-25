clear all; close all; clc;

A = rand(10, 10);
b = ones(10, 1);
x  = A\b
A(10,10) = A(10 ,10) + 0.0000000000000000001;
y = A\b
x - y

cond(A)


A = hilb(10);
b = ones(10, 1);
x = A\b
A(10, 10) = A(10,10) + 0.00000000000000001

x - y 
cond(A)