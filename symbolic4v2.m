clear all;
load('cuted.mat');

gamma = 1000;
theta = ones(20,1);
P = eye(20)*gamma;
s = size(dWCuted);
thetaList = [theta];
eList = [zeros(5,1)];
k = 1;
for i=1:1:s(1) 
    Wm(:,:) = dWCuted(i,:,:);
    Gm = dTFF(i,:)';
    en = Wm'*theta - Gm;
    eList = [eList en];
    Pn = P-P*Wm*inv(Wm'*P*Wm+eye(5))*Wm'*P;
    thetan = theta-Pn*Wm*en;
    thetaList = [thetaList thetan];
    theta = thetan;
    P = Pn;
end;

s = size(dTCuted);
hatG = zeros(s);
for i=1:1:s(1)  
  tempW(:,:) = dWCuted(i,:,:);
  hatG(i,:) = tempW'*theta;
end;

save('hatG.mat','hatG','dTFF','dTCuted');
%plot([hatG(:,2),dTCuted(:,2)]);

