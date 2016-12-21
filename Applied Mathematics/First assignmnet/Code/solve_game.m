function [sol_vec]=solve_game(b)
I=eye(5);
B=[1 1 0 0 0; 1 1 1 0 0; 0 1 1 1 0; 0 0 1 1 1; 0 0 0 1 1];
O=zeros(5);
A=[B I O O O;I B I O O; O I B I O; O O I B I; O O O I B];
R=g2rref([A b]);
Particular_sol=R(:,26);
special_sol1=[R(1:23,24) ;1 ; 0];
special_sol2=[R(1:23,25) ;0 ;1];
sol1=Particular_sol;
sol2=mod(Particular_sol+special_sol1,2);
sol3=mod(Particular_sol+special_sol2,2);
sol4=mod(Particular_sol+special_sol1+special_sol2,2);
[m,i]=min([sum(sol1),sum(sol2),sum(sol3),sum(sol4)]);            % Finding the best solution
if(i==1)
    sol_vec=sol1;
elseif (i==2)
    sol_vec=sol2;
elseif (i==3)
    sol_vec=sol3;
elseif (i==4)
    sol_vec=sol4;
end
