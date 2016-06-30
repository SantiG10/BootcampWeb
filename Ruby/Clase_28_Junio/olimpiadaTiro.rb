print "Ingrese el puntaje original: "
puntaje_original = gets.chomp.to_i

case puntaje_original
    when 0 then puts "puntaje final: 0"
    when 1..5 then puts "puntaje final: #{puntaje_original*6}"
    when 6..8 then puts "puntaje final: #{puntaje_original*9}"
    when 9..10 then puts "puntaje final: #{puntaje_original*10}"  
end
