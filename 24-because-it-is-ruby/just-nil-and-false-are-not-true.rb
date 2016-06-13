def nice_print(movie_title)
  if movie_title
    puts movie_title.capitalize
  else
    puts "<invalid title name>"
  end
end

nice_print nil
nice_print false
nice_print "wolwerine origins"

