require_relative 'office'
require_relative 'michael'
require_relative 'dwight'
require_relative 'mixins'


class JimHalpert < TheOfficeCharacter
  attr_reader :prank_list 

  def initialize (love_interest = ['Pam Beesley'], energy_level = 60)
    super('Jim Halpert', 'Sales Person', love_interest, energy_level)
    @prank_list =  ['putting stapler in Jello', 'selling magic beans', "convincing them that it's Friday instead of Thursday",
      'pretending to be Asian', 'building a pencil fence around them', 'adding extra keys to their key ring']
    @phrases = ['I was mocking', 'My roommate wants to meet everybody. Because I’m pretty sure he thinks I’m making Dwight up. He is very real.',
      'I am about to do something very bold in this job that I’ve never done before: try.', 'I miss Dwight. Congratulations, universe. You win.',
      'Dwight finding drugs is more dangerous than most people using drugs.', 'False. Black bear.']
  end

  def remove_prank(prank)
    (prank =~ /[a-zA-Z]/)? (@prank_list -= [prank]) : (raise 'Needs to be a string!')
  end

  def add_prank(prank)
    (prank =~ /[a-zA-Z]/)? (@prank_list.push(prank)) : (raise 'Needs to be a string!')
  end

  def prank(partner_in_crime, prank_victim)
    increase_energy_level
    prank_victim.decrease_energy_level
    random_index = rand(0...(@prank_list.length))
    prank = @prank_list[random_index]
    puts "\n#{@name} just pranked #{prank_victim.name} by #{prank} with #{partner_in_crime.name}."
  end
end