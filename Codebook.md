###Code Book 

 This code book shows variable description of tidy data set derived from Human Activity Recognition Using Smartphones Dataset(see https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  
They are listed in alphabetic order.


####activity  
	description	performed activities on experiment    
	type		character  
	value		choice of the following 6 values  
			"WALKING"  
			"WALKING_UPSTAIRS"  
			"WALKING_DOWNSTAIRS"  
			"SITTING"  
			"STANDING"  
			"LAYING"   
                                          
####FrequencyDomain_AngularVelocity_in_Magnitude_mean  
	description	in frequency demain, magnitude of mean three-dimensional angular velocity signals  
	type		numeric  
	value		normalized and bounded within [-1,1]  

####FrequencyDomain_AngularVelocity_in_Magnitude_std  
	description	in frequency demain,magnitude of standard deviation three-dimensional angular velocity signals  
	type		numeric  
	value		normalized and bounded within [-1,1]  

####FrequencyDomain_BodyAcceleration_in_Magnitude_mean   
	description	in frequency demain, magnitude of mean three-dimensional body acceleration signals  
	type		numeric  
	value		normalized and bounded within [-1,1]  

####FrequencyDomain_BodyAcceleration_in_Magnitude_std
	description	in frequency demain, magnitude of standard deviation three-dimensional body acceleration signals
	type		numeric
	value		normalized and bounded within [-1,1]   
       
####FrequencyDomain_BodyAcceleration_mean_X_axis   
####FrequencyDomain_BodyAcceleration_mean_Y_axis            
####FrequencyDomain_BodyAcceleration_mean_Z_axis            
	description	in frequency demain, mean of body acceleration signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1] 

####FrequencyDomain_BodyAcceleration_std_X_axis             
####FrequencyDomain_BodyAcceleration_std_Y_axis             
####FrequencyDomain_BodyAcceleration_std_Z_axis             
	description	in frequency demain, standard deviaton of body acceleration signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1] 

####FrequencyDomain_BodyLinearAcceleration_in_Magnitude_mean
	description	in frequency demain, magnitude of mean three-dimensional body linear acceleration signals
	type		numeric
	value		normalized and bounded within [-1,1] 

####FrequencyDomain_BodyLinearAcceleration_in_Magnitude_std
	description	in frequency demain, magnitude of standard deviation three-dimensional body linear acceleration signals
	type		numeric
	value		normalized and bounded within [-1,1]
 
####FrequencyDomain_BodyLinearAcceleration_mean_X_axis      
####FrequencyDomain_BodyLinearAcceleration_mean_Y_axis      
####FrequencyDomain_BodyLinearAcceleration_mean_Z_axis      
	description	in frequency demain, mean of body linear acceleration derived in time to obtain Jerk signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1] 

####FrequencyDomain_BodyLinearAcceleration_std_X_axis       
####FrequencyDomain_BodyLinearAcceleration_std_Y_axis       
####FrequencyDomain_BodyLinearAcceleration_std_Z_axis  
	description	in frequency demain, standard deviation of body linear acceleration derived in time to obtain Jerk signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1]      

####FrequencyDomain_Gyroscope_in_Magnitude_mean
	description	in frequency demain, magnitude of mean three-dimensional Gyroscope signals
	type		numeric
	value		normalized and bounded within [-1,1]      
         
####FrequencyDomain_Gyroscope_in_Magnitude_std   
	description	in frequency demain, magnitude of standard deviation three-dimensional Gyroscope signals
	type		numeric
	value		normalized and bounded within [-1,1]             

####FrequencyDomain_Gyroscope_mean_X_axis                   
####FrequencyDomain_Gyroscope_mean_Y_axis                   
####FrequencyDomain_Gyroscope_mean_Z_axis     	
	description	in frequency demain, mean of Gyroscope signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1]               

####FrequencyDomain_Gyroscope_std_X_axis                    
####FrequencyDomain_Gyroscope_std_Y_axis                    
####FrequencyDomain_Gyroscope_std_Z_axis                    
	description	in frequency demain, standard deviation of Gyroscope signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1]    

####subject_id                                              
	description	id of subject on experiment
	type		numeric
	value		integer between 1 to 30 

####TimeDomain_AngularVelocity_in_Magnitude_mean            		
	description	magnitude of mean three-dimensional angular velocity signals 
	type		numeric
	value		normalized and bounded within [-1,1] 

####TimeDomain_AngularVelocity_in_Magnitude_std
	description	magnitude of standard deviation three-dimensional angular velocity signals 
	type		numeric
	value		normalized and bounded within [-1,1] 
             
