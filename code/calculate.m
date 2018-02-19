

clear all;
close all;

flgDisp = 1;

load('../workspace/measured.mat')
 
% фильтруем моменты через Баттерворта
d1 = designfilt('lowpassiir','FilterOrder',10, ...
    'HalfPowerFrequency',0.1,'DesignMethod','butter');
t1ff = filtfilt(d1,t1);
t2ff = filtfilt(d1,t2);
t3ff = filtfilt(d1,t3);
t4ff = filtfilt(d1,t4);
t5ff = filtfilt(d1,t5);

tArr = [t1 t2 t3 t4 t5];


s = size(j1);
flg = 0;
b = [];

e = [];
for i=1:1:s(1)
   if (abs(j1(i)-task1(i)) / task1(i)<0.01 && abs(j2(i)-task2(i)) / task2(i)<0.01 &&  abs(j3(i)-task3(i)) / task3(i)<0.01 &&  abs(j4(i)-task4(i)) / task4(i)<0.01 &&   abs(j5(i)-task5(i)) / task5(i)<0.01 )
       if flg == 0
          b = [b i]; 
       end
       flg =  1;
   else
       if flg ==1
          e = [e i]; 
       end
       flg = 0;
   end
end

T = [];
Tm = [];
J = [];
TASK = [];
TIME = [];
W = [];
START = [];
FINISH = [];
sb = size(b);

for i=1:1:sb(2)-1
    start = b(i)+10;
    finish = e(i)-10;
    TIME = [TIME; mean(t(start:finish))];
    START = [START; start];
    FINISH = [FINISH; finish];
    J = [J; [mean(j1(start:finish)) mean(j2(start:finish)) mean(j3(start:finish)) mean(j4(start:finish)) mean(j5(start:finish))]];
    W = [W; [mean(w1(start:finish)) mean(w2(start:finish)) mean(w3(start:finish)) mean(w4(start:finish)) mean(w5(start:finish))]];
    T = [T; [mean(t1(start:finish)) mean(t2(start:finish)) mean(t3(start:finish)) mean(t4(start:finish)) mean(t5(start:finish))]];
    Tm = [T; [mean(medfilt1(t1(start:finish))) mean(medfilt1(t2(start:finish))) mean(medfilt1(t3(start:finish))) mean(medfilt1(t4(start:finish))) mean(medfilt1(t5(start:finish)))]];
    TASK = [TASK; [mean(task1(start:finish)) mean(task2(start:finish)) mean(task3(start:finish)) mean(task4(start:finish)) mean(task5(start:finish))]];
end


if flgDisp
    meanT = zeros(size(t1,1),5);
    meanTm = zeros(size(t1,1),5);
    start = b(40);
    finish = e(45);
    for i = 40:1:45
        for j=b(i):1:e(i)
            meanT(j,:) = T(i,:);
            meanTm(j,:) = Tm(i,:);
        end;
    end;
    for i=1:1:5
        myplot([ j1(start:finish) j2(start:finish) j3(start:finish) j4(start:finish) j5(start:finish) tArr(start:finish,i) meanT(start:finish,i)  meanTm(start:finish,i)],{'$j_1$','$j_2$','$j_3$','$j_4$','$j_5$',sprintf('$\\tau_%d~$',i),sprintf('$\\overline{\\tau_%d}$',i),sprintf('$\\overline{\\tau_%d}_m$',i)}, sprintf('..\\imgs\\calculated\\meanT_%d.jpg',i),'northwest',sprintf('CalculatedTorques for joint %d',i));
    end;
    close all;
end;

save('../workspace/calculated.mat','TIME','J','W','T','TASK','START','FINISH')