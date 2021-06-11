require_relative '../config/environment.rb'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

artist1 = Artist.new("John", 2)
artist2 = Artist.new("Kimberly", 7)
artist3 = Artist.new("Dani", 8)
artist4 = Artist.new("Eten", 10)

gallery1 = Gallery.new("Gallery1", "Paris")
gallery2 = Gallery.new("Gallery2", "Addis Ababa")
gallery3 = Gallery.new("Gallery3", "Chicago")
gallery4 = Gallery.new("Gallery4", "New Jersey")

painting1 = Painting.new("Mona Lisa", 99999, artist4, gallery1) 
painting2 = Painting.new("El Salvador", 2, artist3, gallery3)
painting3 = Painting.new("Water Serpent", 50000, artist2, gallery2)
painting4 = Painting.new("Starry Night", 5, artist1, gallery1)

painting5 = Painting.new("Mona Lisa", 122, artist1, gallery4) 
painting6 = Painting.new("El Salvador", 1, artist2, gallery2)
painting7 = Painting.new("Water Serpent", 12, artist3, gallery1)
painting8 = Painting.new("Starry Night", 3435, artist4, gallery3)






binding.pry

puts "Bob Ross rules."
