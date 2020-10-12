{ This program gives how can we keep track of our daily work and improve the productivity based on gathered data }
{ cerner_2^5_2020 }
{ working hours journal}
PROGRAM keeptrack;
uses Sysutils;
  function keeptrack(activity: string; timespent: integer;day:string;Remaining:integer): integer;
  begin
   writeln('On ',day, ', For ',activity,' Time spent was :' ,timespent,'hr');
   keeptrack:=Remaining-timespent;
  end;
 var total_hrs,no_days,rand_hrs: integer;
  BEGIN
  
    no_days := 1;
      writeln('Hi');
      while no_days < 4 do
        begin
          total_hrs:=8;
        while total_hrs > 0 do
        begin
          rand_hrs:=random(total_hrs);
          if rand_hrs = 0 then
             total_hrs:= -1
          else
            total_hrs:=keeptrack('Working',random(total_hrs),'day-' + IntToStr(no_days),total_hrs);
            total_hrs:=keeptrack('Distractions',random(total_hrs),'day-' + IntToStr(no_days),total_hrs);
          
        end;
        no_days:=no_days+1;
      end;
END. 
