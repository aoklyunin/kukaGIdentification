%Решенеи прямой задачи кинематики для модифицированных ДХ параметров
function T = getDH(Th, Al, A, D)
    if Al==pi/2||Al==-pi/2
        ca = 0;
    else
        ca = cos(Al);
    end
    if Al==pi||Al==-pi
        sa = 0;
    else
        sa = sin(Al);
    end
    
     if Th==pi/2||Th==-pi/2
        ct = 0;
    else
        ct = cos(Th);
    end
    
         T = [ct, -sin(Th)*ca,  sin(Th)*sa, A*ct;
                       sin(Th),  ct*ca, -ct*sa, A*sin(Th);
                       0.0,      sa,          ca,         D;
                       0.0,      0.0,              0.0,             1.0      ];
              
end