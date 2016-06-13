nice_movie_printer = Proc.new do |title, rating|
  rating = 0 unless rating
  puts "============"
  puts "Title: #{title.capitalize}"
  puts "Raiting: #{'*' * rating}"
  puts "============"
end

#Soft arg matching
nice_movie_printer.call "iron man"
nice_movie_printer.call "iron man", 8.3

##################################################

class Calculator
  attr_accessor :adder_proc

  def add(a, b, c)
    r = adder_proc.call(a, b, c)

    puts "#{a} + #{b} + #{c} = #{r}" #THIS NEVER IS DISPLAYED BECAUSE THE RETURN ON THE RETURN ON THE PROCEDURE
  end
end

def hard_return_example
  proc_example= Proc.new do |a, b, c|
    c = 0 unless c

    r = a + b + c
    puts "result inside proc: #{r}"
    return r
  end

  puts "Starting example..."

  calculator = Calculator.new
  calculator.adder_proc = proc_example
  calculator.add(1, 2, 3)

  puts "Finishing example..." #THIS IS NEVER DISPLAYED BECAUSE THE RETURN ON THE PROCEDURE
end

hard_return_example

failing_hard_return_example = Proc.new do |msg|
  puts msg
  return
end

failing_hard_return_example.call "Hello World!"
puts "FINISHING..." #THIS IS NEVER DISPLAYED BECAUSE THE PREVIOUS LINE WILL RAISE: unexpected return (LocalJumpError) 

