## Getting and Cleaning Data Project Codebook

This codebook is for the tidy datasets in both step 4 and step 5. The variable names are the same. The only difference between the datasets is that the tidy dataset created in step 4, which is called data_total in my project, contains multiple observations for each subject and activity combination whereas the tidy dataset created in step 5, which was written to a text file, only contains one record for each subject and activity combination. The second dataset was created from the first by taking the mean of the observed measurements for each combination of subject and activity.

- **subject**: number of the subject the observation is of  
column: 1  
type: integer  
value: [1:30]  

- **activity**: name of the activity the subject was performing when the observation was made  
column: 2  
type: string  
value: one of the following  
     + standing
     + sitting
     + laying
     + walking
     + walkingdownstairs
     + walkingupstairs  
  
<br>

- **meanbodyaccxtime**:  mean of body acceleration measurements by the accelerometer along the X axis in the time domain.  
column: 3  
type: numeric  
value: any value between [-1,1]

- **meanbodyaccxtime**: mean of body acceleration measurements by the accelerometer along the X axis in the time domain.  
column: 4  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccytime**: mean of body acceleration measurements by the accelerometer along the Y axis in the time domain.  
column: 5  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccztime**: mean of body acceleration measurements by the accelerometer along the Z axis in the time domain.  
column: 6  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccxtime**: standard deviation of body acceleration measurements by the accelerometer along the X axis in the time domain.  
column: 7  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccytime**: standard deviation of body acceleration measurements by the accelerometer along the Y axis in the time domain.  
column: 8  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccztime**: standard deviation of body acceleration measurements by the accelerometer along the Z axis in the time domain.  
column: 9  
type: numeric  
value: any value between [-1,1]  

- **meangravityaccxtime**: mean of gravity acceleration measurements by the accelerometer along the X axis in the time domain.  
column: 10  
type: numeric  
value: any value between [-1,1]  

- **meangravityaccytime**: mean of gravity acceleration measurements by the accelerometer along the Y axis in the time domain.  
column: 11  
type: numeric  
value: any value between [-1,1]  

- **meangravityaccztime**: mean of gravity acceleration measurements by the accelerometer along the Z axis in the time domain.  
column: 12  
type: numeric  
value: any value between [-1,1]  

- **stdgravityaccxtime**: standard deviation of gravity acceleration measurements by the accelerometer along the X axis in the time domain.  
column: 13  
type: numeric  
value: any value between [-1,1]  

- **stdgravityaccytime**: standard deviation of gravity acceleration measurements by the accelerometer along the Y axis in the time domain.  
column: 14  
type: numeric  
value: any value between [-1,1]  

- **stdgravityaccztime**: standard deviation of gravity acceleration measurements by the accelerometer along the Z axis in the time domain.  
column: 15  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccjerkxtime**: mean of body jerk measurements by the accelerometer along the X axis in the time domain.  
column: 16  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccjerkytime**: mean of body jerk measurements by the accelerometer along the Y axis in the time domain.  
column: 17  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccjerkztime**: mean of body jerk measurements by the accelerometer along the Z axis in the time domain.  
column 18  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccjerkxtime**: standard deviation of body jerk measurements by the accelerometer along the X axis in the time domain.  
column: 19  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccjerkytime**: standard deviation of body jerk measurements by the accelerometer along the Y axis in the time domain.  
column: 20  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccjerkztime**: standard deviation of body jerk measurements by the accelerometer along the Z axis in the time domain.  
column: 21
type: numeric  
value: any value between [-1,1]  

- **meanbodygyroxtime**: mean of body acceleration measurements by the gyroscope along the X axis in the time domain.  
column: 22  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyroytime**: mean of body acceleration measurements by the gyroscope along the Y axis in the time domain.  
column: 23  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyroztime**: mean of body acceleration measurements by the gyroscope along the Z axis in the time domain.  
column: 24  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyroxtime**: standard deviation of body acceleration measurements by the gyroscope along the X axis in the time domain.  
column: 25  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyroytime**: standard deviation of body acceleration measurements by the gyroscope along the Y axis in the time domain.  
column: 26  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyroztime**: standard deviation of body acceleration measurements by the gyroscope along the Z axis in the time domain.  
column: 27  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyrojerkxtime**: mean of body jerk measurements by the gyroscope along the X axis in the time domain.  
column: 28  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyrojerkytime**: mean of body jerk measurements by the gyroscope along the Y axis in the time domain.  
column: 29  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyrojerkztime**: mean of body jerk measurements by the gyroscope along the Z axis in the time domain.  
column: 30  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyrojerkxtime**: standard deviation of body jerk measurements by the gyroscope along the X axis in the time domain.  
column: 31  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyrojerkytime**: standard deviation of body jerk measurements by the gyroscope along the Y axis in the time domain.  
column: 32  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyrojerkztime**: standard deviation of body jerk measurements by the gyroscope along the Z axis in the time domain.  
column: 33  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccmagtime**: mean of magnitude of body acceleration as measurements by the accelerometer in the time domain.  
column: 34  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccmagtime**: standard deviation of magnitude of body acceleration as measurements by the accelerometer in the time domain.  
column: 35  
type: numeric  
value: any value between [-1,1]  

