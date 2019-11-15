require_relative 'office'
require_relative 'michael'
require_relative 'jim'
require_relative 'mixins'
require_relative 'warehouse'
require_relative 'nate'
require_relative 'darryl'
require_relative 'dwight'
require 'time'


class RoyAnderson < TheWarehouseStaff

  attr_reader :interest_in_pam

  def initialize (energy_level = 70)
    super('Roy Anderson', energy_level)
    @phrases = ["I'm gonna kill Jim Halpert.", "So Pam's happy?", 
      "My brother, he just unloaded the jet ski's and kinda took a bath, so... we're going to go get hammered."]
    @interest_in_pam = 90
  end

  def wedding_date(value)
    (value > 1)? (@interest_in_pam -= value) : (@interest_in_pam += value)
    current_date = Time.new
    puts "At this rate, #{@name} will get married in the year: #{current_date.year + value}!\nDoes he even love Pam?\n"
  end

end
