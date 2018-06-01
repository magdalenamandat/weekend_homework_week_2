require("minitest/autorun")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("It's my life")
    @song2 = Song.new("How will I know")
    @song3 = Song.new("Roxanne")
  end

  def test_song_has_title
    assert_equal("It's my life", @song1.title())
  end

end
