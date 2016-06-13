def f(n)
  return (1..n).inject(&:*)
end

puts(f(5))
puts("=====================")
puts(f(15))
puts("=====================")
puts(f(50))
puts("=====================")

