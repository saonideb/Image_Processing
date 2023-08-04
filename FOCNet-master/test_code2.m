%function [A] = test_code2(label)
label = imread(im2double(imread('/Users/saonideb/Documents/MATLAB/FOCNet-master/Train_Set/1_5.jpg')));
input = label(:,:,1);
%disp(input);
% perform thresholding by logical indexing
image_thresholded = input;
image_thresholded(input>125) = 255;
image_thresholded(input<125) = 0;
A = single(image_thresholded(:,:,1));
%end