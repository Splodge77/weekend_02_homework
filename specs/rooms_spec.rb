require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../songs.rb')
require_relative('../guests.rb')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new(1, @songs)
    @song1 = Song.new("Me and Bobby M'gee", "Janis Joplin")
    @song2 = Song.new("Sunny Afternoon", "The Kinks")
    @song3 = Song.new("Somebody to Love", "Queen")
    @songs = [@song1, @song2, @song3]
    @guest1 = Guest.new("James Dean")
  end

  def test_room_name
    assert_equal(1, @room.number)
  end

  def test_room_has_songs
    assert_equal(3, @songs.length())
  end

  def test_song_plays
    @room.play_song()
    assert_equal("Playing 'Somebody to Love' by 'Queen', for James Dean", 
end
