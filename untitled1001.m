clear all
close all
clc

x = [1 2 3 4 5];
y = [4; 3; 2; 1; 0];

x(3);
y(2);

x(2);
x(3);
x(4);

x([4 2]);
y([2 4]);


A = [1 2 3; 4 5 6] %%一列2列 先第3column后1column
A([1 2], [3 1]) %%


A(2, :); %%SECOND row
A(:, 2); %%SECOND column



x(:);
x(end);
y(end);
A(:);

A(2, end-1); %%

zeros(3);
zeros(5);
zeros(1);
zeros(3,2);
zeros(5,1);
zeros(1,5);

ones(4);
ones(3,5);

rand(3); %%随机生成3*3matrix
randn(3);

eye(4); %% 4*4 identity matrix
eye(3,5);

x=2:5; %%from 2 to 5
x=-1:100;
x=0.1:3; %%from 0.1 to 3 but only 0.1 1.1 2.1

y(2:4);
x = rand (1, 10);
x = ([8 9 10]);

x([end-2 end-1 end]);
x(end-2:end);


%%graph y = x^2 from x=0 to x=2
x = 0:2;
y = x.^2; %dot means "square every entry
%y = [0 1 4]
plot(x, y);

%x = start:step:stop

x= 0:0.1:2; %%初始值：步长：终止值
y=x.^2;
plot(x,y);


y = 5:-1:1;


%%rand()函数：产生在（0，1）区间均匀分布的随机阵；
%%eye()函数：产生单位阵；

%%randn()函数：产生均值为0，方差为1的标准正态分布随机矩阵。



