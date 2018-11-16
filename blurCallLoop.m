function blurredMatrix = blurCallLoop (borderedMatrix, blurAmount)
    i = 1;
    j = 1;
    while i <= (xmax+(2*blurAmount))
        while j <= (ymax+(2*blurAmount))
            blurInputMatrix = borderedMatrix((i-blurAmount):(i+blurAmount);(j-blurAmount):(j+blurAmount));
            blurredMatrix(i,j) = blurFunction(blurInputMatrix);
        end
    end
end