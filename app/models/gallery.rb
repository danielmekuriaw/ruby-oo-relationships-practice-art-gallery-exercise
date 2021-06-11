class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def galleries
    #1 Find the correct artist using enumerable
    Artist.all.each do |gallery|
      gallery.() == self
    end
    #2 store all the galleries the artist has paintings
    #in a new array using 
  
  end

  def self.all
    @@all
  end

  def paintings
    array = []
    Painting.all.each {|painting|
     if painting.gallery == self
      array << painting
     end
    }
    array
  end

  def artists
    array = []
    Painting.all.each{ |painting|
      if painting.gallery == self
        array << painting.artist
      end
    }
    array
  end

  def artist_names
    array = []
    self.artists.each{ |artist|
      array << artist.name
    }
    array
  end

  def most_expensive
    max = 0
    max_painting = nil
    self.paintings.each {|painting|
    if painting.price > max
      max = painting.price
      max_painting = painting
    end
    }
    max_painting
  end

end
