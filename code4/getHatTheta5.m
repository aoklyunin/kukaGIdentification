clear all;
load('../workspace/doubleWs5z.mat')
load('../workspace/calculated.mat')

disp(sprintf('число обусловленности регрессора пятого звена %.4f',cond(zW5)))
theta5 = inv(zW5'*zW5)*zW5'*zT5(:,4);
save('../workspace/hatTheta5.mat','theta5');


