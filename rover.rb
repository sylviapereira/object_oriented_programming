class Rover
  attr_accessor = :x_co, :y_co, :direction

  def initialize(x_co, y_co, direction)
    @x_co = x_co
    @y_co = y_co
    @direction = direction
  end


  def read_instruction
    if d == n
      if l
        x - 1
      elsif r
        x + 1
      else m
        y + 1
      end

    elsif d == e
      if l
        y + 1
      elsif r
        y - 1
      elsif m
        x + 1
      end

    elsif d == s
      if l
        x + 1
      else r
        x - 1
      elsif m
        y - 1
      end

    elsif d == w
      if l
        y - 1
      else r
        y + 1
      elsif m
        x - 1
      end


    end


end
