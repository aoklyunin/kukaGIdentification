function matrixDisp( M )
    
    disp('\begin{equation}');
     
    disp('\begin{bmatrix}');
    for i=1:1:size(M,1)
        s = ' ';
        for j=1:1:size(M,2)-1
            s = [s sprintf('%5.3f &',M(i,j))];
        end
        s=[s sprintf('%.3f\\\\',M(i,size(M,2)))];
        disp(s);
    end
     disp('\end{bmatrix}');
    disp('\end{equation}');
end

