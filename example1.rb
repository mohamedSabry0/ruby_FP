class Hello
  def initialize(x1, y1)
    @x = x1
    @y = y1
  end

  def get_z(v)
    if (@x > 10)
      z = (@x + @y) / 2 + v
    else
      z = (@x + @y) / 2 + v
    end

    z
  end

  def update_x(v)
    @x = @y + 2 * v
  end

  def update_y(v)
    @y = @x - 2 * v
end