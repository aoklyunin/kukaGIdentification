% developed by Alexey Klyunin ITMO University
function adj = adjoint(A)
    adj = [];
    sz = size(A);
    if sz(1)~=sz(2)        
        adj(1,1) = 0;
    else 
        if (sz(1) == 1)
            adj(1,1) = 1;    
        else
            for i=1:1:sz(1)
                for j=1:1:sz(1)
                    temp = getCofactor(A, i, j, sz(1));
                if mod(i+j,2)==0
                    s = 1;
                else
                    s = -1;
                end                
                    adj(j,i) = s*det(temp);
                end
            end
        end
    end
end
