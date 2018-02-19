clear all;
load('../workspace/calculated.mat')
load('../workspace/W.mat')

s = size(T);
Ws=[]; 
WsFi = [];
%fileID = fopen('../log/doubleWS.txt','w');
for i=1:1:s(1)
   if mod(i,100)==0
       disp(i/s(1));
   end;
   curW = double(subs(WR,[q1 q2 q3 q4 q5],[J(i,1)  J(i,2)  J(i,3)  J(i,4) J(i,5)]));
   Ws = [Ws; curW ];
   WsFi = [WsFi; [curW diag(f_multi_sign(T(i,2:5)))] ];
end
save('../workspace/subsW.mat','Ws','WsFi');
