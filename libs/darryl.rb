require_relative 'warehouse'
require_relative 'mixins'

class DarrylPhilbin < TheWarehouseStaff
  attr_accessor :eye_roll

  def initialize (energy_level = 60)
    super('Darryl Philbin', energy_level)
    self.eye_roll = 0
    @phrases = ['I meant dressed up compared to normal. You usually dress like a ghostbuster.', 
      'I did have a fantastic basement. Now it smells like tacos.', "I'm hot. You're hot. Let's get poppin'",
      'I got my whole life to be a minority executive. Only have about a year left in these knees, though.', 
      'You can be gay with Matt, just be straight with me', "A player's gotta play", 
      "My future isn't gonna be determined by 7 little white lotto balls, it's gonna be determined by two big black balls. I control my own destiny." ,
      'I would date the hell out of me']
  end

  def annoyed
    @eye_roll += 1
    decrease_energy_level
  end

  def describe_self
    print "\nMy name is #{@name}. I have rolled my eyes "
    description = (@eye_roll > 1)? "#{@eye_roll} times.\n" : "#{@eye_roll} time.\n"
    print description
    yield if block_given?
  end

end