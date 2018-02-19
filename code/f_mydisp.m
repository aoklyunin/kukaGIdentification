function mydisp(var,val)
disp('\begin{equation}');
disp('\small{');
disp(var);
try
    disp(latex(simplify(val)));
catch
     disp(val);
end
disp('}\end{equation}');
end

