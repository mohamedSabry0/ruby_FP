def test1(x)
  x / 2.0
end

def test2(x)
  x /4.0 + 1
end

def test3(func, num)
  func.call(num) + num
end

dlgt_test1 = method(:test1)
dlgt_test2 = method(:test2)

z = [dlgt_test1, dlgt_test2]

puts test2(test1(5))
puts test1(test2(5))

puts z[0].call(5)
puts z[1].call(5)


p test3(method(:test1), 5)
p test3(method(:test2), 5)