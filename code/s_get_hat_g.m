clear all;
load('../workspace/hatTheta.mat');
load('../workspace/subsW.mat');
load('../workspace/calculated.mat');

hatT = [];
hatTf = [];
hatTfi = [];
for i=1:1:size(T,1) 
   % Wm = double(subs(WsFullR,[q1 q2 q3 q4 q5],[J(i,1)  J(i,2)  J(i,3) J(i,4) J(i,5)]));
    curW = Ws((i-1)*4+1:(i-1)*4+4,:);
    curWFi = WsFi((i-1)*4+1:(i-1)*4+4,:);
    hatT(i,:) = curW*theta;
    hatTFi(i,:) = curWFi*thetaFi;
end

save('../workspace/hatG.mat','T','hatT','hatTFi');


