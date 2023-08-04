function [inputs2] = getDagNNBatch(~, batch,noiselevel)
global CurTask;
imdb=[];
label      = imdb.labels(:,:,:,batch);
label      = data_augmentation(label,randi(8));
  my_image = label;
% allocate space for new image
            image_th = uint8(zeros(size(my_image)));
% loop for possible pixel change (0-255) 
%for x=1:255 
            for x=125 %initialise change in pixel value for x =155
                pixel=my_image(:,:);
                pixel=pixel+x;
          % check pixel value and assign new value
                if pixel>255
              %pixel=min(pixel,x);
                 pixel = pixel -x;
                else
                    pixel = pixel;
                end
          % save new pixel value in thresholded image
          image_th(:,:)=pixel;
         
          B=mat2gray(image_th)*255;
          %disp(B);
          A= single(B);
            end