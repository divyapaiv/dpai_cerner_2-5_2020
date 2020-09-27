<?php
// cerner_2^5_2020
//This is to demo of how tasks can be divided into sub task and how it can be tracked efficiently. 
//This also increases EP as We can determine where we are lagging behind.
//Run at https://www.onlinegdb.com/online_php_interpreter
class Task {
     private $taskstmt;
     public $estimates;
     public function __construct($stmt,$est){
        $this->taskstmt=$stmt;
        $this->estimates=$est;
    }
    function SolveTask($ReleaseEstimates) {
        print_r("Solving ". $this->taskstmt."........\n");
        sleep(1);
        print_r("The task ".$this->taskstmt ." has been resolved at ".date("Y/m/d h:i:s")."\n");
        print_r("Remaining estimate is ".(string) ((int)$ReleaseEstimates-(int)$this->estimates)."\n");
        return((int)$ReleaseEstimates-(int)$this->estimates);
    }
}
$Requirement = new Task("Requirement Task",2);
$TechnicalDesign = new Task("Technical Design Task",4);
$Developement = new Task("Development Task",6);
$TestCase = new Task("Test Case Design Task",2);
$BlackBoxTesting = new Task("BlackBox Testing Task",6);
$ReleaseActivities= new Task("Release Activities",4);
$ReleaseEstimates=$Requirement->estimates +(int)($TechnicalDesign->estimates+$Developement->estimates+$TestCase->estimates+$BlackBoxTesting->estimates +$ReleaseActivities->estimates);
$ReleaseEstimates=$Requirement->SolveTask($ReleaseEstimates);
$ReleaseEstimates=$TechnicalDesign ->SolveTask($ReleaseEstimates);
$ReleaseEstimates=$Developement->SolveTask($ReleaseEstimates);
$ReleaseEstimates=$TestCase ->SolveTask($ReleaseEstimates);
$ReleaseEstimates=$BlackBoxTesting->SolveTask($ReleaseEstimates);
$ReleaseEstimates=$ReleaseActivities->SolveTask($ReleaseEstimates);
print_r("Tasks has been divided into subtasks and they are completed as planned.:)")
?>