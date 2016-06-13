class Calculator
  def sum_two(a, b)
    return a + b
  end

  def sum_three(a, b, c)
    return a + b + c
  end
end

puts Calculator.new.sum_two(1, 2)
puts Calculator.new.sum_three(1, 2, 3)


# # # # # # # # # #
# A Ruby version  #
# # # # # # # # # #

class Calculator
  def sum(*numbers)
    a = numbers[0]
    b = numbers[1]
    c = numbers[2] == nil ? 0 : numbers[2]

    return a + b + c
  end
end

puts Calculator.new.sum(1, 2)
puts Calculator.new.sum(1, 2, 3)
