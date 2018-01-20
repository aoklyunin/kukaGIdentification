function sv = multiSign(v)
    sv = [];
    for i=1:1:size(v)
        sv(i) = sign(v(i));
    end
end

