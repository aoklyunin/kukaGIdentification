clear all;
load('hat_theta.mat');
load('calculated.mat');
load('Ws.mat');

s = size(T);
hatG1 = [];
for i=1:1:s(1) 
  Wm = double(subs(Ws,[q1 q2 q3 q4 q5],[J(i,1)  J(i,2)  J(i,3)  J(i,4) J(i,5)]));
  hatG(:,i) = Wm'*theta;
end;

save('hatG.mat','hatG');
