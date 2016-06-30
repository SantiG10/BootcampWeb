print "Ingrese el numero 1: "
num1 = gets.chomp.to_i

print "Ingrese el nuemro 2: "
num2 = gets.chomp.to_i

acumulado = 0
for i in (num1+1..num2-1)
  acumulado += i
end

puts "La suma es: #{acumulado}"
