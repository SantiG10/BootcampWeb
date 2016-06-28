puts "Huevos a la Copa"

print "Ingrese la temperatura original del huevo: "
temperatura_Huevo = gets.chomp
temperatura_Huevo = temperatura_Huevo.to_f
print "Huevo grande(g) o huevo pequeño(p): "
huevo = gets.chomp

if huevo == "p"
  gramos = 47.0
else
  gramos = 67.0
end

PI = 3.14159265358979
E = 2.7182818284590452353602874713527

for i in(64..70)
  logaritmo = 0.76*((temperatura_Huevo - 90) / (i - 90))
  tiempo = (((gramos**(2/3))*3.7*(1.038**(1/3)))/((5.4*(10**-3))*(PI**2)*(((4*PI)/3)**(2/3)))) * (Math.log(logaritmo,E))
  puts "Grados #{i}, Tiempo en segundos para tener el huevo a la copa: #{tiempo}"
end
