class Room

  attr_reader :number, :song, :guests, :till
  def initialize(input_number, input_song)
    @number = input_number
    @song = input_song
    @guests = []
    @till = 100
  end

  def play_song(song)
    "Playing #{song}"
  end

  def add_guest(guest)
    @guests << guest
  end

  def check_out_all()
    @guests.clear
  end

  def guests_in_room()
    return @guests.length
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

end
