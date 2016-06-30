print "Ingrese la inversion inicial: "
inversion_inicial = gets.chomp.to_i

print "% tasa de descuento: "
porcentaje_descuento = gets.chomp.to_f
porcentaje_descuento = porcentaje_descuento / 100

van = -inversion_inicial
mes = 1
begin
  print "Flujo mes #{mes}: "
  flujo = gets.chomp.to_i
  van += (flujo / ((1 + porcentaje_descuento)**mes)).round
  mes += 1
  puts "VAN: #{van}"
end while van < 0
