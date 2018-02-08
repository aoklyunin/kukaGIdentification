clear all;
load('../workspace/hatG.mat');

%myplot([T1 hatT1 eT1],{'$\tau_1~$', '$\hat{\tau}_1~$','$e$'}, '..\imgs\tau1.jpg','northwest','');
myplot([T2 hatT2 eT2],{'$\tau_2~$', '$\hat{\tau}_2~$','$e$'}, '..\imgs\tau2.jpg','southwest','');
myplot([T3 hatT3 eT3],{'$\tau_3~$','$\hat{\tau}_3~$', '$e$'}, '..\imgs\tau3.jpg','southwest','');
myplot([T4 hatT4 eT4],{'$\tau_4~$', '$\hat{\tau}_4~$','$e$'}, '..\imgs\tau4.jpg','southwest','');
myplot([T5 hatT5 eT5],{'$\tau_5~$','$\hat{\tau}_5~$', '$e$'}, '..\imgs\tau5.jpg','northwest','');



