#Following represents hows tasks should be prioritized. 
#Stones represent the weightage of and time needed for task 
#container represents the capacity that we have in a deduct_capacity
#If we take up task in shortest time first order we will miss out on the large and high #priority tasks
#If we take up largest task first then we miss small small tasks. 
#We need plan it in a order in which we need to take up tasks so that we can completely 
# utilize our capcity
# can be run at https://repl.it/languages/Ruby
# cerner_2^5_2020 
def deduct_capacity (stones, container_capacity)
stones.each { |x| 
if(container_capacity-x>=0) then
  container_capacity=container_capacity-x
  puts "Task taken #{x}"
  puts "remaining capacity #{container_capacity}"
else 
  puts "all the capacity has been exhausted can't take up any more task!"
end
}
end
stones = [1,2,3,4,6,9]
container_capacity= 10
puts("**********Smaller stones are filled into the container!")
deduct_capacity(stones,container_capacity)
stones.sort! {|x, y| y <=> x}
puts("**********Larger stones are filled into the container!")
deduct_capacity(stones,container_capacity)
shuffled_array=stones.shuffle
puts "*************Stones are sorted in random order!"
deduct_capacity(shuffled_array,container_capacity)
