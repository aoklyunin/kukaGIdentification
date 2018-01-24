clear all;
close all;
load('../workspace/hatG.mat');
load('../workspace/calculated.mat');
%myplot([T(:,1) hatT(:,1) eT(:,1)],{'$\tau_1~$', '$\hat{\tau}_1~$','$e$'}, '..\imgs\tau1.jpg','northwest','');
%myplot([T(:,2) hatT(:,2) eT(:,2)],{'$\tau_2~$', '$\hat{\tau}_2~$','$e$'}, '..\imgs\tau2.jpg','southwest','');
%myplot([T(:,3) hatT(:,3) eT(:,3)],{'$\tau_3~$','$\hat{\tau}_3~$', '$e$'}, '..\imgs\tau3.jpg','southwest','');
%myplot([T(:,4) hatT(:,4) eT(:,4)],{'$\tau_4~$', '$\hat{\tau}_4~$','$e$'}, '..\imgs\tau4.jpg','southwest','');
%myplot([T(:,5) hatT(:,5) eT(:,4)],{'$\tau_5~$','$\hat{\tau}_5~$', '$e$'}, '..\imgs\tau5.jpg','northwest','');

myplot([T(1:2000,4) J(1:2000,4)-1.5],{'$\tau_4~$', '$\hat{\tau}_4~$','$e$'}, '..\imgs\tau4.jpg','southwest','');
%myplot([T(:,4)],{'$\tau_4~$'}, '..\imgs\tau4_1.jpg','southwest','');
%myplot([hatT],{'$\hat{\tau}_4~$'}, '..\imgs\tau4_2.jpg','southwest','');



