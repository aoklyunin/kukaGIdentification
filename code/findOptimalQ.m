cnt = 15;
Q = [];
q1m = 0.011;
q1p = 5.840;
q2m = 0.011;
q2p = 2.617;
q3m = -5.0;
q3p = -0.02;
q4m = 0.03;
q4p = 3.42;
q5m = 0.15;
q5p = 5.641;

for i=1:1:cnt
    Q = [Q;
        q2m+(q2p-q2m)*rand(1,1);
        q3m+(q3p-q3m)*rand(1,1);
        q4m+(q4p-q4m)*rand(1,1);
        q5m+(q5p-q5m)*rand(1,1);
    ];
end
c = getWCond(Q);
disp(c);

A = [eye(cnt*4);-eye(cnt*4)];
B = [];
for i = 1:1:cnt
    B = [q2p;q3p;q4p;q5p; B; -q2m;-q3m;-q4m;-q5m];
end
Q0 = fmincon(@getWCond,Q,A,B);
Q0m = [];
for i=0:1:size(Q0)/5-1
    Q0m = [Q0m ;[Q(i*5+1) Q(i*5+2) Q(i*5+3) Q(i*5+4) Q(i*5+5)]];        
end    
matrixDisp(Q0m);
save('../workspace/getOptimalQ.mat','Q0m');

