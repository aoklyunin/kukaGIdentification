clear all;
load('../workspace/doubleWs3.mat')
load('../workspace/calculated.mat')

theta = inv(WS3'*WS3)*WS3'*T(:,3);
save('../workspace/hatTheta3.mat','theta3');


