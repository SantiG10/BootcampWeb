def llenarVector (vec,n)
  for i in (0..n)
    print "Ingrese el valor del numero #{i+1}: "
    vec[i] = gets.chomp
    vec[i] = vec[i].to_i
  end
end

def invertirVector (vec)
  num = vec.length
  vec_a = []
  vec_b = []
  vector_invertido = []
  for i in (0..(num/2-1))
    vec_a[i] = vec[i]
  end
  indice = 0
  for i in ((num/2)..num-1)
    vec_b[indice] = vec[i]
    indice += 1
  end
  vec_a.reverse!
  vec_b.reverse!
  for i in (0..(num/2-1))
    vector_invertido[i] = vec_a[i]
  end
  indice = (num / 2)
  for i in (0..(num/2)-1)
    vector_invertido[indice] = vec_b[i]
    indice += 1
  end
  vector_invertido
end

print "Ingrese el tamaño del vector: "
num_vector = gets.chomp.to_i
vector = []
llenarVector(vector,num_vector-1)

puts "Vector orignial"
vector.each do |x|
  print "#{x} "
end
puts ""

if num_vector % 2 == 0
  vector_invertido = invertirVector(vector)
  puts "Vector invertido"
  vector_invertido.each do |x|
    print "#{x} "
  end
  puts ""
end
