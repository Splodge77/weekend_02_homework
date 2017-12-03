class Room

  attr_reader :number, :song
  def initialize(input_number, input_song)
    @number = input_number
    @song = input_song
  end

  def play_song(song)
    return "Playing #{song}"
  end

end
