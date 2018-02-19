cnt = 10;

p1 = 1;
p2 = 2;
p3 = 3;

m1 = -1;
m2 = -2;
m3 = -3;

X = [];
for i=1:1:cnt
    X = [X;
        m1+(p1-m1)*rand(1,1);
        m2+(p2-m2)*rand(1,1);
        m3+(p3-m3)*rand(1,1);
    ];
end



A = [eye(cnt*3);-eye(cnt*3)];
B= [];
for i = 1:1:cnt
    B=[p1;p2;p3;B;-m1;-m2;-m3];
end;

X0 = fmincon(@getXVal,X,A,B);