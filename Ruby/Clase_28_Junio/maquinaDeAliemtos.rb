while true
  print "Elija un producto: "
  producto = gets.chomp.upcase
  if producto == "A"
    valor = 270
    break
  elsif producto == "B"
    valor = 340
    break
  elsif producto == "C"
    valor = 390
    break
  else
    puts "Error elija un producto correcto"
  end
end

puts valor
monto = 0

begin
  print "ingrese la modena: "
  moneda = gets.chomp.to_i
  monto += moneda
  if monto >= valor
    break
  end
end while monto < valor

puts "Su vuelto"
vuelto = monto - valor

if vuelto != 0
  begin
    if vuelto - 100 >= 0
        vuelto -= 100
        puts "100"
    elsif vuelto - 50 >= 0
        vuelto -= 50
        puts "50"
    else
        vuelto -= 10
        puts "10"
    end
  end while vuelto != 0
end
