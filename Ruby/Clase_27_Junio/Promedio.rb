
notas = Array.new

for i in(0..3)
  print "Escriba la nota #{i+1}: "
  notas[i] = gets.chomp
end

resultado = 0
notas.each do |num|
  resultado += num.to_f
end

puts "El promedio es: #{resultado/4}"
