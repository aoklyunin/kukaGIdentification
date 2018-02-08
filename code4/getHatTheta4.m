clear all;
load('../workspace/doubleWs4.mat')
load('../workspace/calculated.mat')

theta = inv(WS4'*WS4)*WS4'*T(:,4);
save('../workspace/hatTheta4.mat','theta4');


