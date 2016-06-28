print "Digite la Cedula del cliente: "
cedula = gets.chomp
print "Valor de la compra: "
valor_Compra = gets.chomp
valor_Compra = valor_Compra.to_f

ultimo_Digito = cedula[cedula.length-1]
ultimo_Digito = ultimo_Digito.to_i

case ultimo_Digito
when 1..3 then
  valor_Total = valor_Compra * 0.85
when 4..6 then
  valor_Total = valor_Compra * 0.80
when 7..8, 0 then
  valor_Total = valor_Compra * 0.75
end

puts "El Valor Total de la compra con el descuento es: #{valor_Total}"
