clear all;
syms q1; syms q2; syms q3; syms q4; syms q5;
      
       
A01 = getDH(q1,   pi/2,  0,  0);
A12 = getDH(q2,       0,  0,  0);
A23 = getDH(q3,   0,  0,  0);
A34 = getDH(q4,   pi/2,  0,  0);
A45 = getDH(q5,  0,  0,  0);


syms rx;syms ry; syms rz;


A02 = A01*A12;
A03 = A01*A12*A23;
A04 = A01*A12*A23*A34;
A05 = A01*A12*A23*A34*A45;

w1 = A01(3,:)';
w2 = A02(3,:)';
w3 = A03(3,:)';
w4 = A04(3,:)';
w5 = A05(3,:)';


Ws1 = [ diff(w1,q1);
       diff(w2,q1);
       diff(w3,q1);
       diff(w4,q1);
       diff(w5,q1);
];


Ws2 = [ 
        diff(w2,q2);
        diff(w3,q2);
        diff(w4,q2);
        diff(w5,q2);
];

Ws3 = [ 
       diff(w3,q3);
       diff(w4,q3); 
       diff(w5,q3);
];

Ws4 = [ 
       diff(w4,q4); 
       diff(w5,q4);
];


Ws5 = diff(w5,q5);

% убираем нули
Ws1 = [];
Ws2 = [Ws2(1:2);Ws2(5:6);Ws2(9);Ws2(11);Ws2(13:15)];
Ws3 = [Ws3(1:2);Ws3(5);Ws3(9:11)];
Ws4 = [Ws4(1);Ws4(3);Ws4(5:7)];
Ws5 = Ws5(1:2);

save('../workspace/Ws.mat','Ws1','Ws2','Ws3','Ws4','Ws5','q1','q2','q3','q4', 'q5');
