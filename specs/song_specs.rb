require('minitest/autorun')
require('minitest/reporters')

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSong < Minitest::Test

  def setup()

    @song1 = Song.new('After Midnight')
    @song2 = Song.new('Shady Grove')
    @song3 = Song.new('Friend of the Devil')

  end

  def test_song_has_name
    assert_equal('After Midnight', @song1.song_name)
  end

end
