clear all;
load('filtered.mat')

s = size(dW);
k = 1;
dWCuted = [];
dTCated = [];
for i=1:1:s(1) 
   Wm(:,:) = dW(i,:,:);
   Gm = dT(i,:)';
   if normDT(i)<0.1
    dWCuted(k,:,:) = Wm;
    dTCuted(k,:) = Gm;
    WCuted(k,:,:) = W(i+1,:,:);
    k = k+1;
   end;
end;

d =  designfilt('lowpassiir','FilterOrder',20, ...
        'HalfPowerFrequency',0.4,'DesignMethod','butter');
dTFF = filtfilt(d,dTCuted);

myplot([dTCuted(:,2),dTFF(:,2)],{'$\tau_2$','$\tau_{2_f}$'},'C:\tex\gravity\filteredTau2.png','southeast','butter|fr 0.2|forder 20');
myplot([dTCuted(:,3),dTFF(:,3)],{'$\tau_3$','$\tau_{3_f}$'},'C:\tex\gravity\filteredTau3.png','southeast','butter|fr 0.2|forder 20');
myplot([dTCuted(:,4),dTFF(:,4)],{'$\tau_4$','$\tau_{4_f}$'},'C:\tex\gravity\filteredTau4.png','southeast','butter|fr 0.2|forder 20');
myplot([dTCuted(:,5),dTFF(:,5)],{'$\tau_5$','$\tau_{5_f}$'},'C:\tex\gravity\filteredTau5.png','southeast','butter|fr 0.2|forder 20');


% plot( dTFF,'LineWidth',2);
% legend_handle = legend({'dt','dt_f'},'Interpreter','latex','Location','southeast');
% legend_handle.FontSize = 16;
% set(legend_handle);
% grid on;
    
save('cuted.mat','dWCuted','dTCuted','WCuted','dTFF');
