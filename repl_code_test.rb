# initiative = [1,2,3,4,5,6,7,8,9,10]
# p initiative[0].class
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)
# p initiative.sample(1)

# response = initiative.sample(1)
response = rand(1..10)
p response
  if response >= 6 ## This is truthy so it will always print winning words
    puts "\n"
    puts "winning fighting words."
  end
  if response <6
    puts "\n"
    puts "losing fighting words."
  end
