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

# otra forma de hacerlo con el modulo 12
horaTotales = hora + cantidad_Horas
puts "Con modulo: En #{cantidad_Horas} horas, el reloj marcara las #{horaTotales % 12}"
