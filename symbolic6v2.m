clear all;
load('filtered.mat');

x = [];
y = [];
z = [];
for i=0.005:0.005:0.3
    for j=1:1:20
        d =  designfilt('lowpassiir','FilterOrder',j, ...
        'HalfPowerFrequency',i,'DesignMethod','butter');
        dTFF1 = filtfilt(d,dT(:,2));
        x = [x;i];
        z = [y;std(dTFF1)];
        y = [z;j];
    end;
end;
plot3(x,y,z);