puts "Huevos a la Copa"

print "Ingrese la temperatura original del huevo: "
temperatura_Huevo = gets.chomp
temperatura_Huevo = temperatura_Huevo.to_f
print "Ingrese la temperatura de ebullición del agua: "
temperatura_Agua = gets.chomp
temperatura_Agua = temperatura_Agua.to_f
print "Huevo grande(g) o huevo pequeño(p): "
huevo = gets.chomp

if huevo == "p"
  gramos = 47
else
  gramos = 67
end
PI = 3.14159265358979
E = 2.7182818284590452353602874713527
logaritmo = 0.76*((temperatura_Huevo - temperatura_Agua) / (70 - temperatura_Agua))
puts logaritmo
tiempo = (((gramos**(2/3))*3.7*(1.038**(1/3)))/((5.4*(10**-3))*(PI**2)*(((4*PI)/3)**(2/3)))) * (Math.log(logaritmo,E))

puts "Tiempo en segundos para tener el huevo a la copa: #{tiempo}"
