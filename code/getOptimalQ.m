load('../workspace/calculated.mat');
save('../workspace/optimalQ.mat');

tryCnt = 100;
for i = 1:1:tryCnt
    Q = [];
    is = getUniqueRandom(11,1,size(J,1));
    for j = 1:1:11
        Q = [Q;J(is(j),:)'];    
    end;
    
    c = getWCond(Q);
    if c<minCond
        minCond = c;
        resQ = Q;
        disp(sprintf('%.2f',c));
    end
end;
Q = resQ;
save('../workspace/optimalQ.mat','Q','minCond');
   