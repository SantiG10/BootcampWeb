puts "Torre y Alfil"

# Pedimos al usuario el tamaño del tablero
print "Ingrese el tamaño del tablero (N * N): "
tablero = gets.chomp.to_i


# Pedimos al usuario las posiciones del alfil en el tablero
print "Fila alfil: "
fila_alfil = gets.chomp.to_i
print "Columna alfil: "
columna_alfil = gets.chomp.to_i

# Pedimos al usuario las posiciones de la torre en el tablero
print "Fila torre: "
fila_torre = gets.chomp.to_i
print "Columna torre: "
columna_torre = gets.chomp.to_i

captura = false

# movimentos para la el alfil
# for para recorrer posiciones del alfil arriba - izquierda
posible_columna = columna_alfil
posible_fila = fila_alfil
for i in (posible_fila).downto(1)
    if(i == fila_torre) and (posible_columna == columna_torre)
      puts "Alfil captura"
      captura = true
      break
    end
    posible_columna -= 1
    if posible_fila== 1
      break
    end
end

# for para recorrer posiciones del alfil arriba - derecha
posible_columna = columna_alfil
posible_fila = fila_alfil
for i in (posible_fila).downto(1)
  if(i == fila_torre) and (posible_columna == columna_torre)
    puts "Alfil captura"
    captura = true
    break
  end
  posible_columna += 1
  if posible_fila == 1
    break
  end
end

# for para recorrer posiciones del alfil abajo - izquierda
posible_columna = columna_alfil
posible_fila = fila_alfil
for i in (posible_fila..tablero)
  if(i == fila_torre) and (posible_columna == columna_torre)
    puts "Alfil captura"
    captura = true
    break
  end
  posible_columna -= 1
  if posible_fila == 8
    break
  end
end

# for para recorrer posiciones del alfil abajo - derecha
posible_columna = columna_alfil
posible_fila = fila_alfil
for i in (posible_fila..tablero)
  if(i == fila_torre) and (posible_columna == columna_torre)
    puts "Alfil captura"
    captura = true
    break
  end
  posible_columna += 1
  if posible_fila == 8
    break
  end
end

# movimentos para la torre
# for para recorrer posiciones de la torre hacia arriba
posible_fila = fila_torre
for i in (posible_fila).downto(1)
  if(i == fila_alfil) and (columna_torre == columna_alfil)
    puts "Torre captura"
    captura = true
    break
  end
end

# for para recorrer posiciones de la torre hacia abajo
posible_fila = fila_torre
for i in (posible_fila..tablero)
  if(i == fila_alfil) and (columna_torre == columna_alfil)
    puts "Torre captura"
    captura = true
    break
  end
end

# for para recorrer posiciones de la torre hacia la izquierda
posible_columna = columna_torre
for i in (posible_columna).downto(1)
  if(fila_torre == fila_alfil) and (i == columna_alfil)
    puts "Torre captura"
    captura = true
    break
  end
end

# for para recorrer posiciones de la torre hacia la derecha
posible_columna= columna_torre
for i in (posible_columna..tablero)
  if(fila_torre == fila_alfil) and (i == columna_alfil)
    puts "Torre captura"
    captura = true
    break
  end
end

if captura == false
  puts "Ninguna Captura"
end
