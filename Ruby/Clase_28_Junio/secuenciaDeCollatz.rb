def secuenciaCollatz (num)
  acumulado = 0
  while num != 1
    if num % 2 == 0
      num = num / 2
    else
      num = (num * 3) + 1
    end
    acumulado += 1
  end
  return acumulado+1
end

print "Ingrese el numero: "
num = gets.chomp.to_i
num_original = num
print "#{num}  "
while num != 1
  if num % 2 == 0
    num = num / 2
    print "#{num}  "
  else
    num = (num * 3) + 1
    print "#{num}  "
  end
end
puts ""

for i in (1..num_original)
  num_secuencia = secuenciaCollatz(i)
  print "#{i}: "
  for i in (1..num_secuencia)
    print "*"
  end
  puts ""
end
