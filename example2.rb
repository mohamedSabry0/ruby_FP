data = [7, 4, 5, 6, 3, 8, 10]

def add_one(x)
  x + 1
end

def subtract_ten(x)
  x - 10
end

def square(x)
  x ** 2
end

#Imparative

data.each do |x|
  puts(subtract_ten(square(add_one(x))))
end

puts '======='

#Declarative

puts data.map(&method(:add_one)).map(&method(:square)).map(&method(:subtract_ten))
