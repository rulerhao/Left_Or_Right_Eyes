load netTransfer.mat;

Images_Dir = dir('MP4\L\*.jpg');
length(Images_Dir);
for i = 1:length(Images_Dir);
    Image = imread(['MP4\L\',Images_Dir(i).name]);
    Image = rgb2gray(Image);
    Image = imresize(Image,[120 160]);
    predictedLabels(i) = classify(netTransfer,Image);
end