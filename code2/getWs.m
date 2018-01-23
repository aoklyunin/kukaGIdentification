clear all;
syms q1; syms q2; syms q3; syms q4; syms q5;

A01 =[
	 cos(q1 - 3), 0,      sin(q1 - 3), 33*cos(q1 - 3);
	 sin(q1 - 3), 0, -cos(q1 - 3), 33*sin(q1 - 3);
	             0,                   1,           0,              147;
	             0,                     0,           0,                1];
A12=[
		 cos(q2 + 0.44), 		-sin(q2 + 0.44),   0, 155*cos(q2 + 0.44);
		 sin(q2 + 0.44),      cos(q2 + 0.44),   0, 155*sin(q2 + 0.44);
		              0,                   0, 1.0,                    0;
		              0,                   0,   0,                  1];
	
A23=[
	 cos(q3 + 2.6), -sin(q3 + 2.6),   0, 135*cos(q3 + 2.6);
	 sin(q3 + 2.6),      cos(q3 + 2.6),   0, 135*sin(q3 + 2.6);
	             0,                  0, 1.0,                   0;
	             0,                  0,   0,                 1];

A34=[
 cos(q4+pi/2), -sin(q4+pi/2),0  0;
 0,0,-1,0;
 sin(q4+pi/2), 0 , cos(q4+pi/2),   0;
       0,                0,            0, 1];

A45=[
 cos(q5 - 1.6), -sin(q5 - 1.6),   0,     0;
 sin(q5 - 1.6),   cos(q5 - 1.6),   0,     0;
             0,                  0, 1, 217.5;
             0,                  0,   0,   1];

syms rx;syms ry; syms rz;

r1 = A01*[rx;ry;rz;1];
r2 = A01*A12*[rx;ry;rz;1];
r3 = A01*A12*A23*[rx;ry;rz;1];
r4 = A01*A12*A23*A34*[rx;ry;rz;1];
r5 = A01*A12*A23*A34*A45*[rx;ry;rz;1];

fr1 = vpa(subs(r1(3),[rx ry rz],[0 0 0]));
xVal1 = vpa(subs((r1(3)-fr1),[rx,ry,rz],[1 0 0]));
yVal1 = vpa(subs((r1(3)-fr1),[rx,ry,rz],[0 1 0]));
zVal1 = vpa(subs((r1(3)-fr1),[rx,ry,rz],[0 0 1]));

fr2 = vpa(subs(r2(3),[rx ry rz],[0 0 0]));
xVal2 = vpa(subs((r2(3)-fr2),[rx,ry,rz],[1 0 0]));
yVal2 = vpa(subs((r2(3)-fr2),[rx,ry,rz],[0 1 0]));
zVal2 = vpa(subs((r2(3)-fr2),[rx,ry,rz],[0 0 1]));

fr3 = vpa(subs(r3(3),[rx ry rz],[0 0 0]));
xVal3 = vpa(subs((r3(3)-fr3),[rx,ry,rz],[1 0 0]));
yVal3 = vpa(subs((r3(3)-fr3),[rx,ry,rz],[0 1 0]));
zVal3 = vpa(subs((r3(3)-fr3),[rx,ry,rz],[0 0 1]));

fr4 = vpa(subs(r1(3),[rx ry rz],[0 0 0]));
xVal4 = vpa(subs((r4(3)-fr4),[rx,ry,rz],[1 0 0]));
yVal4 = vpa(subs((r4(3)-fr4),[rx,ry,rz],[0 1 0]));
zVal4 = vpa(subs((r4(3)-fr4),[rx,ry,rz],[0 0 1]));

fr5 = vpa(subs(r5(3),[rx ry rz],[0 0 0]));
xVal5 = vpa(subs((r5(3)-fr5),[rx,ry,rz],[1 0 0]));
yVal5 = vpa(subs((r5(3)-fr5),[rx,ry,rz],[0 1 0]));
zVal5 = vpa(subs((r5(3)-fr5),[rx,ry,rz],[0 0 1]));

dfr1q1 = diff(fr1,q1);
dxVal1q1 = diff(xVal1,q1);
dyVal1q1 = diff(yVal1,q1);
dzVal1q1 = diff(zVal1,q1);

dfr2q1 = diff(fr2,q1);
dxVal2q1 = diff(xVal2,q1);
dyVal2q1 = diff(yVal2,q1);
dzVal2q1 = diff(zVal2,q1);

