HAI 1.2
I HAS A ENGINEERING_TEAM BTW I Belong to a team
 ENGINEERING_TEAM R "ENGINEERING PRODUCTIVITY" 
BTW Each Engineering team measured based on its Engineering Productivty
I HAS A GOALS BTW Each Team Has  It's own goals
GOALS R 80 BTW Lets assume Team Goal is 80
I HAS A ACCEPTATION_CRITERIA
VISIBLE "DO you Accept 80 as Expectation?"
    GIMMEH ACCEPTATION_CRITERIA
I HAS A EXPECTATION
BOTH SAEM ACCEPTATION_CRITERIA AN "YES"
O RLY?
  YA RLY
   EXPECTATION R GOALS
  NO WAI
   VISIBLE "Give me your expectation?"
   GIMMEH EXPECTATION
OIC
EXPECTATION IS NOW A NUMBR
I HAS A TEAM_RESULT BTW Each TEAM PRODUCES It's own results
VISIBLE "Give me your Team Result?"
GIMMEH TEAM_RESULT
TEAM_RESULT IS NOW A NUMBR
DIFFRINT EXPECTATION AN SMALLR OF EXPECTATION AN TEAM_RESULT
  O RLY?
  YA RLY 
 VISIBLE "Better Luck Next time!"
  NO WAI 
 VISIBLE "Well Done Team has met expectation!"
  OIC
VISIBLE "THATS ALL FOLKS!" BTW  It's cerner_2^5_2020
KTHXBYE
