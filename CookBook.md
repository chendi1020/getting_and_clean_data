#Analysis on Human Activity Recognition Using Smartphones
The raw data for this analysis can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


# Transformation:
## All the values are means, aggregated over 30 subjects and 6 activities, resulting dataset is 180 rows by 69 columns
 
##Changes in variable names
Several changes are made to the variable names to make them more readable
- 'mean()' has been replaced by 'Mean'
- 'std()' has been replaced by 'STD'
- a 't' at the first position is replaced by 'Time'
- a 'f' at the first position is replaced by 'Frequency'
- dashes ('-') are left out
- 'Acc' is written out fully as 'Accelerometer'
- 'Gyro' is written out fully as 'Gyroscope'

##Variable summary
 
  activityId                                      : chr  "1" "1" "1" "1" ...
  subjectId                                       : chr  "1" "2" "3" "4" ...
  activity                                        : Factor w/ 6 levels "LAYING","SITTING",..: 4 4 4 4 4 4 4 4 4 4 ...
  AvgTimeBodyAccelerometerMean()-X                : num  0.277 0.276 0.276 0.279 0.278 ...
  AvgTimeBodyAccelerometerMean()-Y                : num  -0.0174 -0.0186 -0.0172 -0.0148 -0.0173 ...
  AvgTimeBodyAccelerometerMean()-Z                : num  -0.111 -0.106 -0.113 -0.111 -0.108 ...
  AvgTimeBodyAccelerometerSTD()-X                 : num  -0.284 -0.424 -0.36 -0.441 -0.294 ...
  AvgTimeBodyAccelerometerSTD()-Y                 : num  0.1145 -0.0781 -0.0699 -0.0788 0.0767 ...
  AvgTimeBodyAccelerometerSTD()-Z                 : num  -0.26 -0.425 -0.387 -0.586 -0.457 ...
  AvgTimeGravityAccelerometerMean()-X             : num  0.935 0.913 0.937 0.964 0.973 ...
  AvgTimeGravityAccelerometerMean()-Y             : num  -0.2822 -0.3466 -0.262 -0.0859 -0.1004 ...
  AvgTimeGravityAccelerometerMean()-Z             : num  -0.0681 0.08473 -0.13811 0.12776 0.00248 ...
  AvgTimeGravityAccelerometerSTD()-X              : num  -0.977 -0.973 -0.978 -0.984 -0.979 ...
  AvgTimeGravityAccelerometerSTD()-Y              : num  -0.971 -0.972 -0.962 -0.968 -0.962 ...
  AvgTimeGravityAccelerometerSTD()-Z              : num  -0.948 -0.972 -0.952 -0.963 -0.965 ...
  AvgTimeBodyAccelerometerJerkMean()-X            : num  0.074 0.0618 0.0815 0.0784 0.0846 ...
  AvgTimeBodyAccelerometerJerkMean()-Y            : num  0.02827 0.01825 0.01006 0.00296 -0.01632 ...
  AvgTimeBodyAccelerometerJerkMean()-Z            : num  -4.17e-03 7.90e-03 -5.62e-03 -7.68e-04 8.32e-05 ...
  AvgTimeBodyAccelerometerJerkSTD()-X             : num  -0.114 -0.278 -0.269 -0.297 -0.303 ...
  AvgTimeBodyAccelerometerJerkSTD()-Y             : num  0.067 -0.0166 -0.045 -0.2212 -0.091 ...
  AvgTimeBodyAccelerometerJerkSTD()-Z             : num  -0.503 -0.586 -0.529 -0.751 -0.613 ...
  AvgTimeBodyGyroscopeMean()-X                    : num  -0.0418 -0.053 -0.0256 -0.0318 -0.0489 ...
  AvgTimeBodyGyroscopeMean()-Y                    : num  -0.0695 -0.0482 -0.0779 -0.0727 -0.069 ...
  AvgTimeBodyGyroscopeMean()-Z                    : num  0.0849 0.0828 0.0813 0.0806 0.0815 ...
  AvgTimeBodyGyroscopeSTD()-X                     : num  -0.474 -0.562 -0.572 -0.501 -0.491 ...
  AvgTimeBodyGyroscopeSTD()-Y                     : num  -0.0546 -0.5385 -0.5638 -0.6654 -0.5046 ...
  AvgTimeBodyGyroscopeSTD()-Z                     : num  -0.344 -0.481 -0.477 -0.663 -0.319 ...
  AvgTimeBodyGyroscopeJerkMean()-X                : num  -0.09 -0.0819 -0.0952 -0.1153 -0.0888 ...
  AvgTimeBodyGyroscopeJerkMean()-Y                : num  -0.0398 -0.0538 -0.0388 -0.0393 -0.045 ...
  AvgTimeBodyGyroscopeJerkMean()-Z                : num  -0.0461 -0.0515 -0.0504 -0.0551 -0.0483 ...
  AvgTimeBodyGyroscopeJerkSTD()-X                 : num  -0.207 -0.39 -0.386 -0.492 -0.358 ...
  AvgTimeBodyGyroscopeJerkSTD()-Y                 : num  -0.304 -0.634 -0.639 -0.807 -0.571 ...
  AvgTimeBodyGyroscopeJerkSTD()-Z                 : num  -0.404 -0.435 -0.537 -0.64 -0.158 ...
  AvgTimeBodyAccelerometerMagnitudeMean()         : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...
  AvgTimeBodyAccelerometerMagnitudeSTD()          : num  -0.22 -0.423 -0.328 -0.528 -0.377 ...
  AvgTimeGravityAccelerometerMagnitudeMean()      : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...
  AvgTimeGravityAccelerometerMagnitudeSTD()       : num  -0.22 -0.423 -0.328 -0.528 -0.377 ...
  AvgTimeBodyAccelerometerJerkMagnitudeMean()     : num  -0.141 -0.281 -0.28 -0.367 -0.288 ...
  AvgTimeBodyAccelerometerJerkMagnitudeSTD()      : num  -0.0745 -0.1642 -0.1399 -0.3169 -0.2822 ...
  AvgTimeBodyGyroscopeMagnitudeMean()             : num  -0.161 -0.447 -0.466 -0.498 -0.356 ...
  AvgTimeBodyGyroscopeMagnitudeSTD()              : num  -0.187 -0.553 -0.562 -0.553 -0.492 ...
  AvgTimeBodyGyroscopeJerkMagnitudeMean()         : num  -0.299 -0.548 -0.566 -0.681 -0.445 ...
  AvgTimeBodyGyroscopeJerkMagnitudeSTD()          : num  -0.325 -0.558 -0.567 -0.73 -0.489 ...
  AvgFrequencyBodyAccelerometerMean()-X           : num  -0.203 -0.346 -0.317 -0.427 -0.288 ...
  AvgFrequencyBodyAccelerometerMean()-Y           : num  0.08971 -0.0219 -0.0813 -0.1494 0.00946 ...
  AvgFrequencyBodyAccelerometerMean()-Z           : num  -0.332 -0.454 -0.412 -0.631 -0.49 ...
  AvgFrequencyBodyAccelerometerSTD()-X            : num  -0.319 -0.458 -0.379 -0.447 -0.298 ...
  AvgFrequencyBodyAccelerometerSTD()-Y            : num  0.056 -0.1692 -0.124 -0.1018 0.0426 ...
  AvgFrequencyBodyAccelerometerSTD()-Z            : num  -0.28 -0.455 -0.423 -0.594 -0.483 ...
  AvgFrequencyBodyAccelerometerJerkMean()-X       : num  -0.171 -0.305 -0.305 -0.359 -0.345 ...
  AvgFrequencyBodyAccelerometerJerkMean()-Y       : num  -0.0352 -0.0788 -0.1405 -0.2796 -0.1811 ...
  AvgFrequencyBodyAccelerometerJerkMean()-Z       : num  -0.469 -0.555 -0.514 -0.729 -0.59 ...
  AvgFrequencyBodyAccelerometerJerkSTD()-X        : num  -0.134 -0.314 -0.297 -0.297 -0.321 ...
  AvgFrequencyBodyAccelerometerJerkSTD()-Y        : num  0.10674 -0.01533 -0.00561 -0.2099 -0.05452 ...
  AvgFrequencyBodyAccelerometerJerkSTD()-Z        : num  -0.535 -0.616 -0.544 -0.772 -0.633 ...
  AvgFrequencyBodyGyroscopeMean()-X               : num  -0.339 -0.43 -0.438 -0.373 -0.373 ...
  AvgFrequencyBodyGyroscopeMean()-Y               : num  -0.103 -0.555 -0.562 -0.688 -0.514 ...
  AvgFrequencyBodyGyroscopeMean()-Z               : num  -0.256 -0.397 -0.418 -0.601 -0.213 ...
  AvgFrequencyBodyGyroscopeSTD()-X                : num  -0.517 -0.604 -0.615 -0.543 -0.529 ...
  AvgFrequencyBodyGyroscopeSTD()-Y                : num  -0.0335 -0.533 -0.5689 -0.6547 -0.5027 ...
  AvgFrequencyBodyGyroscopeSTD()-Z                : num  -0.437 -0.56 -0.546 -0.716 -0.42 ...
  AvgFrequencyBodyAccelerometerMagnitudeMean()    : num  -0.129 -0.324 -0.29 -0.451 -0.305 ...
  AvgFrequencyBodyAccelerometerMagnitudeSTD()     : num  -0.398 -0.577 -0.456 -0.651 -0.52 ...
  AvgFrequencyBodyAccelerometerJerkMagnitudeMean(): num  -0.0571 -0.1691 -0.1868 -0.3186 -0.2695 ...
  AvgFrequencyBodyAccelerometerJerkMagnitudeSTD() : num  -0.1035 -0.1641 -0.0899 -0.3205 -0.3057 ...
  AvgFrequencyBodyGyroscopeMagnitudeMean()        : num  -0.199 -0.531 -0.57 -0.609 -0.484 ...
  AvgFrequencyBodyGyroscopeMagnitudeSTD()         : num  -0.321 -0.652 -0.633 -0.594 -0.59 ...
  AvgFrequencyBodyGyroscopeJerkMagnitudeMean()    : num  -0.319 -0.583 -0.608 -0.724 -0.548 ...
  AvgFrequencyBodyGyroscopeJerkMagnitudeSTD()     : num  -0.382 -0.558 -0.549 -0.758 -0.456 ...