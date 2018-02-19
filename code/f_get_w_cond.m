function [c] = getWCond( Q )
    load('../workspace/WsFullR.mat');
    W = [];
    for i=0:1:size(Q)/5-1
        %disp([Q(i*5+1) Q(i*5+2) Q(i*5+3) Q(i*5+4) Q(i*5+5)]); 
        W = [W ;double(subs(WsFullR,[q1 q2 q3 q4 q5],[Q(i*5+1) Q(i*5+2) Q(i*5+3) Q(i*5+4) Q(i*5+5)]))];        
    end    
    %disp(qr(W));
    %matrixDisp(W);
    %matrixDisp(W'*W)
    c =  cond(W);
    %disp(c);
end

