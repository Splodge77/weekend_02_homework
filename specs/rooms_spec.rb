require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Me and Bobby M'gee", "Janis Joplin")
    @song2 = Song.new("Sunny Afternoon", "The Kinks")
    @song3 = Song.new("Somebody to Love", "Queen")
    songs = [@song1, @song2, @song3]
    @guest1 = Guest.new()
    @guest2 = Guest.new()
    @guest3 = Guest.new()
    guests = [@guest1, @guest2, @guest3]
    @room = Room.new(1)
  end

  def test_room_name
    assert_equal(1, @room.number)
  end

end
