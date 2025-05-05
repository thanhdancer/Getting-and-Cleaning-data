# CodeBook

## Dataset Description
The dataset contains measurements of human activity recognition using smartphones. The data was collected from accelerometers and gyroscopes on the smartphone, and it includes various features related to the activities performed by subjects.
The features of the dataset extracted and transformed from the original dataset are the mean and standard deviation of the measurements. To clarify, feature names is replaced with a descriptitve name:
- Feature starting with `t` renames to `time`
- Feature starting with `f` renames to `frequency`
- Feature with `Acc` renames to `Accelerometer`
- Feature with `Gyro` renames to `Gyroscope`
- Feature with `Mag` renames to `Magnitude`
- Feature with `BodyBody` renames to `Body`
- Feature with `mean` renames to `Mean`
- Feature with `std` renames to `Std`
- Feature with `-` renames to `_`
- Remove `()` from feature names
- Feature with `angle` renames to `Angle`
- Feature with `gravity` renames to `Gravity`

The dataset also prepends the `subject` and `activity` columns to the feature columns.

### Variables

|Variable Name | Data Type | Description |
|--------------|-----------|-------------|
| subject | numeric | Identifier for the subject performing the activity (1-30) |
| activity | categorical | Activity performed by the subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) |
| timeBodyAccelerometer_Mean_X | numeric | Mean of the X-axis acceleration from the body accelerometer |
| timeBodyAccelerometer_Mean_Y | numeric | Mean of the Y-axis acceleration from the body accelerometer |
| timeBodyAccelerometer_Mean_Z | numeric | Mean of the Z-axis acceleration from the body accelerometer |
| timeBodyAccelerometer_Std_X | numeric | Standard deviation of the X-axis acceleration from the body accelerometer |
| timeBodyAccelerometer_Std_Y | numeric | Standard deviation of the Y-axis acceleration from the body accelerometer |
| timeBodyAccelerometer_Std_Z | numeric | Standard deviation of the Z-axis acceleration from the body accelerometer |
| timeGravityAccelerometer_Mean_X | numeric | Mean of the X-axis acceleration from the gravity accelerometer |
| timeGravityAccelerometer_Mean_Y | numeric | Mean of the Y-axis acceleration from the gravity accelerometer |
| timeGravityAccelerometer_Mean_Z | numeric | Mean of the Z-axis acceleration from the gravity accelerometer |
| timeGravityAccelerometer_Std_X | numeric | Standard deviation of the X-axis acceleration from the gravity accelerometer |
| timeGravityAccelerometer_Std_Y | numeric | Standard deviation of the Y-axis acceleration from the gravity accelerometer |
| timeBodyAccelerometerJerk_Mean_X | numeric | Mean of the X-axis acceleration from the body accelerometer jerk |
| timeBodyAccelerometerJerk_Mean_Y | numeric | Mean of the Y-axis acceleration from the body accelerometer jerk |
| timeBodyAccelerometerJerk_Mean_Z | numeric | Mean of the Z-axis acceleration from the body accelerometer jerk |
| timeBodyAccelerometerJerk_Std_X | numeric | Standard deviation of the X-axis acceleration from the body accelerometer jerk |
| timeBodyAccelerometerJerk_Std_Y | numeric | Standard deviation of the Y-axis acceleration from the body accelerometer jerk |
| timeBodyAccelerometerJerk_Std_Z | numeric | Standard deviation of the Z-axis acceleration from the body accelerometer jerk |
| timeBodyGyroscope_Mean_X | numeric | Mean of the X-axis angular velocity from the body gyroscope |
| timeBodyGyroscope_Mean_Y | numeric | Mean of the Y-axis angular velocity from the body gyroscope |
| timeBodyGyroscope_Mean_Z | numeric | Mean of the Z-axis angular velocity from the body gyroscope |
| timeBodyGyroscope_Std_X | numeric | Standard deviation of the X-axis angular velocity from the body gyroscope |
| timeBodyGyroscope_Std_Y | numeric | Standard deviation of the Y-axis angular velocity from the body gyroscope |
| timeBodyGyroscope_Std_Z | numeric | Standard deviation of the Z-axis angular velocity from the body gyroscope |
| timeBodyGyroscopeJerk_Mean_X | numeric | Mean of the X-axis angular velocity from the body gyroscope jerk |
| timeBodyGyroscopeJerk_Mean_Y | numeric | Mean of the Y-axis angular velocity from the body gyroscope jerk |
| timeBodyGyroscopeJerk_Mean_Z | numeric | Mean of the Z-axis angular velocity from the body gyroscope jerk |
| timeBodyGyroscopeJerk_Std_X | numeric | Standard deviation of the X-axis angular velocity from the body gyroscope jerk |
| timeBodyGyroscopeJerk_Std_Y | numeric | Standard deviation of the Y-axis angular velocity from the body gyroscope jerk |
| timeBodyGyroscopeJerk_Std_Z | numeric | Standard deviation of the X-axis angular velocity from the body gyroscope jerk |
| timeBodyAccelerometerMagnitude_Mean | numeric | Mean of the magnitude of the body accelerometer |
| timeBodyAccelerometerMagnitude_Std | numeric | Standard deviation of the magnitude of the body accelerometer |
| timeGravityAccelerometerMagnitude_Mean | numeric | Mean of the magnitude of the gravity accelerometer |
| timeGravityAccelerometerMagnitude_Std | numeric | Standard deviation of the magnitude of the gravity accelerometer |
| timeBodyAccelerometerJerkMagnitude_Mean | numeric | Mean of the magnitude of the body accelerometer jerk |
| timeBodyAccelerometerJerkMagnitude_Std | numeric | Standard deviation of the magnitude of the body accelerometer jerk |
| timeBodyGyroscopeMagnitude_Mean | numeric | Mean of the magnitude of the body gyroscope |
| timeBodyGyroscopeMagnitude_Std | numeric | Standard deviation of the magnitude of the body gyroscope |
| timeBodyGyroscopeJerkMagnitude_Mean | numeric | Mean of the magnitude of the body gyroscope jerk |
| timeBodyGyroscopeJerkMagnitude_Std | numeric | Standard deviation of the magnitude of the body gyroscope jerk |
| frequencyBodyAccelerometer_Mean_X | numeric | Mean of the X-axis acceleration from the body accelerometer in frequency domain |
| frequencyBodyAccelerometer_Mean_Y | numeric | Mean of the Y-axis acceleration from the body accelerometer in frequency domain |
| frequencyBodyAccelerometer_Mean_Z | numeric | Mean of the Z-axis acceleration from the body accelerometer in frequency domain |
| frequencyBodyAccelerometer_Std_X | numeric | Standard deviation of the X-axis acceleration from the body accelerometer in frequency domain |
| frequencyBodyAccelerometer_Std_Y | numeric | Standard deviation of the Y-axis acceleration from the body accelerometer in frequency domain |
| frequencyBodyAccelerometer_Std_Z | numeric | Standard deviation of the Z-axis acceleration from the body accelerometer in frequency domain |
| frequencyBodyAccelerometerJerk_Mean_X | numeric | Mean of the X-axis acceleration from the body accelerometer jerk in frequency domain |
| frequencyBodyAccelerometerJerk_Mean_Y | numeric | Mean of the Y-axis acceleration from the body accelerometer jerk in frequency domain |
| frequencyBodyAccelerometerJerk_Mean_Z | numeric | Mean of the Z-axis acceleration from the body accelerometer jerk in frequency domain |
| frequencyBodyAccelerometerJerk_Std_X | numeric | Standard deviation of the X-axis acceleration from the body accelerometer jerk in frequency domain |
| frequencyBodyAccelerometerJerk_Std_Y | numeric | Standard deviation of the Y-axis acceleration from the body accelerometer jerk in frequency domain |
| frequencyBodyAccelerometerJerk_Std_Z | numeric | Standard deviation of the Z-axis acceleration from the body accelerometer jerk in frequency domain |
| frequencyBodyGyroscope_Mean_X | numeric | Mean of the X-axis angular velocity from the body gyroscope in frequency domain |
| frequencyBodyGyroscope_Mean_Y | numeric | Mean of the Y-axis angular velocity from the body gyroscope in frequency domain |
| frequencyBodyGyroscope_Mean_Z | numeric | Mean of the Z-axis angular velocity from the body gyroscope in frequency domain |
| frequencyBodyGyroscope_Std_X | numeric | Standard deviation of the X-axis angular velocity from the body gyroscope in frequency domain |
| frequencyBodyGyroscope_Std_Y | numeric | Standard deviation of the Y-axis angular velocity from the body gyroscope in frequency domain |
| frequencyBodyGyroscope_Std_Z | numeric | Standard deviation of the Z-axis angular velocity from the body gyroscope in frequency domain |
| frequencyBodyAccelerometerMagnitude_Mean | numeric | Mean of the magnitude of the body accelerometer in frequency domain |
| frequencyBodyAccelerometerMagnitude_Std | numeric | Standard deviation of the magnitude of the body accelerometer in frequency domain |
| frequencyBodyAccelerometerJerkMagnitude_Mean | numeric | Mean of the magnitude of the body accelerometer jerk in frequency domain |
| frequencyBodyAccelerometerJerkMagnitude_Std | numeric | Standard deviation of the magnitude of the body accelerometer jerk in frequency domain |
| frequencyBodyGyroscopeMagnitude_Mean | numeric | Mean of the magnitude of the body gyroscope in frequency domain |
| frequencyBodyGyroscopeMagnitude_Std | numeric | Standard deviation of the magnitude of the body gyroscope in frequency domain |
| frequencyBodyGyroscopeJerkMagnitude_Mean | numeric | Mean of the magnitude of the body gyroscope jerk in frequency domain |
| frequencyBodyGyroscopeJerkMagnitude_Std | numeric | Standard deviation of the magnitude of the body gyroscope jerk in frequency domain | 
