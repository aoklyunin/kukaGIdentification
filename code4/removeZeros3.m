load('../workspace/doubleWs3.mat')
load('../workspace/calculated.mat')

zeroLst = [];
zW3 = [];
zJ3 = [];
zT3 = [];
cnt = 0;
for i=1:1:size(WS3,1)
    flg = true;
    for j=1:1:size(WS3,2)
        if abs(WS3(i,j))<0.00001
            flg = false;
        end
    end;
    if flg
        zW3 = [zW3;WS3(i,:)];
        zJ3 = [zJ3;J(i,:)];
        zT3 = [zT3;T(i,:)];
     else
        cnt = cnt+1;
    end;
end;

disp(sprintf('удалено %d строк',cnt));


save('../workspace/doubleWs3z.mat','zW3','zJ3','zT3');