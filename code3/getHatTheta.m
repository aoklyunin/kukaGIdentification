clear all;
load('../workspace/doubleWs.mat')
load('../workspace/calculated.mat')
load('../workspace/hatTheta.mat');

s = size(WS);
thetaList = [theta];
%eList = [zeros(5,1)];
eList = [0];
k = 1;
for i=1:1:s(1) 
    curWS(:,:) = WS(i,:,:);
    %Gm = T(i,:)';
    Gm = T(i,4)';
   % en = curWS'*theta - Gm;
    en = curWS*theta - Gm;
    eList = [eList en];
   % Pn = P-P*curWS*inv(curWS'*P*curWS+eye(5))*curWS'*P;
    Pn = P-P*curWS'*inv(curWS*P*curWS'+eye(1))*curWS*P;
  %  thetan = theta-Pn*curWS*en;
   thetan = theta-Pn*curWS'*en;
    %disp(thetan);
    thetaList = [thetaList thetan];
    theta = thetan;
    P = Pn;
end

save('../workspace/hatTheta.mat','thetaList','theta','eList','P');


