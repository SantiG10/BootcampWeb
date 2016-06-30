def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

print "Ingrese el numero hasta donde quiere la sumatoria del factorial: "
num = gets.chomp.to_i

acumulado = 0
for i in (1..num)
  acumulado += factorial(i)
end

puts "La sumatoria es: #{acumulado}"  
