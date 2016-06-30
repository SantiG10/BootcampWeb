def sumaDivisores(num)
  acumulador = 0
  for i in(1..num-1)
    if (num % i) == 0
      acumulador += i
    end
  end
  return acumulador
end

print "Ingrese el valor del numero 1: "
num1 = gets.chomp
num1 = num1.to_i

print "Ingrese el valor del numero 2: "
num2 = gets.chomp
num2 = num2.to_i

numDivisores1 = sumaDivisores(num1)
numDivisores2 = sumaDivisores(num2)
if numDivisores1 == num2 and numDivisores2 == num1
  puts "Son numeros Amigos"
else
  puts "No son numeros Amigos"
end
