% developed by Alexey Klyunin ITMO University
function temp = getCofactor(A, p,q, n)
    i = 1;
    j = 1;
    temp = [];
    for row = 1:1:n
        for col = 1:1:n
            if row ~= p && col ~= q
                temp(i,j)= A(row,col);
                j = j+1;
                if (j == n)
                    j = 1;
                    i = i+1;
                end;
            end;
        end;  
    end;
end