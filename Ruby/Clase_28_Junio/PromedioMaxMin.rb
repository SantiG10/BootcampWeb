def menor(vec, n)
  numMenor = vec[0]
  for i in(0..n)
    if numMenor > vec[i]
        numMenor = vec[i]
    end
  end
  return numMenor
end

def mayor(vec, n)
  numMayor = vec[0]
  for i in(0..n)
    if numMayor < vec[i]
        numMayor = vec[i]
    end
  end
  return numMayor
end

print "Ingrese la cantidad de numeros a ingresar: "
n = gets.chomp
n = n.to_i - 1
vecNum = []
for i in(0..n)
  print "Ingrese el valor del numero #{i+1}: "
  vecNum[i] = gets.chomp
  vecNum[i] = vecNum[i].to_i
end
acumulador = 0
for i in(0..n)
  acumulador += vecNum[i]
end
promedio = (acumulador / (n+1))
puts "El promedio de los numeros es: #{promedio}"
puts "El numero menor de los ingresados es: #{menor(vecNum,n)}"
puts "El numero mayor de los ingresados es: #{mayor(vecNum,n)}"
