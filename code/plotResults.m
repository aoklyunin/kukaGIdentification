clear all;
close all;
load('../workspace/hatG.mat');

for i=1:1:4
    myplot([T(:,i+1) hatT(:,i) T(:,i+1)-hatT(:,i)],{sprintf('$\\tau_%d~$',i+1),sprintf('$\\hat{\\tau}_%d~$',i+1),sprintf('$e_%d~$',i+1)}, sprintf('..\\imgs\\tau%d.jpg',i+1),'northwest','Without Friction');
end

for i=1:1:4
    myplot([T(:,i+1) hatTf(:,i) T(:,i+1)-hatTf(:,i)],{sprintf('$\\tau_%d~$',i+1),sprintf('$\\hat{\\tau}_%d~$',i+1),sprintf('$e_%d~$',i+1)}, sprintf('..\\imgs\\tau%d_f.jpg',i+1),'northwest','Const Friction');
end


for i=1:1:4
    myplot([T(:,i+1) hatTfi(:,i) T(:,i+1)-hatTfi(:,i)],{sprintf('$\\tau_%d~$',i+1),sprintf('$\\hat{\\tau}_%d~$',i+1),sprintf('$e_%d~$',i+1)}, sprintf('..\\imgs\\tau%d_fi.jpg',i+1),'northwest','Identificated Friction');
end