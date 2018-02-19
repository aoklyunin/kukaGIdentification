clear all;
close all;
load('../workspace/hatG.mat');
load('../workspace/Conf.mat');

if flgPlot
    for i=1:1:4
        f_my_plot([T(:,i+1) hatT(:,i) T(:,i+1)-hatT(:,i)],{sprintf('$\\tau_%d~$',i+1),sprintf('$\\hat{\\tau}_%d~$',i+1),sprintf('$e_%d~$',i+1)}, sprintf('..\\imgs\\identificated\\sr_%d_trapezidal_tau_%d.jpg',stdRange*100,i+1),'northwest',sprintf('Trapezial Friction | Std range: %.2f | ConfigurationCnt %d | STD: %.2f',stdRange,size(T,1),std( T(:,i+1)-hatT(:,i))));
    end

    for i=1:1:4
        f_my_plot([T(:,i+1) hatTFi(:,i) T(:,i+1)-hatTFi(:,i)],{sprintf('$\\tau_%d~$',i+1),sprintf('$\\hat{\\tau}_%d~$',i+1),sprintf('$e_%d~$',i+1)}, sprintf('..\\imgs\\identificated\\sr_%d_online_tau_%d.jpg',stdRange*100,i+1),'northwest',sprintf('Online Friction | Std range: %.2f | ConfigurationCnt %d | STD: %.2f',stdRange,size(T,1),std( T(:,i+1)-hatT(:,i))));
    end
    close all;
end;