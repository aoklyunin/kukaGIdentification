clear all;
load('../workspace/doubleWs5.mat')
load('../workspace/calculated.mat')

theta = inv(WS5'*WS5)*WS5'*T(:,5);
save('../workspace/hatTheta5.mat','theta5');


