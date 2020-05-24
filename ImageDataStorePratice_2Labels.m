a = randperm(10000);

MainFile = dir();
MainFileDir = MainFile.folder;              %�]�w��Ƨ���l���|

LPath = [MainFileDir,'\Cartesian2\L\'];     %�������|
RPath = [MainFileDir,'\Cartesian2\R\'];     %�k�����|

FindLJpg = [LPath,'*jpg'];                  %�������|+*jpg
FindRJpg = [RPath,'*jpg'];                  %�k�����|+*jpg

LJpg = dir(FindLJpg);                       %�����Ϥ����
for i = 1 : size(LJpg,1)
    LPicName{i} = LJpg(i).name;             %����Ū���ɦW
end

for i = 1 : size(LJpg,1) - 5000
    LTrainPicLocate{i} = ['Cartesian2\L\',LPicName{a(i)}];             %�����V�mŪ��
end

RJpg = dir(FindRJpg);                       %�k���Ϥ����
for i = 1 : size(RJpg,1)
    RPicName{i} = RJpg(i).name;             %�k��Ū���ɦW
end

for i = 1 : size(RJpg,1) - 5000
    RTrainPicLocate{i} = ['Cartesian2\R\',RPicName{a(i)}];             %�k���V�mŪ��
end

PicTrainLocate = [LTrainPicLocate,RTrainPicLocate];

TrainIDS = imageDatastore(PicTrainLocate,'LabelSource','foldernames');

for i = size(LJpg,1) - 5000 + 1 : size(LJpg,1)
    LPredictPicLocate{i - (size(LJpg,1) - 5000)} = ['Cartesian2\L\',LPicName{a(i - (size(LJpg,1) - 5000))}];             %�����w��Ū��
end

for i = size(LJpg,1) - 5000 + 1 : size(RJpg,1)
    RPredictPicLocate{i - (size(RJpg,1) - 5000)} = ['Cartesian2\R\',RPicName{a(i - (size(LJpg,1) - 5000))}];             %�k���w��Ū��
end

PicPredictLocate = [LPredictPicLocate,RPredictPicLocate];

PredictIDS = imageDatastore(PicPredictLocate,'LabelSource','foldernames');

