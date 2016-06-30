acumulado = 0.0
print "Potencia         Fraccion              Suma"
puts ""
for i in (1..1000)
  num = 2**i
  fracion = 1.0 / num
  if fracion <= 0.000001
    break
  end
  acumulado += 1.0 / num
  print "#{i} | #{fracion} | #{acumulado}"
  puts ""
end
