clear all;
load('filtered.mat');

d =  designfilt('lowpassiir','FilterOrder',2, ...
        'HalfPowerFrequency',0.5,'DesignMethod','butter');
 
 dTFF1 = filtfilt(d,dT(:,2));
 % dTFF2 = filtfilt(d,dT(:,3));
 %  dTFF3 = filtfilt(d,dT(:,4));
  %  dTFF4 = filtfilt(d,dT(:,5));
    
plot([dT(:,2) dTFF1],'LineWidth',2);
legend_handle = legend({'dt','dt_f'},'Interpreter','latex','Location','southeast');
legend_handle.FontSize = 16;
set(legend_handle);
grid on;