require "colorize"

puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"
puts "this is ruby learning"

class Colorizer
  def self.print_colored_text
    puts "this is blue text".colorize(:blue)
    puts "this is red text".colorize(:red)
  end
end

Colorizer.print_colored_text

# tiga jenis iterasi umum

# times-loop
2.times do
  puts "ayo kita berhitung"
end

i = 0
# while-loop
while i <= 10
  puts "hitungan ke #{i}"
  i += 1
end

# for-loop
for j in 11..20
  puts "hitungan ke #{j}"
end

# each_method-loop
(21..30).each do |k|
  puts "hitungan ke #{k}"
end

# until-loop
l = 31
until l > 40
  puts "hitungan ke #{l}"
  l += 1
end
