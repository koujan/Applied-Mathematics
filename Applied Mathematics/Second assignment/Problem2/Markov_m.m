function [Q]=Markov_m(size)    % function to generate a Markov matrix of any size
if(size<2)
    error('the size should be greater than two');
end
Q=rand(size,size);
s=sum(Q);
for i=1:size;
    Q(:,i)=Q(:,i)./s(i);
end