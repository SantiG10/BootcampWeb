print "Introduzca la primera palabra: "
palabra1 = gets.chomp

print "Introduzca la segunda palabra: "
palabra2 = gets.chomp

if palabra1.length > palabra2.length
  puts "la palabra #{palabra1} tiene #{palabra1.length - palabra2.length} letras
  mas que #{palabra2}"
elsif palabra1.length < palabra2.length
  puts "la palabra #{palabra2} tiene #{palabra2.length - palabra1.length} letras mas que #{palabra1}."
else
  puts "Las dos palabras tienen el mismo largo."  
end
