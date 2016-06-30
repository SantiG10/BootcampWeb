print "Ingrese una cadena: "
nombre = gets.chomp

puts "Tamaño cadena: #{nombre.length}"
puts "Cadena al reves: #{nombre.reverse}"
puts "Cadena en mayuscula: #{nombre.upcase}"
puts "Cadena en minuscula: #{nombre.downcase}"
puts "Cadena en capitalize: #{nombre.capitalize}"
puts "Remplaza el caracter A por a: #{nombre.gsub("A","a")}"    #Para reemplazar en el String
puts "Esta la palabra hola en la cadena: #{nombre.include?("hola")}"   #Me busca una palabra o caracter en la cadena
