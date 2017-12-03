require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class SongsTest < MiniTest::Test

  def setup
    @song = Song.new("Me and Bobby M'gee", "Janis Joplin")
  end

  def test_song_name
    assert_equal("Me and Bobby M'gee", @song.title)
  end

  def test_song_artist
    assert_equal("Janis Joplin", @song.artist)
  end

end
