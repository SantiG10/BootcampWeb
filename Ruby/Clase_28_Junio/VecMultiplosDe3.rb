print "Ingrese el tamaño del vector: "
num_vector = gets.chomp
num_vector = num_vector.to_i
vector = []

for i in(0..num_vector-1)
  print "Ingrese el valor del numero #{i+1}: "
  vector[i] = gets.chomp
  vector[i] = vector[i].to_i
end

num = vector.select { |x| x % 3 == 0 }
puts num
puts "Cantidad de numeros: #{num.length}"
