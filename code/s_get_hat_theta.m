clear all;
load('../workspace/subsW.mat');
load('../workspace/calculated.mat');
load('../workspace/Conf.mat');

Tr = [];
TrFi  = [];

for i=1:1:size(T,1)
    Tr = [Tr;T(i,2:5)'+diag([F2;F3;F4;F5])*f_multi_sign(T(i,2:5))'];
    TrFi = [TrFi;T(i,2:5)'];
end;

theta = inv(Ws'*Ws)*Ws'*Tr;
thetaFi = inv(WsFi'*WsFi)*WsFi'*TrFi;

if flgDisp
    disp('theta=');
    disp(theta);
    disp('theta_{fi}=');
    disp(thetafi);
    disp('W=');
    disp(simplify(W));
end;

save('../workspace/hatTheta.mat','theta','thetaFi');


