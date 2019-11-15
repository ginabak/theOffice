# this module is to compare the phone_log's and interact_log's of the subclasses
module Compare
  WINNER = lambda do |num|
    (num == 0)? (return 'the same amount of') : (return (num == 1)? 'more' : 'less')
  end

  def compare_energy_level(person)
    comparison = (self.energy_level <=> person.energy_level)
    result = WINNER.call(comparison)
    puts "#{@name} has #{result} energy compared to #{person.name}"
  end

  def compare_phone_log(person)
    comparison = (self.phone_log <=> person.phone_log)
    result = WINNER.call(comparison)
    # result = &WINNER(comparison)
    puts "#{@name} has made #{result} phone calls compared to #{person.name}"
  end

  def compare_sales(person)
    comparison = (self.paper_sale <=> person.paper_sale)
    result = WINNER.call(comparison)
    puts "#{@name} has made #{result} sales compared to #{person.name}"
  end
end

# puts (comparison == 0)? ('Equal!') : ((comparison == -1)? ('The 1st person!') : ('The 2nd person!'))
module RandomizedPhrase

  # must be a lambda since a value is returned! 
  RANDOMIZED_PHRASE = lambda do |array|
    random_index = rand(0...(array.length))
    value = array[random_index]
    return value
  end

  def make_phone_call(character)
    self.phone_log += 1
    character.phone_log += 1
    puts "\nMaking phone call to #{character.name}."
    phrase = RANDOMIZED_PHRASE.call(@phrases)
    puts "#{@name} said to #{character.name}: '#{phrase}'"
  end

  def interact(character)
    self.interact_log += 1
    character.interact_log += 1
    puts "\n#{@name} is currently interacting with #{character.name}."
    phrase = RANDOMIZED_PHRASE.call(@phrases)
    puts "#{@name} said to #{character.name}: '#{phrase}'\n"
  end

end

module MakeSale
  def sell_paper(num)
    puts "\n#{@name}'s paper sale is currently at: #{self.paper_sale}"
    (num.to_s =~ /\d/)? (self.paper_sale += num) : (raise 'Needs to be an integer!')
    decrease_energy_level
    puts "\n#{@name}'s paper sale is now at: #{self.paper_sale}"
  end
end


module PlayBasketball
# https://www.asciiart.eu/sports-and-outdoors/basketball <-- Basketball Ascii Art Credit (slightly edited by Gina)
  RANDOMIZED_INDEX = lambda do |array|
    random_index = rand(0...(array.length))
    value = array[random_index]
    return value
  end

  def play_basketball(character)
    # please excuse this ugly looking array for the sake of ascii art :)
    basketball_array = ["   o- - -  \\o          __|\n      o/   /|          vv`\\ \n     /|     |              |\n      |    / \\_            |
     / \\   |               |
    /  |                   |", 
    "\n|__  o\\ \n| W     \O \n|       |\\_         |\\ \n|      /-\\           \O \n|    /     \\          | \n|                    /| \n|                   |  \\ \n", 
    "            ________
    o      |   __   |
      \\_ O |  |__|  |
   ____/ \\ |___WW___|
   __/   /     ||
               ||
               ||
_______________||________________"]
    basketball = RANDOMIZED_INDEX.call(basketball_array)
    ((@energy_level > 10) && (character.energy_level > 10))? (puts basketball) : (raise 'Characters are too tired to play!')
    character_array = [@name, character.name]
    decrease_energy_level
    character.decrease_energy_level
    random_winner = RANDOMIZED_INDEX.call(character_array)
    (random_winner == @name)? (@basketball_score += 1) : (character.basketball_score += 1)
    puts "#{random_winner} won this round!"
  end

end