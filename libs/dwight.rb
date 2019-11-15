require_relative 'office'
require_relative 'michael'
require_relative 'jim'
require_relative 'mixins'

class DwightSchrute < TheOfficeCharacter
  attr_reader :weapon_list

  def initialize (love_interest = ['Angela Martin'], energy_level = 99)
    super('Dwight Schrute', 'Assistant to the Assistant to the Regional Manager', love_interest, energy_level)
    @weapon_list = ['pocket knife', 'taser', 'boomerang', 'handcuffs', 'nightstick', 'pair of brass knuckles', 'samurai sword']
    @phrases = ['Bears. Beets. Battlestar Galactica.', 'Through concentration, I can raise and lower my cholesterol at will.',
    'I am fast. To give you a reference point I am somewhere between a snake and a mongoose ... And a panther.' ]
  end

  def show_weapon(character)
    increase_energy_level
    character.decrease_energy_level
    random_index = rand(0...(@weapon_list.length))
    weapon = @weapon_list[random_index]
    puts "\n#{@name} randomly reveals that he has a #{weapon} hidden on his body to #{character.name}"
  end

end
