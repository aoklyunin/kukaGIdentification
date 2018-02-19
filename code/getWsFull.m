clear all;
syms q1; syms q2; syms q3; syms q4; syms q5;
     
displayTex = 0;

%A01 = getDH(q1-170.0 / 180 * pi,    pi/2,    33,147);
%A12 = getDH(q2-65.0 / 180 * pi,   pi,     155,  0);
%A23 = getDH(q3+(90 + 60.0) / 180 * pi,   -pi,     135,  0);
%A34 = getDH(q4,   pi/2,  113.6, 0 );
%A45 = getDH(q5-90.0 / 180 * pi,   0,     0,  57.16);

A01 = getDH(q1,    pi/2,    33,147);
A12 = getDH(q2,   0,     155,  0);
A23 = getDH(q3,   0,     135,  0);
A34 = getDH(q4+pi/2,   0,  113.6, 0 );
A34a = getDH(0,-pi/2,0,0);
A45 = getDH(q5,   0,     0,  57.16);


A01r = getDH(q1,   0,   0,  0);
A12r = getDH(q2,   0,   0,  0);
A23r = getDH(q3,   0,   0,  0);
A34r = getDH(q4,   0,   0,  0);
A45r = getDH(q5,   0,   0,  0);

if displayTex
    mydisp('A_{01}=',A01);
    mydisp('A_{12}=',A12);
    mydisp('A_{23}=',A23);
    mydisp('A_{34}=',A34);
    mydisp('A_{45}=',A45);
end;


syms rx1;syms ry1; syms rz1;
syms rx2;syms ry2; syms rz2;
syms rx3;syms ry3; syms rz3;
syms rx4;syms ry4; syms rz4;
syms rx5;syms ry5; syms rz5;

syms m1;syms m2; syms m3; syms m4; syms m5; syms g;
A01p = A01r;
A02p = A01*A12r;
A03p = A01*A12*A23r;
A04p = A01*A12*A23*A34r;
A05p = A01*A12*A23*A34*A34a*A45r;

if displayTex
mydisp('A_{01}=',A01p);
mydisp('A_{02}=',A02p);
mydisp('A_{03}=',A03p);
mydisp('A_{04}=',A04p);
mydisp('A_{05}=',A05p);
end;

w1 = A01p(3,1:4);
w2 = A02p(3,1:4);
w3 = A03p(3,1:4);
w4 = A04p(3,1:4);
w5 = A05p(3,1:4);

if displayTex
mydisp('w_1=',w1);
mydisp('w_2=',w2);
mydisp('w_3=',w3);
mydisp('w_4=',w4);
mydisp('w_5=',w5);
end;

p1 = m1*g*w1*[rx1;ry1;rz1;1];
p2 = m2*g*w2*[rx2;ry2;rz2;1];
p3 = m3*g*w3*[rx3;ry3;rz3;1];
p4 = m4*g*w4*[rx4;ry4;rz4;1];
p5 = m5*g*w5*[rx5;ry5;rz5;1];

if displayTex
    mydisp('p_1=',p1);
    mydisp('p_2=',p2);
    mydisp('p_3=',p3);
    mydisp('p_4=',p4);
    mydisp('p_5=',p5);
end;

P1 = p1+p2+p3+p4+p5;
P2 = p2+p3+p4+p5;
P3 = p3+p4+p5;
P4 = p4+p5;
P5 = p5;

if displayTex
    mydisp2('P_1=',P1);
    mydisp2('P_2=',P2);
    mydisp2('P_3=',P3);
    mydisp2('P_4=',P4);
    mydisp2('P_5=',P5);
end;

WsFull = [
     diff(w1,q1) diff(w2,q1) diff(w3,q1) diff(w4,q1) diff(w5,q1);
     zeros(1,4) diff(w2,q2) diff(w3,q2) diff(w4,q2) diff(w5,q2);
     zeros(1,4)  zeros(1,4) diff(w3,q3) diff(w4,q3) diff(w5,q3);
     zeros(1,4)  zeros(1,4)  zeros(1,4) diff(w4,q4) diff(w5,q4);
     zeros(1,4)  zeros(1,4)  zeros(1,4)  zeros(1,4) diff(w5,q5)
    ];


if displayTex
    for i =1:1:size(WsFull,2)
        mydisp(sprintf('W_{%d}=',i),WsFull(:,i)); 
    end
end

WsFullR = [WsFull(2:5,6) WsFull(2:5,9:10) WsFull(2:5,12:14) WsFull(2:5,17:18)];

if displayTex
    for i =1:1:size(WsFullR,2)
        mydisp(sprintf('W_{%d_R}=',i),WsFullR(:,i)); 
    end
end


save('../workspace/WsFull.mat','WsFull','q1','q2','q3','q4', 'q5');
save('../workspace/WsFullR.mat','WsFullR','q1','q2','q3','q4', 'q5');
