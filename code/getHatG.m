clear all;
load('../workspace/hatTheta.mat');
load('../workspace/doubleWs.mat');
load('../workspace/calculated.mat');

hatT = [];
hatTf = [];
hatTfi = [];
for i=1:1:size(T,1) 
   % Wm = double(subs(WsFullR,[q1 q2 q3 q4 q5],[J(i,1)  J(i,2)  J(i,3) J(i,4) J(i,5)]));
    Wm = WS((i-1)*4+1:(i-1)*4+4,:);
    Wmfi = WSfi((i-1)*4+1:(i-1)*4+4,:);
    hatT(i,:) = Wm*theta;
    hatTf(i,:) = Wm*thetaf;
    hatTfi(i,:) = Wmfi*thetafi;
end

save('../workspace/hatG.mat','T','hatT','hatTf','hatTfi');


