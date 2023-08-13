%% Clear the environment
clear all
close all
clc

%% Create the green and white rectangular regions/borders
rectangle('Position',[0 0 30 20],'FaceColor',[0 0.4 0])
rectangle('Position',[0 0 7.5 20],'FaceColor','w')
axis([0 30 0 20]), hold on


%% For cresent, we used the trick of subtracting two circles drawn with some displacement
% Inner Arc
r = 0.3*20;
xc = 18.75;
yc = 10;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;

fill(x,y,'w')
plot(x,y,'w')

% Outer Arc
r = 20*(11/40);
xc = 18.75 + 1.425;
yc = 11.425;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
fill(x,y,[0 0.4 0])
plot(x,y,'Color',[0 0.4 0])

%% Finally Make a Star

hold on
x = 22.75 + 2.*[cos(pi/2),2/5*cos(pi/2+pi/5),cos(pi/2+2*pi/5),2/5*cos(pi/2+3*pi/5),cos(pi/2+4*pi/5),2/5*cos(3*pi/2),cos(pi/2+6*pi/5),2/5*cos(pi/2+7*pi/5),cos(pi/2+8*pi/5),2/5*cos(pi/2+9*pi/5)];
y = 14 + 2.*[sin(pi/2),2/5*sin(pi/2+pi/5),sin(pi/2+2*pi/5),2/5*sin(pi/2+3*pi/5),sin(pi/2+4*pi/5),2/5*sin(3*pi/2),sin(pi/2+6*pi/5),2/5*sin(pi/2+7*pi/5),sin(pi/2+8*pi/5),2/5*sin(pi/2+9*pi/5)];
plot(x,y)
fill(x,y, 'w')

title('Flag of Pakistan')

%% If you reached till this point, thank you for reading the code, I encourage to implement this code and also share with your friends. 
