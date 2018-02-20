load('../workspace/Conf.mat');
load('../workspace/hatTheta.mat');
F = [F1;F2;F3;F4;F5];
f = fopen(sprintf('..//results//sr_%d_theta.txt',stdRange*100),'w');

fprintf(f,'\\begin{center}\\begin{tabular}{|c|c|c|}\\hline ');
fprintf(f,'Trapezidal Friction & Online Friction & F constants\\\\\\hline ');
for i=1:1:size(thetaFi)
    if i<=size(theta,1)
        fprintf(f,'%5.3f &',theta(i));
    else
        fprintf(f,'-&');
    end;
    fprintf(f,'%5.3f &',thetaFi(i));
    if i>size(theta)
        fprintf(f,'%5.3f',F(i-size(theta,1)));
    else
        fprintf(f,'-');
    end
    fprintf(f,'\\\\\\hline ');
end
fprintf(f,'\\end{tabular}\\end{center}');
    
fclose(f);