package main
// cerner_2^5_2020
// run at https://play.golang.org/
import (
	"fmt"
	"time"
)
func main() {
        fmt.Printf("👩🏻‍🏫Lets learn about how to set Goals and Priorities👩🏻‍🏫")
	emojis:=[6]string{"👩🏻‍💻","📝","👆", "🧮","📊", "📈"}
	for x:=0; x < len(emojis); x++{ 
		dur := time.Duration(200) * time.Millisecond
		// Sleep for a random duration between 0-1000ms
		time.Sleep(dur)
		switch val:= emojis[x]; val{
		   case "👩🏻‍💻": fmt.Println(val+"Analyze historical data to better allocate time and resources"+val)
		   case "📝":fmt.Println(val+"Create a list of clear goals and priorities"+val)
	       case "👆":fmt.Println(val+"Pinpoint potential problems and obstacles that may delay delivery"+val)
	       case "🧮":fmt.Println(val+"Break down complex goals into chunks of small tasks"+val)
	       case "📊":fmt.Println(val+"Set attainable milestones and visualize progress on a timeline"+val)
	       case "📈":fmt.Println(val+" Monitor performance (daily/weekly/monthly) and correct course when falling behind"+val)
	    }
	        
		
	}
	fmt.Println("Done! Thank you! Have a great weekend!")
}
