require 'minitest/autorun'
require 'warehouse'
require 'roy'
require 'nate'
require 'darryl'
require 'mixins'


class TestWarehouseCharacter < Minitest::Test 

  def setup
    @thewarehouse = TheWarehouseStaff.new
    @nate = NateNickerson.new
    @roy = RoyAnderson.new 
    @darryl = DarrylPhilbin.new 
  end

  def test_if_nate_name_is_correct
    actual = @nate.name 
    expected = 'Nate Nickerson'
    assert_equal(expected, actual)
  end

  def test_if_move_boxes_method_works_with_nate
    @nate.move_boxes(10)
    actual = @nate.energy_level 
    expected = 85
    assert_equal(expected, actual)
  end

  def test_if_roy_pam_attribute_works
    @roy.wedding_date(2)
    actual = @roy.interest_in_pam
    expected = 88
    assert_equal(expected,actual)
  end

  def test_if_darryl_energy_changes_in_annoyed_method
    @darryl.annoyed
    actual = @darryl.energy_level
    expected = 50
    assert_equal(expected, actual)
  end


end
