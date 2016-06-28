puts "Calcular el indice de masa corporal"

# Pedimos los datos al usuario
print "Ingrese su peso (Kilos): "
peso = gets.chomp
peso= peso.to_f
print "Ingrese su estatura en (Metros): "
estatura = gets.chomp
estatura = estatura.to_f
print "Ingrese su edad: "
edad = gets.chomp
edad = edad.to_i

# calcula el indice de masa corporal
masa_Corporal = (peso/estatura**2)

if edad < 45
  if masa_Corporal < 22.0
    puts "Condición de riesgo Bajo"
  else
    puts "Condición de riesgo Medio"
  end
else
  if masa_Corporal < 22.0
    puts "Condición de riesgo Medio"
  else
    puts "Condición de riesgo Alto"
  end
end
