#require_relative painting.rb

class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @all
  end

  def paintings
    array = []
    Painting.all.each do |painting|
      if painting.artist == self
        array << painting
      end
    end
    array
  end

  def galleries
    array = []
    self.paintings.each{ |painting|
      if painting.artist == self
        array << painting.gallery
      end

    }
    array
  end

  def cities
    array = []
    self.paintings.each { |painting|
    if painting.artist == self
      array << painting.gallery.city
    end
    }
    array


  end

  def  total_experience
    sum = 0
    @@all.each {|a| sum +=a.years_experience }
    sum
  end

  def most_prolific
    max = 0
    max_artist = nil
    @@all.each{ |artist|
      if (artist.paintings.count*1.0/artist.years_experience) > max
        max = (artist.paintings.count*1.0/artist.years_experience) 
        max_artist = artist
      end
    }
    max_artist
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
