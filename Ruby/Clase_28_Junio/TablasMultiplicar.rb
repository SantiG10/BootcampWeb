print "Ingrese el numero N: "
num = gets.chomp
num = num.to_i

for i in(1..20)
  puts "#{i} * #{num}: #{i * num}"
end  
