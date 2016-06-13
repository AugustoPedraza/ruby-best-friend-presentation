system 'clear'
class Calculator
  attr_accessor :adder_lambda

  def add(a, b, c)
    r = adder_lambda.call(a, b, c)

    puts "#{a} + #{b} + #{c} = #{r}"
  end
end

def soft_return_example
  lambda_example= lambda do |a, b, c|
    r = a + b + c
    puts "result inside lambda: #{r}"
    return r
  end

  puts "Starting example..."

  calculator = Calculator.new
  calculator.adder_lambda = lambda_example
  calculator.add(1, 2, 3)

  puts "Finishing example..."
end

soft_return_example

##################################################
#Hard arg matching
##################################################

nice_movie_printer = lambda do |title, rating|
  rating = 0 unless rating
  puts "============"
  puts "Title: #{title.capitalize}"
  puts "Raiting: #{'*' * rating}"
  puts "============"
end

nice_movie_printer.call "iron man", 8.3
nice_movie_printer.call "iron man" #THIS NEVER WILL BE DISPLAYED BECAUSE THE PREVIOUS LINE WILL RAISE: wrong number of arguments (1 for 2) (ArgumentError)

