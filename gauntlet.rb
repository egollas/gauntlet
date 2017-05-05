current_game = []

def section_break
  puts "\n"
  puts "*" * 100
  puts "\n"
end

puts "\n"
puts "Welcome to the AWESOMEST Adventure Game! Before we start, you need to create your character."
puts "Just so you know, your responses do not have to be case-sensitive (You're welcome!)"
puts "\n\n"

# SELECTING THE CHARACTER
puts "Choose your character class from the list below."
puts "-- Type 'B' for Barbarian or 'V' for Valkyrie."
char_class = gets.chomp.downcase

case char_class
when 'b'
  current_game << "barbarian"
  puts "\n"
  puts "Outstanding! Barbarians are fearless and can crush enemies easily."
when 'v'
  current_game << "valkyrie"
  puts "\n"
  puts "Outstanding! Valkyries are stronger than most men and catch their enemies off guard easily."
else
  puts "\n"
  puts "I don't understand your response. You will play a Barbarian."
  current_game << "barbarian"
end

section_break

# SELECTING THE WEAPON
puts "Okay, now it's time to select your weapon. You can choose a Battle Axe or a Broad Sword."
puts "-- Type 'A' for Axe or 'S' for Sword."
weapon = gets.chomp.downcase

case weapon
when 'a'
  current_game << "axe"
  puts "\n"
  puts "Great choice! Your enemies will tremble at your sight with a Battle Axe in your hand."
when 's'
  current_game << "sword"
  puts "\n"
  puts "Perfect! You will strike down many enemies with your mighty broadsword."
else
  puts "\n"
  puts "I don't understand your response. You will carry a Battle Axe."
  weapon = 'a'
  current_game << "axe"
end

section_break

# SELECTING THE COMPANION
puts "I know you are a super strong #{current_game[0]}, but even great fighters like you need help sometimes.
Please select a companion to join you on your adventure."
puts "-- Type 'E' for Elf or 'W' for Wizard."
companion = gets.chomp.downcase

case companion
when 'e'
  current_game << "elf"
  puts "\n"
  puts "Elves are known for their stealth ability and ranged attacks. This is a perfect compliment to your skills as a #{current_game[0]}."
when 'w'
  current_game << "wizard"
  puts "\n"
  puts "What wizards lack in strength, they more than make up for in magic attacks and healing. This is a perfect compliment to your skills as a #{current_game[0]}."
else
  puts "\n"
  puts "I don't understand your response. You will take the Elf as your companion."
  companion = 'e'
  current_game << "elf"
end

section_break

# THE BEGINNING OF THE ADVENTURE
puts "And now the adventure begins..."
puts "\n\n\n"
puts "           Press enter when you're ready!!!"
ready = gets.chomp
puts "\n\n\n"

#THE BACK-STORY
puts "Welcome to the Kingdom of Zudora. There has been peace in the Kingdom for almost a hundred years since the last Beholder
was driven from the lands by your great uncle, Bill the Barbarian. The townsfolk erected a statue of Great Uncle Bill in the town
square but it has started to crumble as time has passed. Maybe it's time for a new hero to step forward..."
puts "\n\n\n"

puts "                  Okay back to the story..."
puts "\n\n\n"

puts "           Press enter when you're ready!!!"
ready = gets.chomp

section_break

#THE ADVENTURE BEGINS
puts "In the past few months, strange things have happened as travelers pass through the forest surrounding the capital. There are
tales of shadows attacking and party members going missing. One moment they are there and the next they are gone. And there are
reports of odd noises coming from the castle's dungeons in the middle of the night. Some townspeople gossip that the noises from
the dungeons are the screams of the people who go missing from town. Others say they have seen the dead walking again."
puts "\n\n"
puts "You are tired of hearing the gossip and decide that someone needs to do something about all of these odd things happening. So
you tell Keishara that you want to go investigate and see if there is any truth to these rumors."

#THE CHOICES  IF USER DOES NOT MAKE A VALID CHOICE HERE, THE GAME IS ENDED WITH A SHORT STORY CONCLUSION
puts "Where do you want to go first- the Forest or the Dungeons?"
puts "-- Type 'F' Forest or 'D' Dungeon"
puts "\n"
location = gets.chomp.downcase
puts "\n"


# THE FOREST
case location
when 'f'
  current_game << "forest"
  puts "\n"
  puts "You head to the forest to check it out. You and your #{current_game[2]} companion, Keishara wander around looking for anything out of
