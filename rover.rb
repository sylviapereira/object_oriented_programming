class Rover
  attr_accessor = :x_co, :y_co, :direction

  def initialize(x_co, y_co, direction)
    @x_co = x_co.to_i
    @y_co = y_co.to_i
    @direction = direction.to_s.upcase
  end

#  def get_start
#    puts "Rover initial start position: (x y N/E/S/W)"
#    x, y, d = gets.chomp.split(" ")
#  end



  def read_instruction(chr)
    if @direction == "N"
      if chr == "L"
#        @x_co -= 1
        @direction = "W"
      elsif chr == "R"
  #      @x_co += 1
        @direction = "E"
      else chr == "M"
        @y_co += 1
      end

    elsif @direction == "E"
      if chr == "L"
#        @y_co += 1
        @direction = "N"
      elsif chr == "R"
#        @y_co -= 1
        @direction = "S"
      else chr == "M"
        @x_co += 1
      end

    elsif @direction == "S"
      if chr == "L"
#        @x_co += 1
        @direction = "E"
      elsif chr == "R"
#        @x_co -= 1
        @direction = "W"
      else chr == "M"
        @y_co -= 1
      end

    else @direction == "W"
      if chr == "L"
#        @y_co -= 1
        @direction = "S"
      elsif chr == "R"
#      @y_co += 1
        @direction = "N"
      else chr == "M"
        @x_co -= 1
      end
    end
  end

def final_co
  puts "Final position: #{@x_co} #{@y_co} #{@direction}"
end

end

puts "Plateau size: (x y)"
plateau_size = gets.chomp.split(" ")

puts "Rover 1 initial start position: (x y d)"
rover1_start = gets.chomp.split(" ")
rover1 = Rover.new(rover1_start[0], rover1_start[1], rover1_start[2])
puts "Rover 1 start position: x:#{rover1_start[0].to_s} y:#{rover1_start[1].to_s} d:#{rover1_start[2].to_s.upcase}"
puts "Rover 1 instructions:"
  rover_instructions = gets.chomp.upcase.split("")
    rover_instructions.each{ |chr| rover1.read_instruction(chr) }
rover1.final_co

puts "Rover 2 initial start position: (x y d)"
rover2_start = gets.chomp.split(" ")
rover2 = Rover.new(rover2_start[0], rover2_start[1], rover2_start[2])
puts "Rover 2 start position: x:#{rover2_start[0].to_s} y:#{rover2_start[1].to_s} d:#{rover2_start[2].to_s.upcase}"
puts "Rover 2 instructions:"
  rover_instructions = gets.chomp.upcase.split("")
    rover_instructions.each{ |chr| rover2.read_instruction(chr) }
rover2.final_co
