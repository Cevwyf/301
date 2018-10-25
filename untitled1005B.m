%f(x) = sin (x)
% a = 2, b = 5
a = 2;
b = 5;
sin_a = sin(a)
sin_b = sin(b)
%First guess
c = (a + b) / 2
sin(c)

b=c;

%Second guess
sin_a = sin(a)
sin_b = sin(b)
c = (a+b)/2

sin(c)

a=c;


%can use for loop
clear all; close all; clc
a = 2; b = 5;
for k = 1:1000
    c = (a + b) / 2
    
    
    if sin(c) == 0
   break
    end
    
    if sin(c) > 0
        a = c;
    end
    if sin(c) < 0
        b = c
    end
end



%% clear all; close all; clc
a =2; b = 5;

tolerance = 1e-8; %10^(-8)
for k = 1:1000
c = (a+b)/2

if abs(sin(c)) < tolerance
    break
elseif sin(c) > 0
elseif sin(c) < 0
    b = c;
end
end