the ordinary. Nothing seems unusual so you start to turn back to check out the dungeons at the castle. All of a sudden, you see a gang
of goblins heading directly toward you! It doesn't appear as if they've seen you but if you wait too long, they'll run right into you
and Keishara! Quick, what do you do?!?!?!?".gsub("\n", ' ')
  puts "\n\n"

  puts "Select 'F' for Fight, 'R' for Run, or 'H' Hide."
  puts "\n\n"
  choice = gets.chomp.downcase


# FIGHT
  case choice
  when 'f'
    current_game << "f"
    if current_game[3] = "forest" && current_game[4] = "f"
      response = rand(1..10)
        if response >=6
          puts "\n"
          puts "You ready your #{current_game[1]} and stand in the middle of the road in the dark forest, ready to kill anything that dares cross your
path. Keishara sets herself up in a more strategic location to allow her to have maximum damage with minimal risk. The goblins approach and eventually they see a
#{current_game[0]} standing in their path with a #{current_game[1]} drawn ready to fight. One goblin shouts something to the others and they all draw their weapons
and charge forward. You smirk, happy that they chose to fight and not run like cowards. As the goblins rush toward you, you prepare for the bloodbath that is about
to come. It's been a long time since you've done anything more than practice weilding your #{current_game[1]} and you are more than ready to fight. In a matter of
minutes, you and Keishara take out the entire squad of goblins without taking any damage to yourselves. They never stood a chance. But before you can truly enjoy
your victory, you know there is more to be done. If there are goblins patrolling the forest, then there are other dark forces in the area. You look at
Keishara to see if she's thinking the same thing you are. She gives you a nod and you both head further into the forest..." ###fix this formatting
          puts "THE END...for now!".gsub("\n", ' ')
        end
        if response <6
          puts "\n"
          puts "You ready your #{current_game[1]} and stand in the middle of the road in the dark forest, ready to kill anything that dares cross your
path. Keishara sets herself up in a more strategic location to allow her to have maximum damage with minimal risk. The goblins approach and eventually they see a
#{current_game[0]} standing in their path with a #{current_game[1]} drawn ready to fight. One goblin shouts something to the others and they all draw their weapons
and charge forward. You smirk, happy that they chose to fight and not run like cowards. As the goblins rush toward you, you prepare for the bloodbath that is about
to come. It's been a long time since you've done anything more than practice weilding your #{current_game[1]} and you are more than ready to fight. In a matter of
minutes, you and Keishara realize that these goblins are stronger than you expected. There must be some dark magic strengthening them. No matter how hard you strike,
they do not fall. Suddenly, you realize that a second squad of goblins has joined in the fight. You hear a scream coming from where you last saw Keishara fighting. The
#{current_game[2]} was too weak to defend against that many goblins. Now, both squads of goblins are focused on you. You know it won't be long now. Despite swinging
#{current_game[1]}, you cannot take any goblins out. You are tiring and they know it. Just then, the goblins lunge from all different sides and you fall beneath their
blades...".gsub("\n", ' ') ###fix this formatting
          puts "THE END"
        end
    end

# RUN
  when 'r'
    current_game <<"r"
    if current_game[3] = "forest" && current_game[4] = "r"
      response = rand(1..10)
        if response >=6
          puts "\n"
          puts "Not knowing how many goblins are in the area and what the greater force is, you and Keishara decide to run away from the goblins. No use dying today
before you have the chance to gather more information. Luckily, you two moved swiftly and quietly before any goblins noticed you and you safely got away. For now, you
decide to head back to town to gather a bigger team and better weapons to use against goblins and whatever else might be lurking in the forest. At least you know there
is some truth to the rumors from the townsfolk."
          puts "THE END...for now!"
        end
        if response <6
          puts "\n"
          puts "Not knowing how many goblins are in the area and what the greater force is, you and Keishara decide to run away from the goblins. No use dying today
before you have the chance to gather more information. Unfortunately, you ran away from one squad of goblins directly into a second squad. Before you could fight your
way out of the situation, the goblins captured you and Keishara and took you prisoner. Well, at least they didn't kill you...yet."
          puts "THE END...for now!"
        end
    end

# HIDE
  when 'h'
    current_game <<"h"
    if current_game[3] = "forest" && current_game[4] = "h"
      response = rand(1..10)
        if response >=6
          puts "\n"
          puts "Not knowing how many goblins are in the area and what the greater force is, you and Keishara decide to hide in the trees. No use dying today
