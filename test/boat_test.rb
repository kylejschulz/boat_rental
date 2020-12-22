require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
class RenterTest < Minitest::Test
  def setup
    @kayak = Boat.new(:kayak, 20)    # => #<Boat:0x00007fceac8f0480...>

  end

  def test_it_exists
    assert_instance_of Boat, @kayak

  end

  def test_it_has_attributes
    assert_equal :kayak, @kayak.type# => :kayak
    assert_equal 20, @kayak.price_per_hour# => 20
  end

  def test_it_can_have_different_attributes
    assert_equal 0, @kayak.hours_rented# => 0
    @kayak.add_hour
    @kayak.add_hour
    @kayak.add_hour
    assert_equal 3, @kayak.hours_rented# => 3
  end


end
