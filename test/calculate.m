%clear all;
%load('../workspace/measured.mat');
%load('../workspace/calculated.mat');
close all;
startX = 10000;
finishX = 20000;
calcT = zeros(finishX,5);
calcJ = zeros(finishX,5);
calcW = zeros(finishX,5);
calcTask = zeros(finishX,5);

firstStart = -1;
lastFinish = -1;

for i=1:1:size(START,1)
    if (START(i)>=startX)&&(FINISH(i)<=finishX)
        for j = START(i):FINISH(i)
            calcT(j,:) = T(i,:);
            calcJ(j,:) = J(i,:);
            calcW(j,:) = W(i,:);
            calcTask(j,:) = TASK(i,:);
        end;
    end;
end;

%myplot([t5(startX:finishX) calcT(startX:finishX,5)],{'t','ct'},'','southeast','j5:t');
myplot([j5(startX:finishX) calcJ(startX:finishX,5) task5(startX:finishX)],{'j','cj','task'},'','southeast','j5:j');
myplot([j4(startX:finishX) calcJ(startX:finishX,4) task4(startX:finishX)],{'j','cj','task'},'','southeast','j4:j');
myplot([j3(startX:finishX) calcJ(startX:finishX,3) task3(startX:finishX)],{'j','cj','task'},'','southeast','j3:j');
myplot([j2(startX:finishX) calcJ(startX:finishX,2) task2(startX:finishX)],{'j','cj','task'},'','southeast','j2:j');
myplot([j1(startX:finishX) calcJ(startX:finishX,1) task1(startX:finishX)],{'j','cj','task'},'','southeast','j1:j');
%myplot([j5(startX:finishX) calcJ(startX:finishX,5) task5(startX:finishX) t5(startX:finishX) calcT(startX:finishX,5)],{'j','cj','task','t','ct'},'','southeast','j5:t');
