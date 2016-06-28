print "Ingrese nota certamen 1: "
nota1 = gets.chomp
nota1 = nota1.to_f
print "Ingrese nota certamen 2: "
nota2 = gets.chomp
nota2 = nota2.to_f
print "Ingrese nota del laboratorio: "
laboratorio = gets.chomp
laboratorio = laboratorio.to_f

notaFinal = (nota1 * 0.233333333333333333) + (nota2 * 0.233333333333333333) + (laboratorio * 0.3)
necesita = 60 - notaFinal
nota3 = necesita / 0.233333333333333333

puts "Necesita nota #{nota3.to_i} en el certamen 3"
