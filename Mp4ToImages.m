 vid=VideoReader('MP4\L\eyes_L.mp4');
 numFrames = vid.NumberOfFrames;
 n = numFrames;
 for i = 1:n
    frames = read(vid,i);
    if i < 10
        imwrite(frames,['MP4\L\Image_000' int2str(i), '.jpg']);
    elseif i < 100
        imwrite(frames,['MP4\L\Image_00' int2str(i), '.jpg']);
    elseif i < 1000
        imwrite(frames,['MP4\L\Image_0' int2str(i), '.jpg']);
    else
        imwrite(frames,['MP4\L\Image_' int2str(i), '.jpg']);
    end
 end