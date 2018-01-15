clear all;
load('hatG.mat');
dT = dTCuted;
myplot([hatG(:,2),dT(:,2),hatG(:,2)-dT(:,2)],{'$\hat{\tau_f}$','$\tau_f$','$e$'},'C:\tex\gravity\j2.png','southeast',sprintf('STD e:%.3f \tau:%.3f',std(hatG(:,2)-dT(:,2)),std(dT(:,2))));
myplot([hatG(:,3),dT(:,3),hatG(:,3)-dT(:,3)],{'$\hat{\tau_f}$','$\tau_f$','$e$'},'C:\tex\gravity\j3.png','southeast',sprintf('STD e:%.3f \tau:%.3f',std(hatG(:,3)-dT(:,3)),std(dT(:,3))));
myplot([hatG(:,4),dT(:,4),hatG(:,4)-dT(:,4)],{'$\hat{\tau_f}$','$\tau_f$','$e$'},'C:\tex\gravity\j4.png','southeast',sprintf('STD e:%.3f \tau:%.3f',std(hatG(:,4)-dT(:,4)),std(dT(:,4))));
myplot([hatG(:,5),dT(:,5),hatG(:,5)-dT(:,5)],{'$\hat{\tau_f}$','$\tau_f$','$e$'},'C:\tex\gravity\j5.png','southeast',sprintf('STD e:%.3f \tau:%.3f',std(hatG(:,5)-dT(:,5)),std(dT(:,5))));




