 'Demonstration of some factors that can impact Engineering productivity
 'Copy the file and save the file as speech.vbs and double click 
 ' cerner_2^5_2020
 Dim message, sapi,i
 'Creates voice objects to convert text to speech.
 Set sapi   = CreateObject("sapi.spvoice")  
 Dim DecreasesEP(3)
 DecreasesEP(0) = "Its 5 o clock and I should be done with my work, but I just need to finish this last problem, lets give one more try"
 DecreasesEP(1) = "This needs to ship in two weeks but I think its 120 hours to complete… so I guess I am stretching on evenings and weekends again."
 DecreasesEP(2) = "I just spent some hours in watching videos in between let me extend a bit to complete work!"
 Dim IncreasesEP(3)
 IncreasesEP(0) = "Its 5 o clock and I wish I had this fixed, but I guess I will try tomorrow morning. The next morning, refreshed, I solved the problem in 10 minutes with the fresh mind!"
 IncreasesEP(1) = "I have got two weeks, but this is way too much work. What can I do to reduce the scope? Oh, if I do this restructuring I can get 80% of the feature done in one week, and that will probably keep the customer happy until I finish the rest"
 IncreasesEP(2) = "I have to follow a strict schedule and work only for dedicated hours."
  
 For i = 0 To 2
   'Male voice
   Set sapi.Voice = sapi.GetVoices.Item(0)
   sapi.Speak "Following thoughts decreases Engineering Productivity"
   sapi.Speak DecreasesEP(i)
   'Female voice
   Set sapi.Voice = sapi.GetVoices.Item(1)
   sapi.Speak "Following thoughts increases Engineering Productivity"
   sapi.Speak IncreasesEP(i)
 Next
