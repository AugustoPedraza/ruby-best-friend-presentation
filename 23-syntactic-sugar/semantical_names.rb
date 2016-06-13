class Person
  def initialize(age)
    @age = age
  end

  def adult?
    return @age >= 18
  end
end


puts Person.new(17).adult?
puts Person.new(18).adult?

title = "toy story 3"
capitalized_title = title.capitalize
puts title
puts capitalized_title


title = "ice age"
capitalized_title = title.capitalize!
puts title
puts capitalized_title

