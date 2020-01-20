require('minitest/autorun')
require('minitest/reporters')

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestRoom < Minitest::Test

  def setup()

    @guest1 = Guest.new('Phil')
    @guest2 = Guest.new('Bob')

    @song1 = Song.new('After Midnight')
    @song2 = Song.new('Shady Grove')
    @song3 = Song.new('Friend of the Devil')

    @room = Room.new('Jerrys Room')

  end

  def test_room_has_name
    assert_equal('Jerrys Room', @room.room_name)
  end

  def test_room_count
    assert_equal(0, @room.room_count)
  end

  def test_song_count
    assert_equal(0, @room.song_count)
  end

  def test_add_guest_to_room
    guest = @guest1
    @room.add_guest(guest)
    assert_equal(1, @room.room_count)
  end

  def test_remove_guest_from_room
    guest = @guest1
    @room.remove_guest(guest)
    assert_equal(0, @room.room_count)
  end

  def test_add_song_to_queue
    song = @song1
    @room.add_song(song)
    assert_equal(1, @room.song_count)
  end 

end
