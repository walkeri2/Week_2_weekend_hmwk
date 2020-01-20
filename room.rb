class Room

attr_accessor :room_name

  def initialize(room_name)

    @room_name = room_name
    @song_queue = []
    @room_occupants = []


  end

  def room_count
    return @room_occupants.count
  end

  def song_count
    return @song_queue.count
  end

  def add_guest(guest)
    @room_occupants << (guest)
  end

  def remove_guest(guest)
    @room_occupants.pop
  end

  def add_song(song)
    @song_queue << (song)
  end

end
