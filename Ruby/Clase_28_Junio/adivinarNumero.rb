num = rand(101)
puts "Adivine el numero de 1 a 100"

intentos = 1
begin
  print "Intento #{intentos}: "
  opcion = gets.chomp.to_i
  if opcion > num
    puts "Es menor que #{opcion}"
  elsif opcion < num
    puts "Es mayor que #{opcion}"
  else
    puts "Correcto. Adivinaste en #{intentos} intentos."
  end
  intentos += 1
end  while opcion != num

puts "Turno computadora"

intentos_computadora = 1
num_computadora = rand(101)
max = 100
min = 0
begin
  puts "Intento #{intentos_computadora}: #{num_computadora}"
  print "El numero es >, <, = : "
  operador = gets.chomp
  if operador == ">"
    min = num_computadora
    mitad = ((max - min) / 2).round
    num_computadora += mitad
  else
    max = num_computadora
    mitad = ((max - min) / 2).round
    num_computadora -= mitad
  end
  intentos_computadora += 1
end while operador != "="
puts "La computadora adivino en #{intentos_computadora-1}"
