print "Elija un producto: "
producto = gets.chomp

if producto == "a"
  valor = 270
elsif producto == "b"
  valor = 340
else
  valor = 390
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
monto = monto - valor

if monto != 0
  begin
    if monto - 100 >= 0
        monto -= 100
        puts "100"
    elsif monto - 50 >= 0
        monto -= 50
        puts "50"
    else
        monto -= 10
        puts "10"
    end
  end while monto != 0
end
