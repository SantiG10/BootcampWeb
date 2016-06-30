print "Ingrese en numero de días: "
dias = gets.chomp.to_i
vec_dias = []

for i in (0..dias-1)
    print "Día #{i+1}: "
    vec_dias[i] = gets.chomp.to_f
end

alza = vec_dias[0] - vec_dias[1]

for i in (2..dias-1)
  if i != dias-1
    if vec_dias[i] < vec_dias[i+1]
      if (vec_dias[i+1] - vec_dias[i]) > alza
        alza = vec_dias[i+1] - vec_dias[i]
      end
    end
  end
end

if alza != 0
  puts "La mayor alza fue de #{alza} pesos"
else
  puts "No hubo alzas"
end
