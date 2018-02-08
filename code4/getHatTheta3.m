clear all;
load('../workspace/doubleWs3z.mat')
load('../workspace/calculated.mat')

disp(sprintf('число обусловленности регрессора первого звена %.4f',cond(zW3)))
theta3 = inv(zW3'*zW3)*zW3'*zT3(:,3);
save('../workspace/hatTheta3.mat','theta3');


