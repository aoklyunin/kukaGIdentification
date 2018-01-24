theta = [ones(20,1);0.755;0.8495;0.8495;0.5726;0.156];
gamma = 0.1;
P = eye(25)*gamma;
save('../workspace/hatTheta.mat','theta','P');