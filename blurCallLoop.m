function blurredMatrix = blurCallLoop (blurInputMatrix, blurAmount)

    while i <= (xmax+2)
        while j <= (ymax+2)
            blurInputMatrix = borderedImg((i-1):(i+1);(j-1):(j+1));
            blurredMatrix = blurFunction(blurInputMatrix)
        end
    end
end