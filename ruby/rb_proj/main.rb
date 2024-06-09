require 'colorize'

class Colorizer
	def self.print_colored_text
		puts "this is blue text".colorize(:blue)
		puts "this is red text".colorize(:red)
	end
end

Colorizer.print_colored_text
