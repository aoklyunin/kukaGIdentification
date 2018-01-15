clear all;
m = load('exp_2.csv');
 t = m(:,1);
 ft = t(1);

 for i=1:1:size(t)
     t(i)=t(i)-ft;
 end
 
 j1 = m(:,2);
 j2 = m(:,3);
 j3 = m(:,4);
 j4 = m(:,5);
 j5 = m(:,6);
 
 w1 = m(:,7);
 w2 = m(:,8);
 w3 = m(:,9);
 w4 = m(:,10);
 w5 = m(:,11);
 
 t1 = m(:,12);
 t2 = m(:,13);
 t3 = m(:,14);
 t4 = m(:,15);
 t5 = m(:,16);
 
 task1 = m(:,17);
 task2 = m(:,18);
 task3 = m(:,19);
 task4 = m(:,20);
 task5 = m(:,21);

 save('measured.mat')
 
