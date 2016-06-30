print "Ingrese hasta donde quiere la potencias de 2: "
num = gets.chomp
num = num.to_i

for i in (0..num)
  print "#{2**i}  "
end
puts ""
