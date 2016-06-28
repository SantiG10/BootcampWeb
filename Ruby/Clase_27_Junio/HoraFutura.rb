print "Ingrese la hora actual: "
hora = gets.chomp
hora = hora.to_i

print "Ingrese cantiada de horas: "
cantidad_Horas = gets.chomp
cantidad_Horas = cantidad_Horas.to_i

for i in(1..cantidad_Horas)
    if(hora == 12)
      hora = 0
    end
    hora += 1
end
puts "En #{cantidad_Horas} horas, el reloj marcara las #{hora}"
