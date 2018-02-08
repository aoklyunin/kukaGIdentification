load('../workspace/doubleWs4.mat')
load('../workspace/calculated.mat')

zeroLst = [];
zW4 = [];
zJ4 = [];
zT4 = [];
cnt = 0;
for i=1:1:size(WS4,1)
    flg = true;
    for j=1:1:size(WS4,2)
        if abs(WS4(i,j))<0.00001
            flg = false;
        end
    end;
    if flg
        zW4 = [zW4;WS4(i,:)];
        zJ4 = [zJ4;J(i,:)];
        zT4 = [zT4;T(i,:)];
    else
        cnt = cnt+1;
    end;
end;

disp(sprintf('удалено %d строк',cnt));


save('../workspace/doubleWs4z.mat','zW4','zJ4','zT4');