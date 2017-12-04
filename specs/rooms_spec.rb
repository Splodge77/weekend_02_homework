require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../songs.rb')
require_relative('../guests.rb')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new(1, @songs, @till)

    @song1 = Song.new("Me and Bobby M'gee", "Janis Joplin")
    @song2 = Song.new("Sunny Afternoon", "The Kinks")
    @song3 = Song.new("Somebody to Love", "Queen")

    @songs = [@song1, @song2, @song3]

    @guest1 = Guest.new("James")
    @guest2 = Guest.new("Jebediah")
    @guest3 = Guest.new("Jemima")

    @guests = [@guest1, @guest2, @guest3]

    @till = 100

  end

  def test_room_number
    assert_equal(1, @room.number)
  end

  def test_room_has_songs
    assert_equal(3, @songs.length())
  end

  # def test_song_plays
  #   assert_equal("Playing Somebody to Love", @room.play_song([@song3]))
  # end

  def test_room_empties
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.check_out_all
    assert_equal(0, @room.guests_in_room)
  end

  def test_guest_added
    @room.add_guest(@guest1)
    assert_equal(1, @room.guests_in_room)
  end

  def test_guest_remove
    @room.remove_guest(@guest1)
    assert_equal(0, @room.guests_in_room)
  end

  def test_fee_collected
    @room.collect_fee(guest1)

end
