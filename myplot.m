function myplot( my,legendY,pathname,position ,tl)

f = figure();  
plot(my,'LineWidth',2);
title(tl);
%xlabel('ñ.');
legend_handle = legend(legendY,'Interpreter','latex','Location',position);
legend_handle.FontSize = 16;
set(legend_handle);
grid on;
saveas(f,pathname);

end

