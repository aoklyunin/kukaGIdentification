load('../workspace/doubleWs5.mat')
load('../workspace/calculated.mat')

zeroLst = [];
zW5 = [];
zJ5 = [];
zT5 = [];
cnt = 0;
for i=1:1:size(WS5,1)
    flg = true;
    for j=1:1:size(WS5,2)
        if abs(WS5(i,j))<0.00001
            flg = false;
        end
    end;
    if flg
        zW5 = [zW5;WS5(i,:)];
        zJ5 = [zJ5;J(i,:)];
        zT5 = [zT5;T(i,:)];
    else
        cnt = cnt+1;
    end;
end;
disp(sprintf('удалено %d строк',cnt));

save('../workspace/doubleWs5z.mat','zW5','zJ5','zT5');