####TimeDomain_AngularVelocity_mean_X_axis                  
####TimeDomain_AngularVelocity_mean_Y_axis                  
####TimeDomain_AngularVelocity_mean_Z_axis                  
	description	mean of angular velocity derived in time to obtain Jerk signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric	
	value		normalized and bounded within [-1,1] 

####TimeDomain_AngularVelocity_std_X_axis                   
####TimeDomain_AngularVelocity_std_Y_axis                   
####TimeDomain_AngularVelocity_std_Z_axis 
	description	standard deviation of angular velocity derived in time to obtain Jerk signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1]            

####TimeDomain_BodyAcceleration_in_Magnitude_mean    
	description	magnitude of mean three-dimensional body acceleration signals
	type		numeric
	value		normalized and bounded within [-1,1]   
     
####TimeDomain_BodyAcceleration_in_Magnitude_std
	description	magnitude of standard deviation three-dimensional body acceleration signals
	type		numeric
	value		normalized and bounded within [-1,1]   
          
####TimeDomain_BodyAcceleration_mean_X_axis                 
####TimeDomain_BodyAcceleration_mean_Y_axis                 
####TimeDomain_BodyAcceleration_mean_Z_axis 
	description	mean of body acceleration signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1] 
                
####TimeDomain_BodyAcceleration_std_X_axis                  
####TimeDomain_BodyAcceleration_std_Y_axis                  
####TimeDomain_BodyAcceleration_std_Z_axis
	description	standard deviaton of body acceleration signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1] 
                  
####TimeDomain_BodyLinearAcceleration_in_Magnitude_mean     
	description	magnitude of mean three-dimensional body linear acceleration signals
	type		numeric
	value		normalized and bounded within [-1,1] 

####TimeDomain_BodyLinearAcceleration_in_Magnitude_std 	
	description	magnitude of standard deviation three-dimensional body linear acceleration signals
	type		numeric
	value		normalized and bounded within [-1,1]
     
####TimeDomain_BodyLinearAcceleration_mean_X_axis           
####TimeDomain_BodyLinearAcceleration_mean_Y_axis           
####TimeDomain_BodyLinearAcceleration_mean_Z_axis           	
	description	mean of body linear acceleration derived in time to obtain Jerk signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1] 

####TimeDomain_BodyLinearAcceleration_std_X_axis            
####TimeDomain_BodyLinearAcceleration_std_Y_axis            
####TimeDomain_BodyLinearAcceleration_std_Z_axis            
	description	standard deviation of body linear acceleration derived in time to obtain Jerk signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1] 

####TimeDomain_GravityAcceleration_in_Magnitude_mean
	description	magnitude of mean three-dimensional body gravity acceleration signals
	type		numeric
	value		normalized and bounded within [-1,1]         
####TimeDomain_GravityAcceleration_in_Magnitude_std         
	description	magnitude of standard deviation three-dimensional body gravity acceleration signals
	type		numeric
	value		normalized and bounded within [-1,1]    

####TimeDomain_GravityAcceleration_mean_X_axis              
####TimeDomain_GravityAcceleration_mean_Y_axis              
####TimeDomain_GravityAcceleration_mean_Z_axis              
	description	mean of body gravity acceleration signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1] 

####TimeDomain_GravityAcceleration_std_X_axis               
####TimeDomain_GravityAcceleration_std_Y_axis               
####TimeDomain_GravityAcceleration_std_Z_axis 
	description	standard deviation of body gravity acceleration signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1]    
           
####TimeDomain_Gyroscope_in_Magnitude_mean
	description	magnitude of mean three-dimensional Gyroscope signals
	type		numeric
	value		normalized and bounded within [-1,1]  
                 
####TimeDomain_Gyroscope_in_Magnitude_std  
	description	magnitude of standard deviation three-dimensional Gyroscope signals
	type		numeric
	value		normalized and bounded within [-1,1]  
                 
####TimeDomain_Gyroscope_mean_X_axis                        
####TimeDomain_Gyroscope_mean_Y_axis                        
####TimeDomain_Gyroscope_mean_Z_axis
	description	mean of Gyroscope signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1] 
                        
####TimeDomain_Gyroscope_std_X_axis                         
####TimeDomain_Gyroscope_std_Y_axis                         
####TimeDomain_Gyroscope_std_Z_axis 
	description	standard deviation of Gyroscope signals
				X,Y,Z denotes each axis in the X, Y and Z directions
	type		numeric
	value		normalized and bounded within [-1,1]      
