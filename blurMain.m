function [blurredMatrix] = blurMain(inputImg, blurAmount)
    %gui input: if light blur then 1 heavy then 2
    [xmax, ymax] = size(inputImg);
    for i = (1:blurAmount)
        borderedMatrix = addBorderFunction(inputImg, xmax, ymax);
    end
    blurredMatrix = blurCallLoop(borderedMatrix, blurAmount);
end