before you have the chance to gather more information. Luckily, you two moved swiftly and quietly before any goblins noticed you and you safely hid above them as they
passed by. After the goblins pass by, you both crawl down and decide to head back to town to gather a bigger team and better weapons to use against goblins and whatever
else might be lurking in the forest. At least you know there is some truth to the rumors from the townsfolk."
          puts "THE END...for now!"
        end
        if response <6
          puts "\n"
          puts "Not knowing how many goblins are in the area and what the greater force is, you and Keishara decide to hide in the trees. No use dying today
before you have the chance to gather more information. Luckily, you two moved swiftly and quietly before any goblins noticed you and you safely hid above them as they
passed by. Unfortunately, you chose to rest on a branch that housed an angry owl. The owl gets annoyed and hoots and rustles to another branch, which makes one of the
goblins look up and see you. Despite your attempt to climb away, a branch gives way both and Keishara tumble to the ground and find yourselves surrounded by smelly goblins.
The goblins tie you up and take you prisoner. Well, at least they didn't kill you...yet.".gsub("\n", ' ') ###fix this formatting
          puts "THE END...for now!"
        end
    end
  else
      puts "\n"
      puts "I don't understand your response. You decide to stand and fight like a true #{current_game[0]}!"
    choice = 'f'
    current_game << "f"
    if current_game[3] = "forest" && current_game[4] = "f"
      response = rand(1..10)
      if response >=6
        puts "\n"
        p "You ready your #{current_game[1]} and stand in the middle of the road in the dark forest, ready to kill anything that dares cross your
path. Keishara sets herself up in a more strategic location to allow her to have maximum damage with minimal risk. The goblins approach and eventually they see a
#{current_game[0]} standing in their path with a #{current_game[1]} drawn ready to fight. One goblin shouts something to the others and they all draw their weapons
and charge forward. You smirk, happy that they chose to fight and not run like cowards. As the goblins rush toward you, you prepare for the bloodbath that is about
to come. It's been a long time since you've done anything more than practice weilding your #{current_game[1]} and you are more than ready to fight. In a matter of
minutes, you and Keishara take out the entire squad of goblins without taking any damage to yourselves. They never stood a chance. But before you can truly enjoy
your victory, you know there is more to be done. If there are goblins patrolling the forest, then there are other dark forces in the area. You look at
Keishara to see if she's thinking the same thing you are. She gives you a nod and you both head further into the forest...".gsub("\n", ' ') ###fix this formatting
        puts "THE END...for now!"
      end
      if response <6
        puts "\n"
        put "You ready your #{current_game[1]} and stand in the middle of the road in the dark forest, ready to kill anything that dares cross your
path. Keishara sets herself up in a more strategic location to allow her to have maximum damage with minimal risk. The goblins approach and eventually they see a
#{current_game[0]} standing in their path with a #{current_game[1]} drawn ready to fight. One goblin shouts something to the others and they all draw their weapons
and charge forward. You smirk, happy that they chose to fight and not run like cowards. As the goblins rush toward you, you prepare for the bloodbath that is about
to come. It's been a long time since you've done anything more than practice weilding your #{current_game[1]} and you are more than ready to fight. In a matter of
minutes, you and Keishara realize that these goblins are stronger than you expected. There must be some dark magic strengthening them. No matter how hard you strike,
they do not fall. Suddenly, you realize that a second squad of goblins has joined in the fight. You hear a scream coming from where you last saw Keishara fighting. The
#{current_game[2]} was too weak to defend against that many goblins. Now, both squads of goblins are focused on you. You know it won't be long now. Despite swinging
#{current_game[1]}, you cannot take any goblins out. You are tiring and they know it. Just then, the goblins lunge from all different sides and you fall beneath their
blades...".gsub("\n", ' ') ###fix this formatting
        puts "THE END"
      end
    end
  end

# DUNGEON
when 'd'
  current_game << "dungeon"

  puts "You head toward a secret entrance to the dungeons that you found as a kid playing around with your friends. You hope it hasn't been
  secured so you can still use it. It's not like walking through the front door will be easy."
  puts "You're in luck! The secret entrance is still open and you and your #{current_game[2]} companion, Keishara sneak in and decend into the
  dungeons. It's just as dark and dank as you remember, but that's normal for dungeons. You and Keishara wander around avoiding any guards,
  but you don't see anything out of the usual so you decide to head out. Just as you turn the corner, you see a group of undead right in
  your path! They don't seem to detect you yet, but they will smell you and Keishara any moment! Quick, what do you do?!?!?!?".gsub("\n", ' ') ###fix this formatting
  puts "\n"
  puts "Select 'F' for Fight, 'R' for Run, or 'H' Hide."
  puts "\n"

  choice = gets.chomp.downcase
  case choice

