function isEqual = isMEqual( A,B,delta)
    if size(A)~= size(B)
        isEqual = false;
    else
        sum = 0;
        s = size(A);
        for i=1:1:s(1)
            for j=1:1:s(1)
                sum = (A(i,j)-B(i,j))^2;
            end;
        end;
        if sqrt(sum)<delta
            isEqual = true;
        else
            isEqual =  false;
        end;
    end
end

