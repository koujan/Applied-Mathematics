%% calculate the covariance matrix %%inside training set
clear all
dirc=dir('*.jpg');
p=length(dirc);   %number of training images
s=64*64; %size of each training image
D=zeros(p,s);

for i=1:length(dirc)
    img=imread(dirc(i).name);
    img=concat(img);
    D(i,:)=img;
end
    D_par=D-repmat(mean(D),[p,1]);
    sigma_prime=(1/(p-1))*D_par*D_par';  % covariance matrix
    [vec,val]=eig(sigma_prime);
    eigenvec=D_par'*vec;     % O|       d*p
    
    for i=1:p
       eigenvec(:,i)=eigenvec(:,i)/norm(eigenvec(:,i));
    end
    phi_i=D*eigenvec;  %feature vectors
    
    test=imread('C:\Users\Mohammad\Documents\MATLAB\PCA(face Reg)\test_for_build\test_set\Girum_5.jpg');
    test=concat(test);
    q=double(test)*eigenvec;
    %q=q-mean(q);
    dist=zeros(p,1);
    for i=1:p
        dist(i,1)= sqrt(sum( (phi_i(i,:)-q).^2 ) );
    end
    [min1,ind1]=min(dist);
    dist(ind1)=max(dist);
    [min2,ind2]=min(dist);
    dist(ind2)=max(dist);
    [min3,ind3]=min(dist);
    dirc(ind1).name
    dirc(ind2).name
    dirc(ind3).name
 
        
        
    