# FIGHT
  when 'f'
    current_game << "f"
    if current_game[3] = "dungeon" && current_game[4] = "f"
      response = rand(1..10)
        if response >=6
          puts "\n"
          puts "You ready your #{current_game[1]} and stand in the middle of the hallway in the dark dungeon, ready to kill anything that dares cross your
path. Keishara sets herself up in a more strategic location to allow her to have maximum damage with minimal risk. The undead approach and eventually
they see a #{current_game[0]} standing in their way with a #{current_game[1]} drawn ready to fight. As soon as the undead sense you, they immediately
speed up to head directly toward you, hungry for your flesh. You smirk, happy that they are coming right toward you. Obviously they don't know who they
are dealing with. As the undead rush toward you, you prepare for the bloodbath that is about to come. It's been a long time since you've done anything
more than practice weilding your #{current_game[1]} and you are more than ready to fight. In a matter of minutes, you and Keishara take out the entire
squad of undead without taking any damage to yourselves. They never stood a chance. But before you can truly enjoy your victory, you know there is more
to be done. If there are undead wandering around the dungeon, then there are other dark forces in the area. You look at Keishara to see if she's thinking
the same thing you are. She gives you a nod and you both head further into the dungeon...".gsub("\n", ' ') ###fix this formatting
          puts "\n"
          puts "THE END...for now!"
        end
        if response <6
          puts "\n"
          puts "You ready your #{current_game[1]} and stand in the middle of the hallway in the dark dungeon, ready to kill anything that dares cross your
path. Keishara sets herself up in a more strategic location to allow her to have maximum damage with minimal risk. The undead approach and eventually they see a
#{current_game[0]} standing in their way with a #{current_game[1]} drawn ready to fight. As soon as the undead sense you, they immediately speed up to head directly
toward you, hungry for your flesh. You smirk, happy that they are coming right toward you. Obviously they don't know who they are dealing with. As the undead rush
toward you, you prepare for the bloodbath that is about to come. It's been a long time since you've done anything more than practice weilding your #{current_game[1]}
and you are more than ready to fight. In a matter of minutes, you and Keishara realize that these undead are stronger than you expected. There must be some dark magic
strengthening them. No matter how hard you strike, they do not fall. Suddenly, you realize that a second squad of undead has joined in the fight. You hear a scream
coming from where you last saw Keishara fighting. The #{current_game[2]} was too weak to defend against that many undead. Now, both squads of undead are focused on you.
You know it won't be long now. Despite swinging your #{current_game[1]}, you cannot take any undead out. You are tiring and they are inching closer, encircling you. Just then,
the undead lunge from all different sides and you fall...".gsub("\n", ' ') ###fix this formatting
          puts "\n"
          puts "THE END"
        end
    end

# RUN
  when 'r'
    current_game <<"r"
    if current_game[3] = "dungeon" && current_game[4] = "r"
      response = rand(1..10)
        if response >=6
          puts "\n"
          puts "Not knowing how many undead are in the area and what the greater force is, you and Keishara decide to run away from the undead. No use dying today
before you have the chance to gather more information. Luckily, you two moved swiftly and quietly before any undead noticed you and you safely got away. For now, you
decide to head back to town to gather a bigger team and better weapons to use against the undead and whatever else might be lurking in the dungeon. At least
you know there is some truth to the rumors from the townsfolk.".gsub("\n", ' ') ###fix this formatting
          puts "\n"
          puts "THE END...for now!"
        end
        if response <6
          puts "\n"
          puts "Not knowing how many undead are in the area and what the greater force is, you and Keishara decide to run away from the undead. No use dying today
before you have the chance to gather more information. Unfortunately, you ran away from one squad of undead directly into a second squad. Before you could fight your
way out of the situation, the undead surround you and Keishara and they start to move in for the kill. Well, at least they didn't kill you...yet.".gsub("\n", ' ') ###fix this formatting
          puts "\n"
          puts "THE END...for now!"
        end
    end

# HIDE
  when 'h'
    current_game <<"h"
    if current_game[3] = "dungeon" && current_game[4] = "h"
      response = rand(1..10)
        if response >=6
          puts "\n"
          puts "Not knowing how many undead are in the area and what the greater force is, you and Keishara decide to hide. No use dying today before you have the
