def movies_printer(movies)
  retry_count = 0

  movies.each do |m|
    puts m

    if retry_count < 3
      retry_count += 1
      redo
    end

  end
end



movies_printer ["Pulp fiction", "Gladiator", "Beautiful Mind", "V for Vendetta", "The Pursuit of Happyness"]
