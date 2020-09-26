// cerner_2^5_2020
// Program to demonstrate importance of keeping workspace tidy to increase engineering productivity.
// can be run at https://www.onlinegdb.com/online_csharp_compiler
using System;
class WorkSpace {
  bool isTidy;
  bool cleanworkspace(){
       Console.WriteLine("*******Let's clean the workspace in free time\n");
       Console.WriteLine("*******Remove distractions\n");
       Console.WriteLine("*******Remove crumpled papers\n");
       Console.WriteLine("*******Remove Items which are no longer will be used!\n");
       return true;
  }
  void findadocument(string doc)
  { 
      Console.WriteLine("#######Finding the document");
      if(this.isTidy==true)
          Console.WriteLine(" "+doc+" within a few minutes! YEYY!\n");
      else
          Console.WriteLine("There is a deadline I can not find my document as my workspace is filled with unneccessary items\n and the meeting will start in few minutes");
  }
  static void Main() {
    WorkSpace w =new WorkSpace();
    w.isTidy=false;
    Console.WriteLine("@@@@@@@@@@@@Finding the document before cleaning the workspace");
    w.findadocument("Important Project document");
    w.isTidy=w.cleanworkspace();
     Console.WriteLine("@@@@@@@@@@@@Finding the document after cleaning the workspace");
    w.findadocument("Important Project document");
    Console.WriteLine("This demonstrates why it's necessary to keep your workspace tidy! Thank you!\n");
  }
}