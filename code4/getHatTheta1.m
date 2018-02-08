clear all;
load('../workspace/doubleWs1z.mat')
load('../workspace/calculated.mat')

disp(sprintf('число обусловленности регрессора первого звена %.4f',cond(zW1)))
theta1 = inv(zW1'*zW1)*zW1'*zT1;
save('../workspace/hatTheta1.mat','theta1');


