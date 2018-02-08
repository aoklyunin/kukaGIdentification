clear all;
load('../workspace/doubleWs4z.mat')
load('../workspace/calculated.mat')

disp(sprintf('число обусловленности регрессора четвёртого звена %.4f',cond(zW4)))
theta4 = inv(zW4'*zW4)*zW4'*zT4(:,4);
save('../workspace/hatTheta4.mat','theta4');


