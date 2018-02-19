clear all;
load('../workspace/doubleWs.mat');
load('../workspace/WsFull.mat');
load('../workspace/calculated.mat');
load('../workspace/fric.mat');

displayResult = 1;

Tr = [];
Trf  = [];
Trfi  = [];

for i=1:1:size(T,1)
    Tr = [Trf;T(i,2:5)'];
    Trf = [Trf;T(i,2:5)'+diag([F2;F3;F4;F5])*multiSign(T(i,2:5))'];
    Trfi = [Trfi;T(i,2:5)'];
end;

theta = inv(WS'*WS)*WS'*Tr;
thetaf = inv(WS'*WS)*WS'*Trf;
thetafi = inv(WSfi'*WSfi)*WSfi'*Trfi;

if displayResult
    disp('theta=');
    disp(theta);
    disp('theta_{fc}=');
    disp(thetaf);
    disp('theta_{fi}=');
    disp(thetafi);
    disp('W=');
    disp(simplify(WsFull));
end;

save('../workspace/hatTheta.mat','theta','thetaf','thetafi');


