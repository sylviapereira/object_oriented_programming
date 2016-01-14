class Rover
  attr_accessor = :x_co, :y_co, :direction

  def initialize(x_co, y_co, direction)
    @x_co = x_co
    @y_co = y_co
    @direction = direction
  end

  puts "Plateau size: (x y)"
  plateau_size = gets.chomp.split(" ")

  puts "Rover 1 initial start position: (x y N/E/S/W)"
  x, y, d = gets.chomp.split(" ")

  puts "Rover 1 instructions:"
  rover1_instructions = gets.chomp
  rover1_instructions.each! do |read| #or map?
    read.read_instruction
  end

  puts "Rover 2 initial start position: (x y N/E/S/W)"
  x2, y2, d2 = rover2_init = gets.chomp.split(" ")

  puts "Rover 2 instructions:"
  rover2_instructions = gets.chomp.split(" ")

  def read_instruction
    if d == "N"
      if l
        x_co - 1,
        d == W
      elsif r
        x_co + 1,
        d = E
      else m
        y + 1
      end

    elsif d == "E"
      if l
        y + 1,
        N
      elsif r
        y - 1
        S
      elsif m
        x + 1
      end

    elsif d == "S"
      if l
        x + 1
        E
      else r
        x - 1
        W
      elsif m
        y - 1
      end

    elsif d == "W"
      if l
        y - 1
        S
      else r
        y + 1
        N
      elsif m
        x - 1
      end


    end


end