dfr3q1 = diff(fr3,q1);
dxVal3q1 = diff(xVal3,q1);
dyVal3q1 = diff(yVal3,q1);
dzVal3q1 = diff(zVal3,q1);

dfr4q1 = diff(fr4,q1);
dxVal4q1 = diff(xVal4,q1);
dyVal4q1 = diff(yVal4,q1);
dzVal4q1 = diff(zVal4,q1);

dfr5q1 = diff(fr5,q1);
dxVal5q1 = diff(xVal5,q1);
dyVal5q1 = diff(yVal5,q1);
dzVal5q1 = diff(zVal5,q1);

dfr2q2 = diff(fr2,q2);
dxVal2q2 = diff(xVal2,q2);
dyVal2q2 = diff(yVal2,q2);
dzVal2q2 = diff(zVal2,q2);

dfr3q2 = diff(fr3,q2);
dxVal3q2 = diff(xVal3,q2);
dyVal3q2 = diff(yVal3,q2);
dzVal3q2 = diff(zVal3,q2);

dfr4q2 = diff(fr4,q2);
dxVal4q2 = diff(xVal4,q2);
dyVal4q2 = diff(yVal4,q2);
dzVal4q2 = diff(zVal4,q2);

dfr5q2 = diff(fr5,q2);
dxVal5q2 = diff(xVal5,q2);
dyVal5q2 = diff(yVal5,q2);
dzVal5q2 = diff(zVal5,q2);

dfr3q3 = diff(fr3,q3);
dxVal3q3 = diff(xVal3,q3);
dyVal3q3 = diff(yVal3,q3);
dzVal3q3 = diff(zVal3,q3);

dfr4q3 = diff(fr4,q3);
dxVal4q3 = diff(xVal4,q3);
dyVal4q3 = diff(yVal4,q3);
dzVal4q3 = diff(zVal4,q3);

dfr5q3 = diff(fr5,q3);
dxVal5q3 = diff(xVal5,q3);
dyVal5q3 = diff(yVal5,q3);
dzVal5q3 = diff(zVal5,q3);


dfr4q4 = diff(fr4,q4);
dxVal4q4 = diff(xVal4,q4);
dyVal4q4 = diff(yVal4,q4);
dzVal4q4 = diff(zVal4,q4);

dfr5q4 = diff(fr5,q4);
dxVal5q4 = diff(xVal5,q4);
dyVal5q4 = diff(yVal5,q4);
dzVal5q4 = diff(zVal5,q4);

dfr5q5 = diff(fr5,q5);
dxVal5q5 = diff(xVal5,q5);
dyVal5q5 = diff(yVal5,q5);
dzVal5q5 = diff(zVal5,q5);

Ws = [ dxVal1q1 0 0 0 0;
      dyVal1q1 0 0 0 0;
      dzVal1q1 0 0 0 0;
      dfr1q1 0 0 0 0;
   
      dxVal2q1 dxVal2q1 0 0 0;
      dyVal2q1 dyVal2q2 0 0 0;
      dzVal2q1 dzVal2q2 0 0 0;
      dfr2q1   dfr2q2 0 0 0;
    
      dxVal3q1 dxVal3q1 dxVal3q3 0 0;
      dyVal3q1 dyVal3q2 dyVal3q3 0 0;
      dzVal3q1 dzVal3q2 dzVal3q3 0 0;
      dfr3q1   dfr3q2   dfr3q3   0 0;
        
      dxVal4q1 dxVal4q1 dxVal4q3 dxVal4q4 0;
      dyVal4q1 dyVal4q2 dyVal4q3 dyVal4q4 0;
      dzVal4q1 dzVal4q2 dzVal4q3 dzVal4q4 0;
      dfr4q1   dfr4q2   dfr4q3   dfr4q4 0;
      
      dxVal5q1 dxVal5q2 dxVal5q3 dxVal5q4 dxVal5q5;
      dyVal5q1 dyVal5q2 dyVal5q3 dyVal5q4 dyVal5q5;
      dzVal5q1 dzVal5q2 dzVal5q3 dzVal5q4 dzVal5q5;
      dfr5q1   dfr5q2   dfr5q3   dfr5q4 dfr5q5;
      
];


save('../workspace/Ws.mat','Ws','q1','q2','q3','q4', 'q5');
