clear all;
load('../workspace/doubleWs2.mat')
load('../workspace/calculated.mat')

theta = inv(WS2'*WS2)*WS2'*T(:,2);
save('../workspace/hatTheta2.mat','theta2');


