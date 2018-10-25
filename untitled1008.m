clear all; close all;clc;
a = 2; b = 5;
tolerance = 1e-8; %10 ^(-8)

for k = 1:1000
    c = (a + b)/2
    
    if abs(sin(c)) < tolerance 
        break
    elseif sin(c) > 0
        a = c;
    else sin(c) < 0 %elseif也能用
        b = c;
    end
    
end

%%
for k = 1:1000
    a =0; b = 5;
    tolerance = 1e-8
    if abs(sin(c))< tolerance
        break
    elseif sign(sin(c)) == sign(sin(a))
        a = c;
    else
        b = c;
    end
end

%%
clear all; close all;clc;
a = 2; b = 5;
%function_name = @(variable_name)(formula)
f1 = @(x)(sin(x))
tolerance = 1e-8; %10 ^(-8)

for k = 1:1000
    c = (a + b)/2
    
    if abs(f1(c)) < tolerance 
        break
    elseif sign(f1(c)) == sign(f1(a))
        a = c;
    else 
        b = c;
    end
end


%%
function y = f(x)
    if x > 0
        y = sin(x);
    else
        y = x^2;
    end
end


%%
function output = my_function_name(y)
y = 2;
output = y^2

end

%%
function [output1, output2] = my_function_name(x,y,z)

output1 = x^2 + 2 * y^2 +z^2;
output2 = x - y - z;

end

%[a,b] = my_function_name[1,1,1]
%[~,b] = my_function_name(1,1,1)


%%bisection (a,b,f)