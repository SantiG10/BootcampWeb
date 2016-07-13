
def ganador(vec_f1,vec_f2,vec_f3,jugador)
  if vec_f1[0] == jugador and vec_f2[0] == jugador and vec_f3[0] == jugador
    return true
  elsif vec_f1[1] == jugador and vec_f2[1] == jugador and vec_f3[1] == jugador
    return true
  elsif vec_f1[2] == jugador and vec_f2[2] == jugador and vec_f3[2] == jugador
    return true
  elsif vec_f1[0] == jugador and vec_f1[1] == jugador and vec_f1[2] == jugador
    return true
  elsif vec_f2[0] == jugador and vec_f2[1] == jugador and vec_f2[2] == jugador
    return true
  elsif vec_f3[0] == jugador and vec_f3[1] == jugador and vec_f3[2] == jugador
    return true
  elsif vec_f1[0] == jugador and vec_f2[1] == jugador and vec_f3[2] == jugador
    return true
  elsif vec_f1[2] == jugador and vec_f2[1] == jugador and vec_f3[0] == jugador
    return true
  end
end

def pintar_tablero_vacio
    puts "\n___|___|___"
    puts "___|___|___"
    puts "   |   |  "
    puts ""
end

def imprimir_tablero_juego(vec_f1,vec_f2,vec_f3)
  contador = 0
  puts ""
  vec_f1.each do |x|
    if x == ""
      if contador != 2
        print "___|"
      else
        print "___"
      end
    else
      if contador != 2
        print "_#{x}_|"
      else
        print "_#{x}_"
      end
    end
    contador += 1
  end
  contador = 0
  puts ""
  vec_f2.each do |x|
    if x == ""
      if contador != 2
        print "___|"
      else
        print "___"
      end
    else
      if contador != 2
        print "_#{x}_|"
      else
        print "_#{x}_"
      end
    end
    contador += 1
  end
  contador = 0
  puts ""
  vec_f3.each do |x|
    if x == ""
      if contador != 2
        print "   |"
      else
        print "   "
      end
    else
      if contador != 2
        print " #{x} |"
      else
        print " #{x} "
      end
    end
    contador += 1
  end
  puts "\n\n"
end

def validar_posicion(fila,columna,vec_f1,vec_f2,vec_f3)
  if fila == 0
    if vec_f1[columna] == ""
      return true
    else
      puts "\nla posicion ya esta ocupada, elija otra\n"
      return false
    end
  elsif fila == 1
    if vec_f2[columna] == ""
      return true
    else
      puts "\nla posicion ya esta ocupada, elija otra\n"
      return false
    end
  else
    if vec_f3[columna] == ""
      return true
    else
      puts "\nla posicion ya esta ocupada, elija otra\n"
      return false
    end
  end
end

vec_f1 = ["","",""]
vec_f2 = ["","",""]
vec_f3 = ["","",""]
pintar_tablero_vacio
turno = 0

print "Numero de jugadores (1 / 2): "
jugadores = gets.chomp.to_i
while true
  if turno % 2 == 0
    begin
      puts "Eliga una posicion Jugador 1 (X)\n"
      print "Posicion Fila: "
      fila = gets.chomp.to_i - 1
      print "Posicion Columna: "
      columna = gets.chomp.to_i - 1
      vacio = validar_posicion(fila,columna,vec_f1,vec_f2,vec_f3)
    end while (vacio == false)
    case fila
      when 0 then vec_f1[columna] = "X"
      when 1 then vec_f2[columna] = "X"
      when 2 then vec_f3[columna] = "X"
    end
  else
    if jugadores == 2
      begin
        puts "Eliga una posicion Jugador 2 (O)\n"
        print "Posicion Fila: "
        fila = gets.chomp.to_i
        print "Posicion Columna: "
        columna = gets.chomp.to_i - 1
        vacio = validar_posicion(fila,columna,vec_f1,vec_f2,vec_f3)
      end while (vacio == false)
      case fila
        when 0 then vec_f1[columna] = "O"
        when 1 then vec_f2[columna] = "O"
        when 2 then vec_f3[columna] = "O"
      end
    else
      puts "Turno Maquina"
      sleep 2
      begin
        fila = rand(3)
        columna = rand(3)
        vacio_maquina = validar_posicion(fila,columna,vec_f1,vec_f2,vec_f3)
      end while (vacio_maquina == false)
      puts "Fila: #{fila}"
      puts "columna: #{columna}"
      case fila
        when 0 then vec_f1[columna] = "O"
        when 1 then vec_f2[columna] = "O"
        when 2 then vec_f3[columna] = "O"
      end
    end
  end
  imprimir_tablero_juego(vec_f1,vec_f2,vec_f3)
  ganador_jugador_1 = ganador(vec_f1,vec_f2,vec_f3,"X")
  if ganador_jugador_1
    puts "Ha ganado el jugador 1"
    break
  end
  ganador_jugador_2 = ganador(vec_f1,vec_f2,vec_f3,"O")
  if ganador_jugador_1
    if jugador == 2
      puts "Ha ganado el jugador 2"
    else
      puts "Ha ganado la maquina"
    end
    break
  end
  if turno == 8
    puts "El juego ha terminado NINGUNO ha ganado "
    break
  end
  turno += 1
end
