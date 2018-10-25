clear all; close all;clc;


%%loops
%x=1:5

%initialize x 
x = zeros(1,5)

% Fil in x
x(1) = 1
x(2) = 2
x(3) = 3
x(4) = 4
x(5) = 5
clear x
x = zeros(1,5)
%shorten above
for number = 1:5
    x(number) = number
end

%%
clear x;clc
x = zeros(1,5)

number = 1
x(number) = number
number = 2
x(number) = number
number = 3
x(number) = number
number = 4
x(number) = number
number = 5
x(number) = number


clear all; close all; clc
%First several fibonacci number
%1, 1, 2, 3, 5, 8, 13, 21, 34

%want to generate the first 10 fibonacci numbers

fib = zeros(1, 10);
fib(1) = 1
fib(2) = 1

%Fill in the next 8 numbers
%fib(3) = fib(1) + fib(2)
%fib(4) = fib(3) + fib(4)

for n = 3:10 
    fib(n) = fib(n-1) + fib(n-2)
end


%or equivalently
for n =1:8
    fib(n+2) = fib(n+1) + fib(n)
end


%not quite fibonacci number

%%
clear all; clc;
fib(1) = 1;
fib(2) = 1;

for n = 3:20
    fib(n) = fib(n-1) + fib(n-2)
    
    if fib(n) > 1000
        fib(n)
    end
end

%%there is a question = th elast number is too big
clear all; clc;
fib(1) = 1;
fib(2) = 1;

for n = 3:20
    fib(n) = fib(n-1) + fib(n-2)
    
    if fib(n) > 1000
        break %stop the current loop
    end
end

%%
clear all; clc;
fib(1) = 1;
fib(2) = 1;

for n = 3:20
    next_fib_num = fib(n-1) +fib(n-2)
    if next_fib_num > 1000
        break
    end
    
    fib(n) = fib(n-1) +fib(n-2)
    
end



%%
%while loop
x = 3
%%while x > 2
%%   y=7
%%end

