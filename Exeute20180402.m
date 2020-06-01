    %% 設定初始值
    ImageDataStorePratice_2Labels;
    
    conv1Stride = 1;    
    conv1FilterSize = 5;
    conv1NumFilter = 13;
    conv1Padding = 0;
    
    conv2Stride = 1;
    conv2FilterSize = 1;
    conv2NumFilter = 4;
    conv2Padding = 0;
    
    maxp1PoolSize = 1;
    maxp1Stride = 1;
    maxp1Padding = 0;
    
    maxp2PoolSize = 1;
    maxp2Stride = 1;
    maxp2Padding = 0;
    
    LearnRateDropFactor = 0.7000;
    fcOutputSize = 27;
    
    %% 開始運算
    %index = 54;
    %C1FilterSize
    %for i = 1:32
    %    fcOutputSize = i;
    %    t0 = clock;			% 記錄現在的時間
        TransferLearningPratic3_2Labels20180401;
    %    saveData20180402;
    %    index = index + 1;
    %end