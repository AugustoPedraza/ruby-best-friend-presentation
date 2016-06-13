favourite_movies_by_year = ["Pulp fiction", "Gladiator", "Beautiful Mind", "V for Vendetta", "The Pursuit of Happyness"]

def print_without_firt_three(collection)
  3.upto(collection.length - 1) { |index| puts collection[index]}
end

print_without_firt_three favourite_movies_by_year
