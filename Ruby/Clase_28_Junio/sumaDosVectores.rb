
def llenarVector (vec,n)
  for i in (0..n)
    print "Ingrese el valor del numero #{i+1}: "
    vec[i] = gets.chomp
    vec[i] = vec[i].to_i
  end
end

def sumaVectores (vec1,vec2,n)
  vec_suma  = []
  for i in (0..n)
    vec_suma[i] = vec1[i] + vec2[i]
  end
  vec_suma
end

print "Ingrese el tamaño de los vectores: "
num_vector = gets.chomp
num_vector = num_vector.to_i
vector1 = []
vector2 = []

puts "Vector 1 "
llenarVector(vector1,num_vector-1)
puts "Vector 2 "
llenarVector(vector2,num_vector-1)

vec_suma = sumaVectores(vector1,vector2,num_vector-1)

puts "resultados"
for i in (0..num_vector-1)
  puts "Suma posicion #{i+1} es: #{vec_suma[i]}"
end
