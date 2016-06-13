class Person
  attr_writer :first_name, :last_name

  def nice_print
    puts "*** #{@first_name.capitalize} - #{@last_name.capitalize} ***"
  end
end


Person.new.tap do |p|
  p.first_name = "luke"
  p.last_name  = "skywalker"
end.nice_print

