require("minitest/autorun")
require_relative("../song.rb")
require_relative("../guest.rb")
require_relative("../room.rb")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("It's my life")
    @song2 = Song.new("How will I know")
    @song3 = Song.new("Roxanne")
    # @songs = []

    @guest1 = Guest.new("Graeme", 300)
    @guest2 = Guest.new("Rod", 50)
    @guest3 = Guest.new("Emilie", 150)

    @room1 = Room.new(222, 100)
    @room2 = Room.new(333, 100)
    @room3 = Room.new(444, 100)
  end

  def test_room_has_number
    assert_equal(222, @room1.number())
  end

  def test_room_has_price
    assert_equal(100, @room2.price())
  end

  def test_guest_check_in
    @room1.check_in(@guest1)
    assert_equal("Graeme", @room1.guests[0].name)
  end

  def test_guest_check_out
    @room1.check_in(@guest1)
     @room1.check_out(@guest1)
    assert_equal([], @room1.guests())
  end

  def test_add_song_to_room
    @room1.add_song(@song1)
    assert_equal(1, @room1.songs_length())
  end

end
