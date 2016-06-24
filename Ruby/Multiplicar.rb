
puts "Ingrese el numero: "
NUMERO = gets.chomp

array = [2, 4, 6, 8, 10]

array.each do |num|
  multiplicacion = num * NUMERO.to_i
  puts "La multiplicacion de " + NUMERO.to_s + " * " + num.to_s + " Es: " + multiplicacion.to_s
end
