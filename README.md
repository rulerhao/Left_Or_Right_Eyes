# Left_Or_Right_Eyes

# Database
You can get the database and trained file at (https://drive.google.com/file/d/1DICAIz6PvUvcR-7uzk36WFZqiJI2WEs0/view?usp=sharing)
What you need to do just put "Cartesian2" and "netTransfer" to your folder. And run "Exeute20180402.m"
# Layer introduction
    convolution
    reluLayer
    maxPooling
    convolution
    reluLayer
    maxPooling;
    fullyConnected
    reluLayer
    fullyConnected
    softmaxLayer
    classification
# Training progress
![Training_Progress_Image](https://github.com/rulerhao/Left_Or_Right_Eyes/blob/master/Training_Progress.png)
# Accuracy of database = 0.9964
The predict data is ramdomly choosen from each 5000 from left eyes and right eyes.
![Accuracy_Image](https://github.com/rulerhao/Left_Or_Right_Eyes/blob/master/Accuracy.png)

# Each one image for predict cost about 0.0003 s.
![Predict_Time_Image](https://github.com/rulerhao/Left_Or_Right_Eyes/blob/master/Predict_Time.png)
