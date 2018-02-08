clear all;
load('../workspace/hatTheta1.mat');
load('../workspace/doubleWs1.mat');
load('../workspace/hatTheta2.mat');
load('../workspace/doubleWs2.mat');
load('../workspace/hatTheta3.mat');
load('../workspace/doubleWs3.mat');
load('../workspace/hatTheta4.mat');
load('../workspace/doubleWs4.mat');
load('../workspace/hatTheta5.mat');
load('../workspace/doubleWs5.mat');
load('../workspace/calculated.mat');


%T1 = T(:,1);
T2 = T(:,2);
T3 = T(:,3);
T4 = T(:,4);
T5 = T(:,5);

%hatT1 = WS1'*theta1;
hatT2 = WS2'*theta2;
hatT3 = WS3'*theta3;
hatT4 = WS4'*theta4;
hatT5 = WS5'*theta5;

%eT1 = T1-hatT1;
eT2 = T1-hatT2;
eT3 = T1-hatT3;
eT4 = T1-hatT4;
eT5 = T1-hatT5;

save('../workspace/hatG.mat','T2','T3','T4','T5','hatT2','hatT3','hatT4','hatT5','eT2','eT3','eT4','eT5');


