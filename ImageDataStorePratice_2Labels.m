a = randperm(10000);

MainFile = dir();
MainFileDir = MainFile.folder;              %設定資料夾初始路徑

LPath = [MainFileDir,'\Cartesian2\L\'];     %左眼路徑
RPath = [MainFileDir,'\Cartesian2\R\'];     %右眼路徑

FindLJpg = [LPath,'*jpg'];                  %左眼路徑+*jpg
FindRJpg = [RPath,'*jpg'];                  %右眼路徑+*jpg

LJpg = dir(FindLJpg);                       %左眼圖片資料
for i = 1 : size(LJpg,1)
    LPicName{i} = LJpg(i).name;             %左眼讀取檔名
end

for i = 1 : size(LJpg,1) - 5000
    LTrainPicLocate{i} = ['Cartesian2\L\',LPicName{a(i)}];             %左眼訓練讀取
end

RJpg = dir(FindRJpg);                       %右眼圖片資料
for i = 1 : size(RJpg,1)
    RPicName{i} = RJpg(i).name;             %右眼讀取檔名
end

for i = 1 : size(RJpg,1) - 5000
    RTrainPicLocate{i} = ['Cartesian2\R\',RPicName{a(i)}];             %右眼訓練讀取
end

PicTrainLocate = [LTrainPicLocate,RTrainPicLocate];

TrainIDS = imageDatastore(PicTrainLocate,'LabelSource','foldernames');

for i = size(LJpg,1) - 5000 + 1 : size(LJpg,1)
    LPredictPicLocate{i - (size(LJpg,1) - 5000)} = ['Cartesian2\L\',LPicName{a(i - (size(LJpg,1) - 5000))}];             %左眼預測讀取
end

for i = size(LJpg,1) - 5000 + 1 : size(RJpg,1)
    RPredictPicLocate{i - (size(RJpg,1) - 5000)} = ['Cartesian2\R\',RPicName{a(i - (size(LJpg,1) - 5000))}];             %右眼預測讀取
end

PicPredictLocate = [LPredictPicLocate,RPredictPicLocate];

PredictIDS = imageDatastore(PicPredictLocate,'LabelSource','foldernames');

