require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("James Dean", 10)
  end

  def test_guest_name
    assert_equal("James Dean", @guest.name)
  end

  def test_guest_has_funds
    assert_equal(10, @guest.wallet)
  end
  
end
