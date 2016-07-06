# Ingresando las posiciones del caballo en el tablero, se deben mostrar las
# posibles posiciones que puede moverse

puts "Caballo Ajedrez"

puts "Ingrese las coordenadas del caballo"
print "Fila: "
fila = gets.chomp.to_i
print "Columna: "
columna = gets.chomp.to_i

if fila > 8 or fila < 1 or columna > 8 or columna < 1
  puts "Posición invalida"
else
  puts "El caballo puede saltar a la fila y columna: "
  puts "F C"
  if fila - 2 >= 1 and  columna - 1 >= 1
    puts "#{fila-2} #{columna-1}"
  end
  if fila - 2 >= 1 and  columna + 1  <= 8
    puts "#{fila-2} #{columna+1}"
  end
  if fila + 2 <= 8 and  columna - 1  >= 1
    puts "#{fila+2} #{columna-1}"
  end
  if fila + 2 <= 8 and  columna + 1  <= 8
    puts "#{fila+2} #{columna+1}"
  end
  if fila + 1 >= 1 and  columna - 2  >= 1
    puts "#{fila+1} #{columna-2}"
  end
  if fila - 1 <= 8 and  columna - 2  >= 1
    puts "#{fila-1} #{columna-2}"
  end
  if fila + 1 >= 1 and  columna + 2  <= 8
    puts "#{fila+1} #{columna+2}"
  end
  if fila - 1 <= 8 and  columna + 2  <= 8
    puts "#{fila-1} #{columna+2}"
  end
end
