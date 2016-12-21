function [A,b] = calculate_AB(Fi, Fpre)
    AB = pinv([Fi, [1;1;1;1;1]])*Fpre;
    A = AB(1:2,:)';
    b = AB(3,:)';
end