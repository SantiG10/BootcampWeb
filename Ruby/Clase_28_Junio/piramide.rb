print "Escriba el simbolo: "
simbolo = gets.chomp

print "Escriba el tamaño: "
tamano = gets.chomp
tamano = tamano.to_i

vec_simbolos = []
for i in (0..(tamano*2)-2)
    vec_simbolos[i] = simbolo
end

#inicio = 0
#fin = (tamano * 2) - 2
vec_simbolos2 = []
tamanofijo = tamano
while tamano != 0
  for i in (0..(tamanofijo*2)-2)
      vec_simbolos2[i] = simbolo
  end
  tamano2 = tamano
  inicio = 0
  fin = (tamanofijo * 2) - 2
  while tamano2 != 1
    vec_simbolos2[inicio] = " "
    vec_simbolos2[fin] = " "
    fin -= 1
    inicio += 1
    tamano2 -= 1
  end
  vec_simbolos2.each do |x|
    print x
  end
  puts ""
  tamano -= 1
end

=begin
while tamano != 0
  vec_simbolos.each do |x|
    print x
  end
  puts ""
  vec_simbolos[inicio] = " "
  vec_simbolos[fin] = " "
  fin -= 1
  inicio += 1
  tamano -= 1
end
=end
