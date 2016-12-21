% Generate a markov matrix of size 10*10 and then find the eigenvalue v
% orresponding to the eigenvale 1 of a markov matrix Q
Q=Markov_m(10);
v=Cal_v(Q);

% we can check the result by multiply Q by v and the result should be
% nearly v