clear all;
load('../workspace/F.mat');
load('../workspace/hatTheta.mat');
load('../workspace/doubleWs.mat');
load('../workspace/calculated.mat');

hatT = [];
eT = [];
curWs = [];
for i=1:1:size(T,1) 
    curWS(:,:) = WS(i,:,:);
    hatT(i,:) = curWS'*theta;
    eT(i,:) = hatT(i,:) - (T(i,:)'+F*multiSign(T(i,:)')')';
end

save('../workspace/hatG.mat','T','hatT','eT');


