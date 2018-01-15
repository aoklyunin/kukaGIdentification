clear all;
load('Ws.mat')
load('calculated.mat')

s = size(T);
dT = [];
dW = [];
W = [];
gList = [];
k = 1;
prevW = double(subs(Ws,[q1 q2 q3 q4 q5],[J(1,1)  J(1,2)  J(1,3)  J(1,4) J(1,5)]));
W(1,:,:) = prevW;
for i=2:1:s(1)   
    if mod(i,50)==0
        disp(i);
    end;
   Wm1 = double(subs(Ws,[q1 q2 q3 q4 q5],[J(i,1)  J(i,2)  J(i,3)  J(i,4) J(i,5)]));
   Wm = Wm1-prevW;
   prevW = Wm1;
   dW(i-1,:,:) = Wm;
   W(i,:,:) = Wm1;
   dT(i-1,:) = T(i,:)'- T(i-1,:)';
   normDT(i-1) = norm(dT(i-1,:));
end;

save('filtered.mat','dW','W','dT','normDT');
