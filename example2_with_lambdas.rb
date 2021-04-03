data = [7, 4, 5, 6, 3, 8, 10]

# doing some setup to be able to pass a function directly as in LINQ's select
# along with lambdas (syntax for lambdas is either 'lambdas' or '->')
class Array
  def my_map(func)
    map(&func)
  end
end



add_one = -> (x) do
  x + 1
end

subtract_ten = -> (x) do
  x - 10
end

square = -> (x) do
  x ** 2
end

puts data.my_map(add_one).my_map(square).my_map(subtract_ten)