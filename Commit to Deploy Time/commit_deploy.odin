// Run at https://tio.run/#odin cerner_2^5_2020
// This demonstrates how deploy time effects engineering productvity without automations manual efforts consumes lots of engineering efforts. 
// CDT indicates how much time it takes to move a pipeline from one pipeleine to other 
package main

import "core:fmt"
deploy_project::proc(automation_ind,trd,test_execution_time:int)
{ if(automation_ind==1){
  fmt.println("😄Automation is completed for the project😀");
  fmt.println("😄The approx commit to deploy time is",trd+test_execution_time);}
else{
  fmt.println("😩Automation is not completed manual testing has to be done for the project😔");
  fmt.println("😔The approx commit to deploy time is",trd+test_execution_time);
}
} 
main :: proc() {
  time_required_for_deploy:int=50;
  fmt.println("††††††Project has no automation Testing in place!");        
  deploy_project(0,time_required_for_deploy,200);
  fmt.println("††††††Project has automation Testing in place!");   
  deploy_project(1,time_required_for_deploy,50);
}