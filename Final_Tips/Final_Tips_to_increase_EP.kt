//Run at https://kotlinlang.org/
// cerner_2^5_2020 

val tips = mapOf("check_email_in_morning" to true, 
                 "set_goals" to false, "organized_set_up"          to false
                 ,"negative_thoughts" to true,"early_2_bed_early_2_rise"  to false
                 ,"plan_meetings" to false,"follow_routine"            to false
                 ,"learnt_to_say_no" to false,"multitasking"              to true
                 ,"physical_activity" to false,"stay_hydrated"             to false
                 ,"take_break" to false)

fun Routine(tips_followed:Boolean)
{ 
    var changed_val=false
	for ((key, value) in tips.entries) {
	    changed_val=value
        if(tips_followed)
          changed_val=!value
        when(changed_val){
		  true->println("#### ${key}= Yes");false->println("##### ${key}= No")}
    }
}
fun main() {
    //Not following above tips may not save time and productivity will go down.
	println("*****************Current Routine without following any above tips")
    Routine(false)
    // Follow the below routine to become more productive
	println("****************Changed Routine with following the tips")
    Routine(true)
}

/*
Since it's end of 32 days and 32 lines of code here are the final tips :) 
check_email_in_morning= Suggested to avoid as our brain can concentrate faster in the morning where we can cover most of our best work!
Setting Goals is also important 
Should avoid negative thoughts while working 
Meetings should be planned
To end up over working learn to say no wherever it's needed. 
We should follow daily routines
Work in a well organized set up
Excercise and drink enough water
Take a break wherever it's necessary
Sleep on time and wake up early 
*/