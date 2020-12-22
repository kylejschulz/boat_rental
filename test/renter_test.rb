require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'

class RenterTest < Minitest::Test
  def setup
    @renter = Renter.new("Patrick Star", "4242424242424242")    # => #<Renter:0x00007fb5ef98b118...>
  end

  def test_it_exists
    assert_instance_of Renter, @renter
  end

  def test_it_has_attributes
    assert_equal "Patrick Star", @renter.name# => "Patrick Star"
    assert_equal "4242424242424242", @renter.credit_card_number# => "4242424242424242"
  end

  def test_it_can_have_different_attributes
    skip 
  end
end
