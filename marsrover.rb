#marsrover.rb



class Rover

	attr_accessor :x, :y, :direction

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end


	def to_s
	 	"#{@x}, #{@y}, #{@direction}"
	end


	
	def read_instruction
		input = gets.chomp
		if input == "M"
			move
		else 
			turn(input)
		end
			puts "You are now at #{self}."
	end

	def move
		case direction
			when "N"
				@y += 1
			when "S"
				@y -= 1
			when "E"
				@x += 1
			when "W"
				@x -= 1
			else puts "Try again."
		end
	end

	def turn(turn_direction)

		dirs = ["N", "E", "S", "W"]
		pos = dirs.index(direction)

		case turn_direction
			when "L"
				pos -= 1
			when "R"
				pos += 1
			else 
			 	puts "Type in 'M', 'R' or 'L'."
			return
		end
	
		pos = pos % 4
		@direction = dirs[pos]
	end

end

rover = Rover.new(0, 0, "N")
puts "Your current position is #{rover}."

	 loop do
		puts "Enter 'M' to move forward, 'R' to turn right or 'L' to turn left."
		rover.read_instruction
	end
	
# figure out how to break loop
#figure out how to .upcase the gets so people can use lower case or upper case




