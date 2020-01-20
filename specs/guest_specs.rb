require('minitest/autorun')
require('minitest/reporters')

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestGuest < Minitest::Test

  def setup()

    @guest1 = Guest.new('Phil')
    @guest2 = Guest.new('Bob')

  end

  def test_guest_has_name
    assert_equal('Phil', @guest1.guest_name)
  end

end
