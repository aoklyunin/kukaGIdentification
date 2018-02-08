clear all;
load('../workspace/doubleWs2z.mat')
load('../workspace/calculated.mat')

disp(sprintf('число обусловленности регрессора второго звена %.4f',cond(zW2)))
theta2 = inv(zW2'*zW2)*zW2'*zT2(:,2);
save('../workspace/hatTheta2.mat','theta2');


