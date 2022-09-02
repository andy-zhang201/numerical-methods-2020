clear
clc
clf
%% Intro
% 
% x = linspace(-pi, pi, 100);
% y1 = sin(x);
% y2 = cos(x);
% y3=cos(x+pi/8);
% plot(x, y1);
% hold on
% plot(x, y2);
% plot(x,y3);
% hold off
% 
% clf
% x=[0,0,0]
% for i = 2:10
%     x=[x,i];
% end

%% For loops:

clear clc clf

x = [1 : 0.1 : 10];
y2 = x
% for i = 1 : 91
y = x.^2 + 1;
z = sqrt(x) .* sin(x);
% end
y
z
hold on
plot(x,z,"*-r")
plot(x,sqrt(x),"b")

clear clc clf

%% Debugging
x = 1:1:10;
figure
hold on

for i = 1:10
%     figure(i)
    plot(x,(x-x(i)).^2)
end
hold off

a = test_function(2)
b= 3
test_function(b)

