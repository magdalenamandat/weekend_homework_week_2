require("minitest/autorun")
require_relative("../guest.rb")
require_relative("../song.rb")

class GuestTest < MiniTest::Test

  def setup
    @song1 = Song.new("It's my life")
    @song2 = Song.new("How will I know")
    @song3 = Song.new("Roxanne")
    @guest1 = Guest.new("Graeme", 300)
    @guest2 = Guest.new("Rod", 50)
    @guest3 = Guest.new("Emilie", 150)
  end

  def test_guest_has_name
    assert_equal("Graeme", @guest1.name())
  end

  def test_guest_has_money
    assert_equal(50, @guest2.wallet())
  end




end
