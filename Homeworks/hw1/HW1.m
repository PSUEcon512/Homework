%% Homework 1
%% Dilek Sahin
%% Q1
X=[1,1.5,3,4,5,7,9,10];
Y1=-2+.5*X;
Y2=-2+0.5*(X.^2);
hold on;
plot (X, Y1,'b-');
plot(X,Y2,'r--');
xlabel ('X');
ylabel ('Y1 and Y2');
legend({'Y1 = -2+.5X','Y2 = -2+0.5X^2'},'Location','northwest');
hold off;

%% Q2
X2=linspace(-10,20,200)';
sumX2=sum(X2);
%% Q3
A=[2 4 6; 1 7 5; 3 12 4];
b=[-2, 3, 10]';
C=A'*b;
D=inv(A.'*A)*b;
E=sum(A.*repmat(b,1,3), 'all');
F = A([1, 3:end], [1, 2]);
x=linsolve(A,b);

%% Q4
B=blkdiag(A,A,A,A,A);

%% Q5
A= normrnd(10,5,[5,3]);
A(A<10)=0;
A(A>=10)=1;

%% Q6
hw1data = csvread('hw1data.csv');
Data=array2table(hw1data, 'VariableNames',{'firmid','year','export','rd','prod','cap'});
fitlm(Data,'prod~export+rd+cap')

%point estimates and standard errors respectively
%for Export
%\beta_{1} = 0.12013 and SE = 0.0063242
%for R&D
%\beta_{2} = 0.13993 and SE = 0.0085393
%for Capital Stock
%\beta_{3} = 0.029492 and SE = 0.0017839