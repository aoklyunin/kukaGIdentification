load('../workspace/W.mat');
load('../workspace/hatTheta.mat');
syms t2; syms t3; syms t4; syms t5;
Ts = diag([t2;t3;t4;t5]);
disp(vpa(simplify([WR -Ts]*thetaFi),4));