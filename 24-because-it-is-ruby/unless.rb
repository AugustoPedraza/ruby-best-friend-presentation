def capitalize_name(name)
  unless name # if !name
    "<unknown>"
  else
    name.capitalize
  end
end

puts capitalize_name(nil)
puts capitalize_name("steve rogers")

