clear all;
load('calculated.mat');
load('hat_theta.mat');
load('hatG.mat');

myplot([hatG(1,:)' T(:,1) hatG(1,:)'-T(:,1)],{'$\hat{\tau}_1~$','$\tau_1~$', '$e$'}, 'C:\tex\tau1.jpg','northwest');
myplot([hatG(2,:)' T(:,2) hatG(2,:)'-T(:,2)],{'$\hat{\tau}_2~$','$\tau_2~$', '$e$'}, 'C:\tex\tau2.jpg','southwest');
myplot([hatG(3,:)' T(:,3) hatG(3,:)'-T(:,3)],{'$\hat{\tau}_3~$','$\tau_3~$', '$e$'}, 'C:\tex\tau3.jpg','southwest');
myplot([hatG(4,:)' T(:,4) hatG(4,:)'-T(:,4)],{'$\hat{\tau}_4~$','$\tau_4~$', '$e$'}, 'C:\tex\tau4.jpg','southwest');
myplot([hatG(5,:)' T(:,5) hatG(5,:)'-T(:,5)],{'$\hat{\tau}_5~$','$\tau_5~$', '$e$'}, 'C:\tex\tau5.jpg','northwest');

myplot([eList(1,:)' eList(2,:)' eList(3,:)' eList(4,:)' eList(5,:)'],{'$e_1~$','$e_2~$','$e_3~$','$e_4~$','$e_5~$'}, 'C:\tex\e.jpg','southeast');

myplot([thetaList(1,:)' thetaList(2,:)' thetaList(3,:)'  thetaList(4,:)'] ,{'$gm_1r_{x_1}~$','$gm_1r_{y_1}~$','$gm_1r_{z_1}~$, ','$gm_1$'}, 'C:\tex\th1.jpg','northeast');
myplot([thetaList(5,:)' thetaList(6,:)' thetaList(7,:)'  thetaList(8,:)'],{'$gm_2r_{x_2}~$','$gm_2r_{y_2}~$','$gm_2r_{z_2}~$','$gm_2$'}, 'C:\tex\th2.jpg','southeast');
myplot([thetaList(9,:)' thetaList(10,:)' thetaList(11,:)'  thetaList(10,:)'],{'$gm_3r_{x_3}~$','$gm_3r_{y_3}~$','$gm_3r_{z_3}~$','$gm_3$'}, 'C:\tex\th3.jpg','northwest');
myplot([thetaList(13,:)' thetaList(14,:)' thetaList(15,:)'  thetaList(16,:)'],{'$gm_4r_{x_4}~$','$gm_4r_{y_4}~$','$gm_4r_{z_4}~$','$gm_4$'}, 'C:\tex\th4.jpg','northeast');
myplot([thetaList(17,:)' thetaList(18,:)' thetaList(19,:)'  thetaList(20,:)'],{'$gm_5r_{x_5}~$','$gm_5r_{y_5}~$','$gm_5r_{z_5}~$','$gm_5$'}, 'C:\tex\th5.jpg','northeast');
