load('../workspace/Conf.mat');
load('../workspace/hatTheta.mat');

f = fopen(sprintf('..//results//sr_%d_theta.txt',stdRange*100),'w');

fprintf(f,'\\begin{equation}\\theta=\\begin{bmatrix}');
for i=1:1:size(theta)
        s = ' ';
        for j=1:1:size(theta,2)-1
            s = [s sprintf('%5.3f &',theta(i,j))];
        end
        s=[s sprintf('%.3f\\\\\\\\',theta(i,size(theta,2)))];
        fprintf(f,s);
end
fprintf(f,'\\end{bmatrix}\\end{equation}');
    
fprintf(f,'\\begin{equation}\\theta_i=\\begin{bmatrix}');
for i=1:1:size(thetaFi)
        s = ' ';
        for j=1:1:size(thetaFi,2)-1
            s = [s sprintf('%5.3f &',thetaFi(i,j))];
        end
        s=[s sprintf('%.3f\\\\\\\\',thetaFi(i,size(thetaFi,2)))];
        fprintf(f,s);
end
fprintf(f,'\\end{bmatrix}\\end{equation}');
fclose(f);