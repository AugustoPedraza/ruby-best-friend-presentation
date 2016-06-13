class Person
  def initialize last_name, first_name
    @first_name = first_name
    @last_name = last_name
  end

  def age= age
    @age = age
  end

  def + years
    @age += years
  end

  def print_age
    puts @age
  end
end

b = Person.new("wayne", "bruce")
b.age = 34
b + 6
b.print_age
