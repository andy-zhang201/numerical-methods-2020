
clear all

x=[6,7,11,15,17,21,23,29,29,37,39]; %%29 is repeated twice?
y=[29,21,29,14,21,15,7,7,13,0,3];
scatter(x,y,"r")
hold on

x_new=10;
y_new=10;

x_sq=0;
xy=0;
sumx=0
sumy=0
n=length(x)

for i=1:length(x)
    sumx=sumx+x(i);
    sumy=sumy+y(i);
    xy=xy+x(i)*y(i);
    x_sq=x_sq+x(i)^2;
    
end

y_mean= sumy/length(y)
x_mean=sumx/length(x)

a_1=(n*xy-sumx*sumy)/(n*x_sq-sumx^2)
a_0=y_mean-a_1*x_mean

% Standard deviation calculations
st=0;
for i=1:length(y)
    st=st+(y(i)-y_mean)^2
end

std_dev = sqrt(st/(n-1))

% Standard error calculations
sr=0;
for i=1:length(y)
    sr=sr+(y(i)-a_0-a_1*x(i))^2
end

std_err = sqrt(sr/(n-2))
coef_R2 = (st-sr)/st

% Plot:
x_val = linspace(6,39,101)
y_val = a_0+a_1*x_val

plot(x_val,y_val,"b-")

A=
