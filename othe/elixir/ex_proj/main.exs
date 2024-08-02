# contoh perulangan yang mudah dimengerti orang awam
for i <- 1..10 do
  IO.puts i
end

IO.puts "--------"

# atau bisa juga menggunakan Enum
Enum.each(1..10, fn(i) -> IO.puts i end)
