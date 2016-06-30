identificador = 0
vec_tramos = []
begin
  print "Duración del tramo: "
  opcion = gets.chomp.to_i
  vec_tramos[identificador] = opcion
  identificador += 1
end while opcion != 0

suma_tramos = vec_tramos.reduce(:+)
minutos = suma_tramos % 60
if minutos < 10
  puts "Tiempo total de viaje: #{suma_tramos / 60}:0#{minutos} horas"
else
  puts "Tiempo total de viaje: #{suma_tramos / 60}:#{minutos} horas"
end
