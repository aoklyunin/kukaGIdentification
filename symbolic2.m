clear all;
load('Ws.mat')
load('calculated.mat')

gamma = 1000;

theta = ones(20,1);
P = eye(20)*gamma;
s = size(T);
thetaList = [theta];
eList = [zeros(5,1)];

%for i=1:1:s(2)
for i=1:1:s(1)    
   Wm = double(subs(Ws,[q1 q2 q3 q4 q5],[J(i,1)  J(i,2)  J(i,3)  J(i,4) J(i,5)]));
   Gm = T(i,:)';
   en = Wm'*theta - Gm;
   eList = [eList en];
   Pn = P-P*Wm*inv(Wm'*P*Wm+eye(5))*Wm'*P;
   thetan = theta-Pn*Wm*en;
   thetaList = [thetaList thetan];
   theta = thetan;
   P = Pn;
end;

save('hat_theta.mat','theta','eList','thetaList');
