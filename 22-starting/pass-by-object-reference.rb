class Movie
  attr_accessor :title, :rating
end

def change_by_value(movie)
  movie = Movie.new
  movie.title = "Batman vs Superman - Dawn of justice"
  movie.rating = 7.8
  puts "#{movie.title} - #{movie.rating}"
end

def change_by_reference(movie)
  movie = Movie.new
  movie.title = "X-Men: Apocalypse"
  movie.rating = 8.3
  puts "#{movie.title} - #{movie.rating}"
end

def change_by_object_reference(movie)
  movie.title = "El secreto de sus ojos"
  movie.rating = 8.5
  puts "#{movie.title} - #{movie.rating}"
end

m = Movie.new
m.title = "Captain América: Civil War"
m.rating = 8.6

change_by_value(m) #It doesn't change the object m
puts "#{m.title} - #{m.rating}"
puts "------------------------"

change_by_reference(m) #It doesn't change the object m
puts "#{m.title} - #{m.rating}"
puts "------------------------"

change_by_object_reference(m) #It CHANGES the object values
puts "#{m.title} - #{m.rating}"

