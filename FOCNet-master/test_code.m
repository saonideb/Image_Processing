function [A] = test_code(label)
%{
my_image = imread(label);
%imshow(my_image);(:,:,1)
my_image = label;
% allocate space for new image
image_th = uint8(zeros(size(my_image)));
% loop for possible pixel change (0-255) 
%for x=1:255 
x=125 %initialise change in pixel value for x =155
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
%end
%}
A=label;

if(A>255)
    A=min(A,125);
A(A<255)=A;

end