chance to gather more information. Luckily, you two moved swiftly and quietly before any undead sensed you and you safely hid in an empty closet as they passed by.
After the undead pass by, you both come out into the hallway and decide to head back to town to gather a bigger team and better weapons to use against the undead
and whatever else might be lurking in the dungeon. At least you know there is some truth to the rumors from the townsfolk.".gsub("\n", ' ') ###fix this formatting
          puts "THE END...for now!"
        end
        if response <6
          puts "\n"
          puts "Not knowing how many undead are in the area and what the greater force is, you and Keishara decide to hide. No use dying today before you have the
chance to gather more information. Luckily, you two moved swiftly and quietly before any undead noticed you...or so you thought. The undead can sense live flesh and
before you know it, they are trying to push open the door to the little room you found. You look for another way out but you can't find one. You try to brace the door
but you don't have anything you can use. You and Keishara keep pressing the door to keep it closed but you don't know how long you can last. Well, at least they haven't
kill you...yet.".gsub("\n", ' ') ###fix this formatting
          puts "\n"
          puts "THE END...for now!"
        end
    end
  else
    puts "\n"
    puts "I don't understand your response. You decide to stand and fight like a true #{current_game[0]}!"
    choice = "f"
    current_game <<"f"
    if current_game[3] = "dungeon" && current_game[4] = "f"
      response = rand(1..10)
      if response >=6
        puts "\n"
        puts "You ready your #{current_game[1]} and stand in the middle of the hallway in the dark dungeon, ready to kill anything that dares cross your
path. Keishara sets herself up in a more strategic location to allow her to have maximum damage with minimal risk. The undead approach and eventually they see a
#{current_game[0]} standing in their way with a #{current_game[1]} drawn ready to fight. As soon as the undead sense you, they immediately speed up to head directly
toward you, hungry for your flesh. You smirk, happy that they are coming right toward you. Obviously they don't know who they are dealing with. As the undead rush
toward you, you prepare for the bloodbath that is about to come. It's been a long time since you've done anything more than practice weilding your #{current_game[1]}
and you are more than ready to fight. In a matter of minutes, you and Keishara take out the entire squad of undead without taking any damage to yourselves. They never
stood a chance. But before you can truly enjoy your victory, you know there is more to be done. If there are undead wandering around the dungeon, then
there are other dark forces in the area. You look at Keishara to see if she's thinking the same thing you are. She gives you a nod and you both head further into the
dungeon...".gsub("\n", ' ') ###fix this formatting
        puts "\n"
        puts "THE END...for now!"
      end
      if response <6
        puts "\n"
        puts "You ready your #{current_game[1]} and stand in the middle of the hallway in the dark dungeon, ready to kill anything that dares cross your
path. Keishara sets herself up in a more strategic location to allow her to have maximum damage with minimal risk. The undead approach and eventually they see a
#{current_game[0]} standing in their way with a #{current_game[1]} drawn ready to fight. As soon as the undead sense you, they immediately speed up to head directly
toward you, hungry for your flesh. You smirk, happy that they are coming right toward you. Obviously they don't know who they are dealing with. As the undead rush
toward you, you prepare for the bloodbath that is about to come. It's been a long time since you've done anything more than practice weilding your #{current_game[1]}
and you are more than ready to fight. In a matter of minutes, you and Keishara realize that these undead are stronger than you expected. There must be some dark magic
strengthening them. No matter how hard you strike, they do not fall. Suddenly, you realize that a second squad of undead has joined in the fight. You hear a scream
coming from where you last saw Keishara fighting. The #{current_game[2]} was too weak to defend against that many undead. Now, both squads of undead are focused on you.
You know it won't be long now. Despite swinging your #{current_game[1]}, you cannot take any undead out. You are tiring and they are inching closer, encircling you. Just then,
the undead lunge from all different sides and you fall...".gsub("\n", ' ') ###fix this formatting
        puts "\n"
        puts "THE END"
      end
    end
  end

# THE ENDING IF USER MAKES NO CHOICES
else
  puts "I don't understand your response. You stay in the tavern and drink yourself into a stupor while your #{current_game[2]}
companion Keishara heads out without you. She defeats the enemy and saves the town and they erect a new statue of Keishara in
the town center where the crumbling statue of your great uncle Bill used to stand. Guess you missed out on a good adventure.
Better luck next time!".gsub("\n", ' ') ###fix this formatting
end
