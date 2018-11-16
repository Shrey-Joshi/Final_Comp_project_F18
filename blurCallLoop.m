function blurredMatrix = blurCallLoop (blurInputMatrix, blurAmount)
    while i <= (xmax+(2*blurAmount))
        while j <= (ymax+(2*blurAmount))
            blurInputMatrix = borderedImg((i-blurAmount):(i+blurAmount);(j-blurAmount):(j+blurAmount));
            blurredMatrix = blurFunction(blurInputMatrix)
        end
    end
end