- **meangravityaccmagtime**: mean of magnitude of gravity acceleration as measured by the accelerometer in the time domain.  
column: 36  
type: numeric  
value: any value between [-1,1]  

- **stdgravityaccmagtime**: standard deviation of magnitude of gravity acceleration as measured by the accelerometer in the time domain.  
column: 37  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccjerkmagtime**: mean of magnitude of body jerk as measurements by the accelerometer in the time domain.  
column: 38  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccjerkmagtime**: standard deviation of magnitude of body jerk as measurements by the accelerometer in the time domain.  
column: 39  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyromagtime**: mean of magnitude of body acceleration as measurements by the gyroscope in the time domain.  
column: 40  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyromagtime**: standard deviation of magnitude of body acceleration as measurements by the gyroscope in the time domain.  
column: 41  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyrojerkmagtime**: mean of magnitude of body jerk as measurements by the gyroscope in the time domain.  
column: 42  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyrojerkmagtime**: standard deviation of magnitude of body jerk as measurements by the gyroscope in the time domain.  
column: 43  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccxfreq**: mean of body acceleration measurements by the accelerometer along the X axis in the frequency domain.  
column: 44  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccyfreq**: mean of body acceleration measurements by the accelerometer along the Y axis in the frequency domain.  
column: 45  
type: numeric  
value: any value between [-1,1]  

- **meanbodyacczfreq**: mean of body acceleration measurements by the accelerometer along the Z axis in the frequency domain.  
column: 46  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccxfreq**: standard deviation of body acceleration measurements by the accelerometer along the X axis in the frequency domain.  
column: 47  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccyfreq**: standard deviation of body acceleration measurements by the accelerometer along the Y axis in the frequency domain.  
column: 48  
type: numeric  
value: any value between [-1,1]  

- **stdbodyacczfreq**: standard deviation of body acceleration measurements by the accelerometer along the Z axis in the frequency domain.  
column: 49  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccjerkxfreq**: mean of body jerk measurements by the accelerometer along the X axis in the frequency domain.  
column: 50  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccjerkyfreq**: mean of body jerk measurements by the accelerometer along the Y axis in the frequency domain.  
column: 51  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccjerkzfreq**: mean of body jerk measurements by the accelerometer along the Z axis in the frequency domain.  
column: 52  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccjerkxfreq**: standard deviation of body jerk measurements by the accelerometer along the X axis in the frequency domain.  
column: 53  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccjerkyfreq**: standard deviation of body jerk measurements by the accelerometer along the Y axis in the frequency domain.  
column: 54  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccjerkzfreq**: standard deviation of body jerk measurements by the accelerometer along the Z axis in the frequency domain.  
column: 55  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyroxfreq**: mean of body acceleration measurements by the gyroscope along the X axis in the frequency domain.  
column: 56  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyroyfreq**: mean of body acceleration measurements by the gyroscope along the Y axis in the frequency domain.  
column: 57  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyrozfreq**: mean of body acceleration measurements by the gyroscope along the Z axis in the frequency domain.  
column: 58  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyroxfreq**: standard deviation of body acceleration measurements by the gyroscope along the X axis in the frequency domain.  
column: 59  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyroyfreq**: standard deviation of body acceleration measurements by the gyroscope along the Y axis in the frequency domain.  
column: 60  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyrozfreq**: standard deviation of body acceleration measurements by the gyroscope along the Z axis in the frequency domain.  
column: 61  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccmagfreq**: mean of magnitude of body acceleration as measurements by the accelerometer in the frequency domain.  
column: 62  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccmagfreq**: standard deviation of magnitude of body acceleration as measurements by the accelerometer in the frequency domain.  
column: 63  
type: numeric  
value: any value between [-1,1]  

- **meanbodyaccjerkmagfreq**: mean of magnitude of body jerk as measurements by the accelerometer in the frequency domain.  
column: 64  
type: numeric  
value: any value between [-1,1]  

- **stdbodyaccjerkmagfreq**: standard deviation of magnitude of body jerk as measurements by the accelerometer in the frequency domain.  
column: 65  
type: numeric  
value: any value between [-1,1]  

- **meanbodygyromagfreq**: mean of magnitude of body acceleration as measurements by the gyroscope in the frequency domain.  
column: 66  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyromagfreq**: standard deviation of magnitude of body acceleration as measurements by the gyroscope in the frequency domain.  
column: 67
type: numeric  
value: any value between [-1,1]  

- **meanbodygyrojerkmagfreq**: mean of magnitude of body jerk as measurements by the gyroscope in the frequency domain.
column: 68  
type: numeric  
value: any value between [-1,1]  

- **stdbodygyrojerkmagfreq**: standard deviation of magnitude of body jerk as measurements by the gyroscope in the frequency domain.  
column: 69  
type: numeric  
value: any value between [-1,1]  
	 