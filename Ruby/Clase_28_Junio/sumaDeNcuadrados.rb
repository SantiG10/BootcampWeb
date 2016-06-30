print "ingrese el Valor de N: "
n = gets.chomp
n = n.to_i
resultado = 0
for i in(1..n)
  resultado += i**2
end
puts "El resultado es: #{resultado}"
