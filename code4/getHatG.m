clear all;
%load('../workspace/hatTheta1.mat');
%load('../workspace/doubleWs1z.mat');
load('../workspace/hatTheta2.mat');
load('../workspace/doubleWs2z.mat');
load('../workspace/hatTheta3.mat');
load('../workspace/doubleWs3z.mat');
load('../workspace/hatTheta4.mat');
load('../workspace/doubleWs4z.mat');
load('../workspace/hatTheta5.mat');
load('../workspace/doubleWs5z.mat');
load('../workspace/calculated.mat');


T2 = zT2(:,2);
T3 = zT3(:,3);
T4 = zT4(:,4);
T5 = zT5(:,5);

%hatT1 = WS1'*theta1;
hatT2 = zW2*theta2;
hatT3 = zW3*theta3;
hatT4 = zW4*theta4;
hatT5 = zW5*theta5;

%eT1 = T1-hatT1;
eT2 = 	T2-hatT2;
eT3 = T3-hatT3;
eT4 = T4-hatT4;
eT5 = T5-hatT5;

save('../workspace/hatG.mat','T2','T3','T4','T5','hatT2','hatT3','hatT4','hatT5','eT2','eT3','eT4','eT5');


