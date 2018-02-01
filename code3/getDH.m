%Решенеи прямой задачи кинематики для модифицированных ДХ параметров
function T = getDH(Th, Al, A, D)
                  T = [cos(Th),        -sin(Th),               0,         A;
                        sin(Th)*cos(Al), cos(Th)*cos(Al), -sin(Al), -D*sin(Al);
                        sin(Th)*sin(Al), cos(Th)*sin(Al),  cos(Al),  D*cos(Al);
                                      0,               0,        0,          1];
              
end