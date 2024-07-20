array = [0, 1, 2, 3, 4, 5]
# Loop
puts "Perulangan Loop"
array.each do |i|
  puts i
end

# Rekursi
puts "\nPerulangan Rekursi"
def loop_recursion(angka)
  if angka == 5
    puts angka
  else
    puts angka
    loop_recursion(angka + 1)
  end
end
loop_recursion(0)
