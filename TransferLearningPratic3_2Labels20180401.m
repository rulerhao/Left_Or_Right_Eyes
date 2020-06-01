%ImageDataStorePratice_2Labels2;

net = alexnet;

numClasses = numel(categories(TrainIDS.Labels));

inputlayer = imageInputLayer([120 160 3],'Name','input');

layers = [ ...
    imageInputLayer([120 160 1]);
    convolution2dLayer(conv1FilterSize,conv1NumFilter,'Stride',conv1Stride,'NumChannels',1,'Padding',conv1Padding);
    reluLayer();
    maxPooling2dLayer(maxp1PoolSize,'Stride',maxp1Stride,'Padding',maxp1Padding)
    convolution2dLayer(conv2FilterSize,conv2NumFilter,'Stride',conv2Stride,'Padding',conv2Padding,'BiasLearnRateFactor',2);
    reluLayer();
    maxPooling2dLayer(maxp2PoolSize,'Stride',maxp2Stride,'Padding',maxp2Padding);
    fullyConnectedLayer(fcOutputSize,'Name','fc1');
    reluLayer();
    dropoutLayer();
    fullyConnectedLayer(numClasses,'WeightLearnRateFactor',20,'BiasLearnRateFactor',20,'Name','fc2')
    softmaxLayer()
    classificationLayer()];

options = trainingOptions('sgdm',...
    'MiniBatchSize',5,...
    'MaxEpochs',5,...
    'Verbose',true,...
    'ExecutionEnvironment','gpu',...
    'LearnRateSchedule','piecewise',...
    'LearnRateDropPeriod',1,...
    'LearnRateDropFactor',LearnRateDropFactor,...
    'InitialLearnRate',0.0001,...
    'Plots','training-progress');

netTransfer = trainNetwork(TrainIDS,layers,options);

predictedLabels = classify(netTransfer,PredictIDS);

testLabels = PredictIDS.Labels;

accuracy = sum(predictedLabels==testLabels)/numel(predictedLabels)