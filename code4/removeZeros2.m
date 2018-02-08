load('../workspace/doubleWs2.mat')
load('../workspace/calculated.mat')

zeroLst = [];
zW2 = [];
zJ2 = [];
zT2 = [];
cnt = 0;
for i=1:1:size(WS2,1)
    flg = true;
    for j=1:1:size(WS2,2)
        if abs(WS2(i,j))<0.00001
            flg = false;
        end
    end;
    if flg
        zW2 = [zW2;WS2(i,:)];
        zJ2 = [zJ2;J(i,:)];
        zT2 = [zT2;T(i,:)];
    else
        cnt = cnt+1;
    end;
    
end;

disp(sprintf('удалено %d строк',cnt));

save('../workspace/doubleWs2z.mat','zW2','zJ2','zT2');