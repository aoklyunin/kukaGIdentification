function sv = multiSign(v)
    sv = [];
    for i=1:1:size(v,1)
        for j=1:1:size(v,2)
            sv(i,j) = sign(v(i,j));
        end;
    end
end

