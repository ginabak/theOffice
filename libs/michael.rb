require_relative 'office'
require_relative 'dwight'
require_relative 'jim'
require_relative 'mixins'

class MichaelScott < TheOfficeCharacter
  attr_reader :character_list

  def initialize (love_interest = ['Holly Flax'], energy_level = 100)
    super('Michael Scott', 'Regional Manager', love_interest, energy_level)
    @character_list = {
      'Michael Scarn' => ['Go puck yourself!', "It'll take a lot more than a bullet to the brain, lungs, heart, back and balls to kill Michael Scarn!"],
      'Prison Mike' => ['Do you know why they call me Prison Mike?','Gruel sandwiches. Gruel omelettes. Nothing but gruel.'], 
      'Santa Bond' => ['The name is Bond. Santa Bond.', "I'd like my eggnog shaken, not stirred. Classic Brosnan."],
    }
    @phrases = ['I am Beyonce, always',"Ping? Everybody loves Ping. He's my most popular character.",
      "That's what she said.", 'Fool me once, strike one. Fool me twice, strike three.', "I'm not superstitious, I'm just a little stitious.", 
      "I feel like all my kids grew up, and then they married each other. It's every parents' dream.", 
      'I am running away from my responsibilities. And it feels good.', 'Saw Inception. Or at least I dreamt I did.', 
      "I'm an early bird and I'm a night owl. So I'm wise and I have worms.", 'Kids, just remember, suicide is never the answer.']
  end

  def add_character(character, string)
    (string =~ /[a-zA-Z]/)? (@character_list[character.to_s] = [string]) : (raise 'Needs to be a string!')
  end

  def act_character(character)
    character_hash = @character_list[character.to_s]
    (@character_list.has_key?(character))? (puts "I am #{character}! #{character_hash[rand(0...(character_hash.length))]}") : (raise "This isn't part of Michael's characters!")
  end

end

