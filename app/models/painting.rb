class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end

  def total_price
    sum = 0
    @@all.each {|a| sum += a.price }
    sum
  end

end
