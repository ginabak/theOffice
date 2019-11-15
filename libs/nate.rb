require_relative 'warehouse'
require_relative 'michael'
require_relative 'jim'
require_relative 'mixins'
require_relative 'dwight'
require_relative 'darryl'
require_relative 'office'

class NateNickerson < TheWarehouseStaff

  attr_reader :hearing_level

  def initialize (energy_level = 95)
    super('Nate Nickerson', energy_level)
    @hearing_level = 50
    @phrases = ["Gum's gotten mintier lately, have you noticed?", 'Also FYI, I don’t technically have a hearing problem.',
      'Sometimes when there’s a lot of noises occurring at the same time, I’ll hear ‘em as one big jumble.', 
      'Again, it’s not that I can’t hear, uh because that’s false. I can. I just can’t distinguish between everything I’m hearing' ]
  end

  def explain_hearing (character)
    puts "\n#{@name} says to #{character.name}: I have trouble hearing. My hearing level is at a #{@hearing_level} out 100."
  end

end
