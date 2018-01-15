clear all;
load('measured.mat')
s = size(j1);
flg = 0;
b = [];
e = [];
for i=1:1:s(1)
   if (j5(i)-task5(i)) / task5(i)<0.05
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
J = [];
TASK = [];
TIME = [];
W = [];

sb = size(b);
for i=1:1:sb(2)-1
    start = b(i)+10;
    finish = e(i)-10;
    TIME = [TIME; mean(t(start:finish))];
    J = [J; [mean(j1(start:finish)) mean(j2(start:finish)) mean(j3(start:finish)) mean(j4(start:finish)) mean(j5(start:finish))]];
    W = [W; [mean(w1(start:finish)) mean(w2(start:finish)) mean(w3(start:finish)) mean(w4(start:finish)) mean(w5(start:finish))]];
    T = [T; [mean(t1(start:finish)) mean(t2(start:finish)) mean(t3(start:finish)) mean(t4(start:finish)) mean(t5(start:finish))]];
    TASK = [TASK; [mean(task1(start:finish)) mean(task2(start:finish)) mean(task3(start:finish)) mean(task4(start:finish)) mean(task5(start:finish))]];
end

save('calculated.mat','TIME','J','W','T','TASK')