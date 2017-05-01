puts "\n"
puts "Welcome to the awesome adventure game! Before we start, you need to create your character."
puts "\n"
puts "Choose your character class from the list below."
puts "-- Type 'Barbarian' or 'Valkyrie'"

char_class = gets.chomp.downcase
case char_class
when 'barbarian'
  puts "Outstanding! Barbarians are fearless and can crush enemies easily."
when 'valkyrie'
  puts "Outstanding! Valkyries are stronger than most men and catch their enemies off guard easily."
else
  puts "I don't understand your response. You will play a Barbarian."
  char_class = "barbarian"
end
puts "\n"
puts "*" * 80
puts "\n"

puts "Okay, now it's time to select your weapon. You can choose a Battle Axe or a Broad Sword."
puts "-- Type 'Axe' or 'Sword'"

weapon = gets.chomp.downcase
case weapon
when 'axe'
  puts "Great choice! Your enemies will tremble at your sight."
when 'sword'
  puts "Perfect! You will strike down many enemies with your mighty broadsword."
else
  puts "I don't understand your response. You will carry a Battle Axe."
  weapon = "axe"
end
puts "\n"
puts "*" * 80
puts "\n"

puts "I know you are a super strong #{char_class}, but even great fighters like you need help sometimes.
Please select a companion to join you on your adventure."
puts "-- Type 'Elf' or 'Wizard'."

companion = gets.chomp.downcase
case companion
when 'elf'
  puts "Elves are known for their stealth ability and ranged attacks. This is a perfect compliment to your skills as a #{char_class}."
when 'wizard'
  puts "What wizards lack in strength, they more than make up for in magic attacks and healing. This is a perfect compliment to your skills as a #{char_class}."
else
  puts "I don't understand your response. You will take the Elf as your companion."
  companion = "elf"
end
puts "\n"
puts "*" * 80
puts "\n"
puts "And now the adventure begins..."
puts "\n"
puts "\n"
puts "\n"
puts "           Press enter when you're ready!!!"
ready = gets.chomp
puts "\n"
puts "\n"
puts "\n"
puts "Welcome to the Kingdom of Zudora. There has been peace in the Kingdom for almost a hundred years since the last Beholder
was driven from the lands by your great uncle, Bill the Barbarian. The townsfolk erected a statue of Great Uncle Bill in the town
square but it has started to crumble as time has passed. Maybe it's time for a new hero to step forward..."
puts "\n"
puts "\n"
puts "\n"
puts "                  Okay back to the story..."
puts "\n"
puts "\n"
puts "\n"
puts "           Press enter when you're ready!!!"
ready = gets.chomp
puts "\n"
puts "\n"
puts "\n"
puts "In the past few months, strange things have happened as travelers pass through the forest surrounding the capital. There are
tales of shadows attacking and party members going missing. One moment they are there and the next they are gone."
puts "And there are reports of odd noises coming from the castle's dungeons in the middle of the night. Some townspeople gossip that
the noises from the dungeons are the screams of the people who go missing from town. Others say they have seen the dead walking again."
puts "\n"
puts "You decide that someone needs to do something about all of these odd things happening. Where do you want to go first- the Forest
or the Dungeons?"
puts "-- Type 'Forest' or 'Dungeon'"
puts "\n"

location = gets.chomp.downcase
case location
when 'forest'
  puts "You head to the forest to check it out. You and your #{companion} companion, Keishara wander around looking for anything out of
  the ordinary. Nothing seems unusual so you start to turn back to check out the dungeons at the castle. All of a sudden, you see a gang
  of goblins heading directly toward you! It doesn't appear as if they've seen you but if you wait too long, they'll run right into you
  and Keishara! Quick, what do you do?!?!?!?"
  puts "\n"
  puts "Select 'Fight', 'Run', or 'Hide'."
  puts "\n"

  f_choice = gets.chomp.downcase
  case f_choice
  when 'fight'
    puts "\n"
    puts "fighting words."
  when 'run'
    puts "\n"
    puts "running words."
  when 'hide'
    puts "\n"
    puts "hiding words."
  else
    puts "\n"
    puts "I don't understand your response. You decide to stand and fight like a true #{char_class}!"
  end

when 'dungeon'
  puts "You head toward a secret entrance to the dungeons that you found as a kid playing around with your friends. You hope it hasn't been
  secured so you can still use it. It's not like walking through the front door will be easy."
  puts "You're in luck! The secret entrance is still open and you and your #{companion} companion, Keishara sneak in and decend into the
  dungeons. It's just as dark and dank as you remember, but that's normal for dungeons. You and Keishara wander around avoiding any guards,
  but you don't see anything out of the usual so you decide to head out. Just as you turn the corner, you see a group of undead right in
  your path! They don't seem to detect you yet, but they will smell you and Keishara any moment! Quick, what do you do?!?!?!?"
  puts "\n"
  puts "Select 'Fight', 'Run', or 'Hide'."
  puts "\n"

  d_choice = gets.chomp.downcase
  case d_choice
  when 'fight'
    puts "\n"
    puts "fighting words."
  when 'run'
    puts "\n"
    puts "running words."
  when 'hide'
    puts "\n"
    puts "hiding words."
  else
    puts "\n"
    puts "I don't understand your response. You decide to stand and fight like a true #{char_class}!"
  end

else
  puts "I don't understand your response. You stay in the tavern and drink yourself into a stupor while your #{companion} companion Keishara heads
  out without you."
end
