adder_proc = Proc.new do |a, b, c|
  a ||= 0
  b ||= 0
  c ||= 0

  a + b + c
end

puts adder_proc.call
puts adder_proc.call(1, 2)
puts adder_proc.call(1, 2, 3)

