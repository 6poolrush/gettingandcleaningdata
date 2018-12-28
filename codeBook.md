CODEBOOK

Coursera course "Getting and Cleaning Data"

By: Jeremy N.



DATASET						Description										Type

complete_sets					This is the merged set, containing the TEST and the TRAINING set.
						You will find the subject ID, the activity ID and its label, as well 
						as all of the MEANS and the STANDARD DEVIATION of all captured features.		Data frame
						
summary_means					This is an aggregate data set, that groups by Subject ID + Activity, and that performs	Data frame
						the average of all columns, per this grouping. Since we have 30 subjects, and
						6 activities, that yields a total of 180 observations.
		
COLUMNS		
subject.id					The ID (integer, 1-30) of the subject that did the experiment. Total of 30 subjects.	Integer
activity.id					The ID (integer, 1-6) of the physical activity. 1=Walking, 2=Walking upstairs, 
						3=Walking downstairs, 4=Sitting, 5=Standing, 6=Laying					Integer
activity.label					The label (char) of the activity. Example: WALKING, SITTING				Char
angle.tBodyAccJerkMeangravityMean.		Mean of the angle of the body acceleration jerk (accelerometer)				Numerical
angle.tBodyAccMean.gravity.			Mean of the angle of the body acceleration (accelerometer)				Numerical
angle.tBodyGyroJerkMean.gravityMean.		Mean of the angle of the body acceleration jerk (gyroscope)				Numerical
angle.tBodyGyroMean.gravityMean.		Mean of the angle of body gravity measure by gyroscope					Numerical
angle.X.gravityMean.				Mean of the angle of gravity on X plane							Numerical
angle.Y.gravityMean.				Mean of the angle of gravity on Y plane							Numerical
angle.Z.gravityMean.				Mean of the angle of gravity on Z plane							Numerical
frequencyBodyAcc.mean.X				The mean on the X plane, of the frequency of the body acceleration (numerical)		Numerical
frequencyBodyAcc.mean.Y				The mean on the Y plane, of the frequency of the body acceleration (numerical)		Numerical
frequencyBodyAcc.mean.Z				The mean on the Z plane, of the frequency of the body acceleration (numerical)		Numerical
frequencyBodyAcc.meanFreq.X			Mean of frequency body acceleration on X plane						Numerical
frequencyBodyAcc.meanFreq.Y			Mean of frequency body acceleration on Y plane						Numerical
frequencyBodyAcc.meanFreq.Z			Mean of frequency body acceleration on Z plane						Numerical
frequencyBodyAcc.standarddeviation.X		Standard deviation of frequency of body acceleration on X plane				Numerical
frequencyBodyAcc.standarddeviation.Y		Standard deviation of frequency of body acceleration on Y plane				Numerical
frequencyBodyAcc.standarddeviation.Z		Standard deviation of frequency of body acceleration on Z plane				Numerical
frequencyBodyAccJerk.mean.X			Mean of the frequency body acceleration jerk on X plane					Numerical
frequencyBodyAccJerk.mean.Y			Mean of the frequency body acceleration jerk on Y plane					Numerical
frequencyBodyAccJerk.mean.Z			Mean of the frequency body acceleration jerk on Z plane					Numerical
frequencyBodyAccJerk.meanFreq.X			Mean of the frequency body acceleration jerk on X plane					Numerical
frequencyBodyAccJerk.meanFreq.Y			Mean of the frequency body acceleration jerk on Y plane					Numerical
frequencyBodyAccJerk.meanFreq.Z			Mean of the frequency body acceleration jerk on Z plane					Numerical
frequencyBodyAccJerk.standarddeviation.X	Standard deviation of the frequency body acceleration jerk on X plane			Numerical
frequencyBodyAccJerk.standarddeviation.Y	Standard deviation of the frequency body acceleration jerk on Y plane			Numerical
frequencyBodyAccJerk.standarddeviation.Z	Standard deviation of the frequency body acceleration jerk on Z plane			Numerical
frequencyBodyAccMag.mean			Mean of the frequency body acceleration magnitude					Numerical
frequencyBodyAccMag.meanFreq			Mean of the frequency body acceleration magnitude					Numerical
frequencyBodyAccMag.standarddeviation		Standard deviation of body acceleration magnitude					Numerical
frequencyBodyBodyAccJerkMag.mean		Mean of body acceleration jerk magnitude						Numerical
frequencyBodyBodyAccJerkMag.meanFreq		Mean of frequency body acceleration jerk magnitude					Numerical
frequencyBodyBodyAccJerkMag.standarddeviation	Standard deviation of body acceleration jerk magnitude					Numerical
frequencyBodyBodyGyroJerkMag.mean		Mean of body gyroscope jerk magnitude							Numerical
frequencyBodyBodyGyroJerkMag.meanFreq		Mean of frequency body gyroscope jerk magnitude						Numerical
frequencyBodyBodyGyroJerkMag.standarddeviation	Standard deviation of frequency body gyroscope jerk magnitude				Numerical
frequencyBodyBodyGyroMag.mean			Mean of body gyroscope magnitude							Numerical
frequencyBodyBodyGyroMag.meanFreq		Mean of frequency body gyroscope magnitude						Numerical
frequencyBodyBodyGyroMag.standarddeviation	Standard deviation of body gyroscope magnitude						Numerical
frequencyBodyGyro.mean.X			Mean of body gyroscope on X plane							Numerical
frequencyBodyGyro.mean.Y			Mean of body gyroscope on Y plane							Numerical
frequencyBodyGyro.mean.Z			Mean of body gyroscope on Z plane							Numerical
frequencyBodyGyro.meanFreq.X			Mean of frequency body gyroscope on X plane						Numerical
frequencyBodyGyro.meanFreq.Y			Mean of frequency body gyroscope on Y plane						Numerical
frequencyBodyGyro.meanFreq.Z			Mean of frequency body gyroscope on Z plane						Numerical
frequencyBodyGyro.standarddeviation.X		Standard deviation of body gyroscope on X plane						Numerical
frequencyBodyGyro.standarddeviation.Y		Standard deviation of body gyroscope on Y plane						Numerical
frequencyBodyGyro.standarddeviation.Z		Standard deviation of body gyroscope on Z plane						Numerical
timeBodyAcc.mean.X				Mean of time body acceleration on X plane						Numerical
timeBodyAcc.mean.Y				Mean of time body acceleration on Y plane						Numerical
timeBodyAcc.mean.Z				Mean of time body acceleration on Z plane						Numerical
timeBodyAcc.standarddeviation.X			Standard deviation of time body acceleration on X plane					Numerical
timeBodyAcc.standarddeviation.Y			Standard deviation of time body acceleration on Y plane					Numerical
timeBodyAcc.standarddeviation.Z			Standard deviation of time body acceleration on Z plane					Numerical
timeBodyAccJerk.mean.X				Mean of time body acceleration jerk on X plane						Numerical
timeBodyAccJerk.mean.Y				Mean of time body acceleration jerk on Y plane						Numerical
timeBodyAccJerk.mean.Z				Mean of time body acceleration jerk on Z plane						Numerical
timeBodyAccJerk.standarddeviation.X		Standard deviation of time body acceleration jerk on X plane				Numerical
timeBodyAccJerk.standarddeviation.Y		Standard deviation of time body acceleration jerk on Y plane				Numerical
timeBodyAccJerk.standarddeviation.Z		Standard deviation of time body acceleration jerk on Z plane				Numerical
timeBodyAccJerkMag.mean				Mean of body acceleration jerk magnitude						Numerical
timeBodyAccJerkMag.standarddeviation		Standard deviation of body acceleration jerk magnitude					Numerical
timeBodyAccMag.mean				Mean of body acceleration magnitude							Numerical
timeBodyAccMag.standarddeviation		Standard deviation of body acceleration magnitude					Numerical
timeBodyGyro.mean.X				Mean of body gyroscope on X plane							Numerical
timeBodyGyro.mean.Y				Mean of body gyroscope on Y plane							Numerical
timeBodyGyro.mean.Z				Mean of body gyroscope on Z plane							Numerical
timeBodyGyro.standarddeviation.X		Standard deviation of body gyroscope on X plane						Numerical
timeBodyGyro.standarddeviation.Y		Standard deviation of body gyroscope on Y plane						Numerical
timeBodyGyro.standarddeviation.Z		Standard deviation of body gyroscope on Z plane						Numerical
timeBodyGyroJerk.mean.X				Mean of body gyroscope jerk on X plane							Numerical
timeBodyGyroJerk.mean.Y				Mean of body gyroscope jerk on Y plane							Numerical
timeBodyGyroJerk.mean.Z				Mean of body gyroscope jerk on Z plane							Numerical
timeBodyGyroJerk.standarddeviation.X		Standard deviation of body gyroscope jerk on X plane					Numerical
timeBodyGyroJerk.standarddeviation.Y		Standard deviation of body gyroscope jerk on Y plane					Numerical
timeBodyGyroJerk.standarddeviation.Z		Standard deviation of body gyroscope jerk on Z plane					Numerical
timeBodyGyroJerkMag.mean			Mean of body gyroscope jerk magnitude							Numerical
timeBodyGyroJerkMag.standarddeviation		Standard deviation of body gyroscope jerk magnitude					Numerical
timeBodyGyroMag.mean				Mean of body gyroscope magnitude							Numerical
timeBodyGyroMag.standarddeviation		Standard deviation of body gyroscope magnitude						Numerical
timeGravityAcc.mean.X				Mean of gravity acceleration on X plane							Numerical
timeGravityAcc.mean.Y				Mean of gravity acceleration on Y plane							Numerical
timeGravityAcc.mean.Z				Mean of gravity acceleration on Z plane							Numerical
timeGravityAcc.standarddeviation.X		Standard deviation of gravity acceleration on X plane					Numerical
timeGravityAcc.standarddeviation.Y		Standard deviation of gravity acceleration on Y plane					Numerical
timeGravityAcc.standarddeviation.Z		Standard deviation of gravity acceleration on Z plane					Numerical
timeGravityAccMag.mean				Mean of gravity acceleration magnitude							Numerical
timeGravityAccMag.standarddeviation		Standard deviation of gravity acceleration magnitude					Numerical
