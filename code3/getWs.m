clear all;
syms q1; syms q2; syms q3; syms q4; syms q5;

 %обощенные координаты в положении свеча
        QQ1 =  2.95; 
        QQ2 =  1.13;
        QQ3 = -2.55;
        QQ4 =  1.79;
        QQ5 =  2.92;
        
       
A01 = getDH(q1-QQ1,   0,  0,147);
A12 = getDH(q2-QQ2,pi/2, 33,  0);
A23 = getDH(q3-QQ3,   0,155,  0);
A34 = getDH(q4-QQ4,   0,135,  0);
A45 = getDH(q5-QQ5,pi/2,  0,  0);


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


Ws = [ diff(w1,q1) zeros(4,1) zeros(4,1) zeros(4,1) zeros(4,1);
       diff(w2,q1) diff(w2,q2) zeros(4,1) zeros(4,1) zeros(4,1);
       diff(w3,q1) diff(w3,q2) diff(w3,q3) zeros(4,1) zeros(4,1);
       diff(w4,q1) diff(w4,q2) diff(w4,q3) diff(w4,q4) zeros(4,1); 
       diff(w5,q1) diff(w5,q2) diff(w5,q3) diff(w5,q4) diff(w5,q5);
];

Ws = vpa(Ws);

save('../workspace/Ws.mat','Ws','q1','q2','q3','q4', 'q5');
