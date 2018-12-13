%This function controls the entirety of the blurring for this project. This
%function takes two inputs: inputImage, an image file that is to be
%blurred, and blurAmount, the amount of blur to apply to the image. This
%function has one output: blurredImage, the new image with the blur
%applied.
function [blurredImage] = blurRunner(inputImage, blurAmount)

    imageMatrix = imread(inputImage);
    
    %Will be size for all matrices
    [x, y, z] = size(imageMatrix);
    
    blurAmount = floor(blurAmount*x);
    
    %New matrix has size such that the index will never be out of bounds
    borderedMatrix = uint8(zeros(x+2*blurAmount,y+2*blurAmount,3));
    borderedMatrix(blurAmount+1:x+blurAmount,blurAmount+1:y+blurAmount,1) = imageMatrix(:,:,1);
    borderedMatrix(blurAmount+1:x+blurAmount,blurAmount+1:y+blurAmount,2) = imageMatrix(:,:,2);
    borderedMatrix(blurAmount+1:x+blurAmount,blurAmount+1:y+blurAmount,3) = imageMatrix(:,:,3);
    
    for i = blurAmount+1:blurAmount+x
        disp("I'm working on" + i)
        for j = blurAmount+1:blurAmount+y
            %Submatrix whose pixels will be averaged for blur function
            subMatrix = borderedMatrix(i-blurAmount:i+blurAmount,j-blurAmount:j+blurAmount,:);
            %mean2 is built-in command to sum all entries of a matrix.
            borderedMatrix(i,j,1) = mean2(subMatrix(:,:,1));
            borderedMatrix(i,j,2) = mean2(subMatrix(:,:,2));
            borderedMatrix(i,j,3) = mean2(subMatrix(:,:,3));
        end
    end     
    imshow(borderedMatrix);
end