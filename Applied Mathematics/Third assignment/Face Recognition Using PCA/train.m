function [phi_i,eigenvec,label_mat]=train(FILENAME, PATHNAME)

h=waitbar(0,'please wait...');
set(h, 'WindowStyle','modal', 'CloseRequestFcn','');
FILENAME=cellstr(FILENAME);
p=length(FILENAME);   %number of training images
s=size(imread(char(strcat(PATHNAME,FILENAME(1)) ))); %size of each training image
D=zeros(p,s(1)*s(2));
for i=1:length(FILENAME)
    h=waitbar(i/length(FILENAME),h);
    img=imread(char(strcat(PATHNAME,FILENAME(i))));
    img=concat(img);
    D(i,:)=img;
end
    D_par=D-repmat(mean(D),[p,1]);
    sigma_prime=(1/(p-1))*(D_par*D_par');  % covariance matrix
    [vec,val]=eig(sigma_prime);
    eigenvec=D_par'*vec;     % O|       d*p
    
    for i=1:p                 
      eigenvec(:,i)=eigenvec(:,i)/norm(eigenvec(:,i));  %normalization of the eigenvectors in order to be orhonormal
    end
    phi_i=D*eigenvec;  %feature vectors
    label_mat=FILENAME;
    delete(h);
end