test1 = -> (x) do
  x / 2.0
end

test2 = -> (x) do
  x /4.0 + 1
end

def test3(func, num)
  func.call(num) + num
end

dlgt_test1 = test1
dlgt_test2 = test2

z = [dlgt_test1, dlgt_test2]

puts test2.call(test1.call(5))
puts test1.call(test2.call(5))

puts z[0].call(5)
puts z[1].call(5)


p test3(test1, 5)
p test3(test2, 5)
