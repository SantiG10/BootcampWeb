print "Introduzca el tamaño del vector: "
num = gets.chomp
num = num.to_i

vec_num = []
for i in (0..num-1)
  vec_num[i] = rand(1001)
  vec_num[i] = vec_num[i].to_s
end

#vec_num.each do |x|
#puts x
#end

print "Introduzca el numero para filtrar la busqueda: "
valor = gets.chomp

vec_num.each do |x|
  vec = x.split("")
  if vec.last == valor
    puts x
  end
end
