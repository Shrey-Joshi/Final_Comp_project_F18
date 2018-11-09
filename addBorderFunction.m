function borderedImg = addBorderFunction (inputImg)
    [xmax, ymax] = size(inputImg);
    borderedImg = zeros((xmax+2), (ymax+2), 3);
    borderedImg((2:(xmax+1)),(2:(ymax+1))) = inputImg;
end

