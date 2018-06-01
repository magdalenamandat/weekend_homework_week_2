class Room

  attr_reader :number, :price, :guests

  def initialize(number, price)
    @number = number
    @price = price
    @songs = []
    @guests = []
  end

  def check_in(guest)
    @guests.push(guest)
  end

  def check_out(guest)
    @guests.delete(guest)
  end

  def songs_length()
    return @songs.length()
  end

  def guests_length()
    return @guests.length()
  end

  def add_song(song)
    @songs.push(song)
  end

end
