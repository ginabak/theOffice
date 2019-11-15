require_relative 'office'
require_relative 'michael'
require_relative 'dwight'
require_relative 'jim'
require_relative 'mixins'
require_relative 'warehouse'
require_relative 'nate'
require_relative 'roy'
require_relative 'darryl'

# Interaction between classes 

# Creating new instances of classes
jim = JimHalpert.new
michael = MichaelScott.new
dwight = DwightSchrute.new
roy = RoyAnderson.new
darryl = DarrylPhilbin.new
nate = NateNickerson.new


puts jim.energy_level

jim.add_prank('pretending my hotel room was a murder scene')
puts "Jim's current prank list is: #{jim.prank_list}\n\n"

jim.remove_prank('pretending my hotel room was a murder scene')
puts "Jim's prank list is now: #{jim.prank_list}\n\n"
jim.add_prank('pretending my hotel room was a murder scene')

puts "Michael's energy is: #{michael.energy_level}\n"
michael.add_character('Michael Klump','I am beautiful. They are beautiful. He is beautiful. That big fat pig is beautiful.')
jim.make_phone_call(michael)
michael.make_phone_call(jim)
jim.sell_paper(6)



dwight.show_weapon(jim)
dwight.sell_paper(100)

dwight.make_phone_call(jim)
jim.make_phone_call(michael)

michael.compare_phone_log(jim)

dwight.compare_phone_log(jim)

jim.compare_sales(dwight)
jim.prank(michael, dwight)
jim.describe_self {print jim.name}

michael.act_character('Prison Mike')
michael.act_character('Michael Klump')

jim.play_basketball(dwight)
roy.wedding_date(5)
jim.compare_energy_level(dwight)
dwight.play_basketball(roy)
dwight.decrease_energy_level
darryl.interact(jim)
jim.compare_energy_level(dwight)
nate.explain_hearing(michael)

michael.describe_self {puts " I'm the world's greatest boss."}
darryl.annoyed
darryl.describe_self



