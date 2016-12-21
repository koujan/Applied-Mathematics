function [b]=Conf_generation()
I=eye(5);
B=[1 1 0 0 0; 1 1 1 0 0; 0 1 1 1 0; 0 0 1 1 1; 0 0 0 1 1];
O=zeros(5);
A=[B I O O O;I B I O O; O I B I O; O O I B I; O O O I B];
bool=0;
while bool==0
    b=round(rand(25,1));
    R=g2rref([A b]);
    if (R(24,26) ==0 && R(25,26)==0)                       % which means the system is solvable
        bool=1;
    end 
end

end