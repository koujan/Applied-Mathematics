function [ Img ] = Normalization(direc)
mkdir(direc,'Normalized_images');
list_jpg=dir(strcat(direc,'*.jpg'));
Fave=[13 20;50 20;34 34;16 50;48 50];
h=waitbar(0,'please wait...');
set(h, 'WindowStyle','modal', 'CloseRequestFcn','');
for counter=1:length(list_jpg)
    h=waitbar(counter/length(list_jpg),h);
    list_jpg(counter).name
    img=imread(strcat(direc,'\',list_jpg(counter).name));
    img = rgb2gray(img);
    Img = uint8(zeros(64, 64));
    file=strrep(list_jpg(counter).name,'.jpg','.txt');
    Fi=textread(strcat(direc,'\',file));
    [A,b] = calculate_AB(Fi, Fave);
      for i=1:64
          for j=1:64       
              % solve the equation xy64 = A*xy + b to obtain the pixel 
              %positions in the bigger image
              xy = (pinv(A)*( [ i; j ] - b ));

              % extract the x and y coordinate 
              x240 = int32(xy(1,:));
              y320 = int32(xy(2,:));

              % Although very rare, these values can fall down to negative values. So if it
              % happens, just make it zero. One pixel won't make a huge difference.
              if(x240 <= 0)
                  x240 = 1;
              end

              if(y320 <= 0)
                  y320 = 1;
              end

              if(x240 > 240)
                  x240 = 240;
              end

              if(y320 >320)
                  y320 = 320;
              end
              % copy the value of the pixel in the bigger image to the
              % normalized image
              Img(i,j) = uint8(img(y320,x240));
          end

       end

      %Img=Img';
      %[pathstr,name,ext] = fileparts(direc);
      imDir=strcat(direc,'\Normalized_images\',list_jpg(counter).name)
      Img=imrotate(Img,-90);
      imwrite(Img,imDir);
    end
    
    delete(h);
end


