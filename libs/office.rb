require_relative 'mixins.rb'

=begin
I realize that it would be ideal to have a major super class so that most of the methods aren't repeated.
To save time, I shall leave both classes as is.   
=end

class TheOfficeCharacter
  include RandomizedPhrase
  include Compare
  include MakeSale
  include PlayBasketball

  attr_accessor :phone_log, :interact_log, :paper_sale, :basketball_score
  attr_reader :name, :job_title, :love_interest, :energy_level, :phrases

  def initialize (name = 'name', job_title = 'Sales Person', love_interest = [], energy_level = 100, phrases = [])
    @name = name
    @job_title = job_title
    @love_interest = love_interest
    self.energy_level = energy_level
    @phrases = phrases
    self.phone_log = 0 
    self.interact_log = 0
    self.paper_sale = 0
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

  def add_love_interest(value)
    (value =~ /[a-zA-Z]/)? (@love_interest.push(value)) : (raise 'Needs to be a string!')
  end

  def remove_love_interest(value)
    (value =~ /[a-zA-Z]/)? (@love_interest -= [value]) : (raise 'Needs to be a string!')
  end

  def describe_self
    print "\nHi my name is #{@name}."
    # this is nice incase a block isn't passed! :) 
    yield if block_given?
    puts '(looks at camera)'
  end

end