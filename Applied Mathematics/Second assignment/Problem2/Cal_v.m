function [v]=Cal_v(Q)     % function to calculate the eigenvector corresponding to the eigenvale 1 of any Markov matrix
s=size(Q);
w=rand(s(2),1);
w=w./sum(w);
error=1;
i=1;
while error>1e-04               % error condition can be adjusted as needed
    v=Q^i*w;
    error=sum(abs(v-Q^(i-1)*w));
    i=i+1;
end
