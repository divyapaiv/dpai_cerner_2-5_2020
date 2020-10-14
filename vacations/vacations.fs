(* This demonstrates why vacation is important as we need to boost up our battery and creativity along with other factors 
cerner_2^5_2020 
can be run at https://tio.run/#fs-core *)
let mutable productivity=100 
let mutable battery = 100
let mutable creativity = 50
let mutable stress = 50
let mutable ideas = 50
let printstats() =
   printfn "Current productivity is %d" productivity
   printfn "Current Battery level is %d" battery
   printfn "Current Stress level is %d" stress
   printfn "Current Creativity level %d" creativity 
   printfn "Current List of new ideas %d" ideas

let work() =
   productivity<-productivity-10
   battery<-battery-10
   stress<-stress+10
 
let taketimeoff()=  
    productivity<-productivity+50
    battery<-battery+50
    stress<-stress-20
    ideas<-ideas+20
    creativity<-creativity+20
    
let main() =
          work()
          work()
          printstats()
          taketimeoff()
          printstats() 
main()