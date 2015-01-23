#marsrover.rb
	

# There is still two problems with this code that I am aware of 1) it doesn't let the user input a string of instructions 
#2) I need to use the defaoult settings to reset the co-ordinates for Rover 2

class Rover

	attr_accessor :x, :y, :direction

	def initialize(x = 0, y = 0, direction = "N'")
		@x = x
		@y = y
		@direction = direction
	end


	def to_s
	 	"#{@x}, #{@y}, #{@direction}"
	end


	
	def read_instruction
		5.times  do input = gets.chomp
		#end- should end here but breaks the code and don't have time to figure it out why but will on the weekend
			if input.upcase == "M"
				move
			else 
				turn(input)
			end
				puts "You are now at #{self}."
		end
		
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

	i = 0
	loop do
		i += 1
			puts "Enter 'M' to move forward, 'R' to turn right or 'L' to turn left."
			rover.read_instruction
		break if i == 2
	end
	






