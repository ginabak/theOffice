require 'minitest/autorun'
require 'office'
require 'jim'
require 'dwight'
require 'michael'
require 'mixins'

class TestOfficeCharacter < Minitest::Test 

  def setup
    @theoffice = TheOfficeCharacter.new
    @jim = JimHalpert.new
    @dwight = DwightSchrute.new
    @michael = MichaelScott.new
  end

  def test_if_jim_name_is_correct
    actual = @jim.name 
    expected = 'Jim Halpert'
    assert_equal(expected, actual)
  end

  def test_if_dwight_name_is_correct
    actual = @dwight.name 
    expected = 'Dwight Schrute'
    assert_equal(expected, actual)
  end

# Definitely had an error before creating this test! Thank-you Derek!
  def test_if_michaels_phrases_removes_correctly
    phrases = ['I am Beyonce, always',"Ping? Everybody loves Ping. He's my most popular character.",
      "That's what she said.", 'Fool me once, strike one. Fool me twice, strike three.', "I'm not superstitious, I'm just a little stitious.", 
      "I feel like all my kids grew up, and then they married each other. It's every parents' dream.", 
      'I am running away from my responsibilities. And it feels good.', 'Saw Inception. Or at least I dreamt I did.', 
      "I'm an early bird and I'm a night owl. So I'm wise and I have worms."]
    @michael.remove_phrase('Kids, just remember, suicide is never the answer.')
    actual = @michael.phrases
    expected = phrases
    assert_equal(expected, actual)
  end
  
end
