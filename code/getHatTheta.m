clear all;
load('../workspace/doubleWs.mat')
load('../workspace/calculated.mat')
load('../workspace/F.mat','F');
load('../workspace/hatTheta.mat');



s = size(WS);
thetaList = [theta];
eList = [zeros(5,1)];
k = 1;
for i=1:1:s(1) 
    curWS(:,:) = WS(i,:,:);
    %disp(F*multiSign(T(i,:)')');
    %disp(T(i,:)');
    Gm = T(i,:)'+F*multiSign(T(i,:)')';
    en = curWS'*theta - Gm;
    eList = [eList en];
    Pn = P-P*curWS*inv(curWS'*P*curWS+eye(5))*curWS'*P;
    thetan = theta-Pn*curWS*en;
    %disp(thetan);
    thetaList = [thetaList thetan];
    theta = thetan;
    P = Pn;
end

save('../workspace/hatTheta.mat','thetaList','theta','eList','P');


