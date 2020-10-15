//run at https://tio.run/#d
//Increasing engineering productivity is bit difficult when you have work+ other task. 
//This demonstrates how can combine small small tasks into one single task and complete in one stretch.
//This will help us to avoid interruptions and complete the work in a stretch!
// cerner_2^5_2020 

import std.stdio;
   int[3] calls = [ 1,1];
   int[3] emails = [1];
   int[4] work   =[2,2,2];
   int[string] tasks;
void batch_tasks(){
    tasks["others"]=0;
    tasks["work"]=0;
    for (int i = 0; i < calls.length; i++)
        tasks["others"]=tasks["others"]+calls[i];
    for (int i = 0; i < emails.length; i++)
        tasks["others"]=tasks["others"]+emails[i];
    for (int i = 0; i < work.length; i++)
        tasks["work"]=tasks["work"]+work[i];
}
void main(string[ ] args)
{ 

   batch_tasks();
   writeln("All the small tasks are batched together and performed within ",tasks["others"]," Hours");
   writeln("All the work items are schedules after other items so that we do not have to divert our focus in between and these are performed within ",tasks["work"]," Hours");
}