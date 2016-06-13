class Person
  def initialize(first_name, last_name)
    @first_name, @last_name = first_name, last_name
  end

  def nice_print
    puts "*** #{@first_name.capitalize} - #{@last_name.capitalize} ***"
  end
end


Person.new("luke", "skywalker").nice_print

