function borderedImg = addBorderFunction (inputImg)
%This function takes a uint8 matrix "inputImg" and outputs a uint8 matrix
%"borderedImg." This function adds a border of zeroes to a matrix by
%constructing a zero matrix of a size two greater than the original matrix
%and placing the original matrix into the zeros matrix.

    [xmax, ymax] = size(inputImg);
    borderedImg = zeros((xmax+2), (ymax+2), 3);
    borderedImg((2:(xmax+1)),(2:(ymax+1))) = inputImg;
end

