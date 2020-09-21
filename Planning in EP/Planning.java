//This program demonstrates how engineering productivity can be improved by planning the work using threads in java.
//Run the program by uncommenting one of the line and compare it with uncommenting other line.
// cerner_2^5_2020
// can be at https://www.tutorialspoint.com/compile_java_online.php
public class Planning extends Thread
{
  public static int work_hrs = 0,working_hours=8,break_hrs=0;
  Planning(String name) 
    { 
        super(name); 
    } 
  public static void main(String[] args) {
    Planning work = new Planning("work");
    Planning breaktime = new Planning("break");
    while((work_hrs+break_hrs)<=working_hours){
       //breaktime.run();
         work.run();
         breaktime.run();
       //work.run();
       
     }
    if(((work_hrs+break_hrs)>working_hours) && (work_hrs<(break_hrs)))
       System.out.println("The work hours are less than break time! please plan you work!");
    else if((work_hrs+break_hrs)>working_hours)
       System.out.println("Welldone the productivity is more in this plan!"); 
  }
  public void run() {
      if(this.getName().equals("work")){
        work_hrs++;System.out.println("Working\n");}
      else if(this.getName().equals("break")){
        break_hrs++;System.out.println("Taking break");
          
      }
  }
}
