function (output) = blurMain [inputImg, blurAmount]
%gui input: if light blur then 1 heavy then 2
xmax, ymax = size(inputImg);
i = 1;
j = 1;
addBorderFunction(inputImg);
