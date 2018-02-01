clear all;
load('../workspace/calculated.mat')
load('../workspace/Ws.mat')

s = size(T);
WS=[]; 
for i=1:1:s(1)   
   if mod(i,100)==0
       disp(i/s(1));
   end;
   Wm = double(subs(Ws,[q1 q2 q3 q4 q5],[J(i,1)  J(i,2)  J(i,3)  J(i,4) J(i,5)]));
   WS(i,:,:) = [Wm;diag(multiSign(T(i,:)'))];
end

save('../workspace/doubleWs.mat','WS');
