def movie_suggestion(age)
  if age >= 18
    return "Deadpool"
  else
    return "Toy Story"
  end
end

puts movie_suggestion(15)
puts movie_suggestion(18)


#####################
#                   #
# A ruby version... #
#                   #
#####################

def movie_suggestion(age)
  if age >= 18
    "Deadpool"
  else
    "Toy Story"
  end
end

puts movie_suggestion(15)
puts movie_suggestion(18)

