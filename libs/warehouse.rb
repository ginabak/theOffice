# BASE CLASS 2 

=begin
I realize that it would be ideal to have a major super class so that most of the methods aren't repeated.
To save time, I shall leave both classes as is.   
=end

require_relative 'mixins.rb'

class TheWarehouseStaff
  include RandomizedPhrase
  include Compare
  include PlayBasketball

  attr_accessor :interact_log, :basketball_score
  attr_reader :name, :energy_level, :phrases

  def initialize (name = 'name', energy_level = 100, phrases = [])
    @name = name
    @energy_level = energy_level
    @phrases = phrases
    self.interact_log = 0 
    self.basketball_score = 0 
  end

  def energy_level=(value)
    (value.to_s =~ /\d/)? (@energy_level = value) : (raise 'Needs to be an integer!')
  end

  def increase_energy_level
    @energy_level += 10
  end

  def decrease_energy_level
    @energy_level -= 10
  end

  def add_phrase(value)
    (value =~ /[a-zA-Z]/)? (@phrases.push(value)) : (raise 'Needs to be a string!')
  end

  def remove_phrase(value)
    (value =~ /[a-zA-Z]/)? (@phrases -= [value]) : (raise 'Needs to be a string!')
  end

  def move_boxes(value)
    (value.to_s =~ /\d/)? (@energy_level -= value) : (raise 'Needs to be an integer!')
  end

  def describe_self
    print "\nHi my name is #{@name}."
    # this is nice incase a block isn't passed! :) 
    yield if block_given?
    puts '(looks at camera)'
  end

end