print "Juegos Ganados por A: "
num_ganados_a = gets.chomp
num_ganados_a = num_ganados_a.to_i

print "Juegos Ganados por B: "
num_ganados_b = gets.chomp
num_ganados_b = num_ganados_b.to_i

if num_ganados_a == 6 and num_ganados_b < 5
  puts "Gano A"
elsif num_ganados_b == 6 and num_ganados_a < 5
  puts "Gano B"
elsif num_ganados_a == 8 or num_ganados_b == 8
  puts "Invalido"
elsif num_ganados_a - num_ganados_b == 1
  puts "Aun no temrina"
elsif num_ganados_a - num_ganados_b >= 3 or num_ganados_b - num_ganados_a >= 3
  puts "Invalido"
elsif num_ganados_a == 7 and num_ganados_b < 7
  puts "Gano A"
elsif num_ganados_b == 7 and num_ganados_a < 7
  puts "Gano B"
elsif  (num_ganados_a == 6 and num_ganados_b == 5) or (num_ganados_b == 6 and num_ganados_a == 5)
  puts "Aun no temrina"
end
