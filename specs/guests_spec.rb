require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("James Dean")
  end

  def test_guest_name
    assert_equal("James Dean", @guest.name)
  end

end
