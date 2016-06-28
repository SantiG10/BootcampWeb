begin
  print "Escriba el dia de nacimiento: "
  dia = gets.chomp
  dia = dia.to_i
end while dia > 31 or dia < 1
print "Escriba el mes de nacimiento: "
mes = gets.chomp


if (mes == "marzo" and dia >= 21) or (mes == "abril" and dia <= 20)
    puts "Su signo Zodiaco es: Aries"
elsif (mes == "abril" and dia >= 21) or (mes == "mayo" and dia <= 21)
    puts "Su signo Zodiaco es: Tauro"
elsif (mes == "mayo" and dia >= 22) or (mes == "junio" and dia <= 21)
    puts "Su signo Zodiaco es: Géminis"
elsif (mes == "junio" and dia >= 22) or (mes == "julio" and dia <= 22)
    puts "Su signo Zodiaco es: Cáncer"
elsif (mes == "julio" and dia >= 23) or (mes == "agosto" and dia <= 23)
    puts "Su signo Zodiaco es: Leo"
elsif (mes == "agosto" and dia >= 24) or (mes == "septiembre" and dia <= 23)
    puts "Su signo Zodiaco es: Virgo"
elsif (mes == "septiembre" and dia >= 24) or (mes == "octubre" and dia <= 23)
    puts "Su signo Zodiaco es: Libra"
elsif (mes == "octubre" and dia >= 24) or (mes == "noviembre" and dia <= 22)
    puts "Su signo Zodiaco es: Escorpión"
elsif (mes == "noviembre" and dia >= 23) or (mes == "diciembre" and dia <= 21)
    puts "Su signo Zodiaco es: Sagitario"
elsif (mes == "diciembre" and dia >= 22) or (mes == "enero" and dia <= 20)
    puts "Su signo Zodiaco es: Capricornio"
elsif (mes == "enero" and dia >= 21) or (mes == "febrero" and dia <= 18)
    puts "Su signo Zodiaco es: Acuario"
elsif (mes == "febrero" and dia >= 19) or (mes == "marzo" and dia <= 20)
    puts "Su signo Zodiaco es: Piscis"
end
