#Demonstration of simple time table which can help us in increasing our engineering productivity
# cerner_2^5_2020
# can be run at https://www.tutorialspoint.com/execute_r_online.php
Task.data <- data.frame(
   
   Timing = c("10:45-11:00 AM","11:00 -12:00 PM","12:00-12:30PM","12:30-13:00PM","13:00-14:00PM","14:00PM-16:00PM","16:00-20:00PM","20:00PM"), 
   Task_name = c("Daily Scrum","Daily Work","Call Slot","LUNCH","Daily Work","Daily Work","Call Slot","Log Off"),
   stringsAsFactors = FALSE
)
# Print the data frame.			
print(Task.data) 