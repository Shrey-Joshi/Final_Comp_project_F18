function blurredMatrix = blurCallLoop (borderedMatrix, blurAmount)
%This function takes a uint8 matrix "borderedMatrix" and an integer
%"blurAmount." A nested for loop runs through the borderedMatrix and
%creates a submatrix that is to be blurred using the blurFunction

    i = 1;
    j = 1;
    while i <= (xmax+(2*blurAmount))
        while j <= (ymax+(2*blurAmount))
            blurInputMatrix = borderedMatrix([(i-blurAmount):(i+blurAmount);(j-blurAmount):(j+blurAmount)]);
            blurredMatrix(i,j) = blurFunction(blurInputMatrix);
        end
    end
end