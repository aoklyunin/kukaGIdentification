clear all;
load('../workspace/doubleWs1.mat')
load('../workspace/calculated.mat')

theta1 = inv(WS1'*WS1)*WS1'*T(:,1);
save('../workspace/hatTheta1.mat','theta1');


