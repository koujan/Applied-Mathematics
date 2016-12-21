%% construct eigen faces
function const_eign_faces(eigenvec,label_mat)
mkdir('Eigen_faces');
s=size(eigenvec);
for i=1:s(2)
    img=eigenvec(:,i);
    img=reshape(img,[sqrt(s(1)), sqrt(s(1))]);
    imwrite(img,strcat('Eigen_faces',char(label_mat(i))));
end
end
    