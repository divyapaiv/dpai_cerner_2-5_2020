#  cerner_2^5_2020 
# run at https://tio.run/#icon
procedure main()
    local x;
    write("This demonstrates Pomodoro Technique")
    x:= 480
    write("Total working hours ",x/60,"hrs")
   while(x>0) do{
    x:=x-25
    work(25)
    x:=x-5
    rest(5)
}
end
procedure work(a)
    write("Working for ",a," Minutes")
end
procedure rest(b)
   write("Resting for ",b," Minutes")
end