class Fracciones
  def initialize(numerador,denominador)
      @numerador = numerador.to_f
      @denominador = denominador.to_f
  end

  def suma(num)
      suma = (@numerador/@denominador) + (num.getNumerador/num.getDenominador)
      suma.round(2)
  end

  def resta(num)
    resta = (@numerador/@denominador) - (num.getNumerador/num.getDenominador)
    resta.round(2)
  end

  def multiplicacion(num)
    multiplicacion = (@numerador/@denominador) * (num.getNumerador/num.getDenominador)
    multiplicacion.round(2)
  end

  def division(num)
    division = (@numerador/@denominador)/(num.getNumerador/num.getDenominador)
    division.round(2)
  end

  def getNumerador
    @numerador
  end

  def getDenominador
    @denominador
  end
end

num1 = Fracciones.new(2,5)
num2 = Fracciones.new(3,5)
puts "Num1: #{num1.getNumerador/num1.getDenominador}"
puts "Num2: #{num2.getNumerador/num2.getDenominador}"

puts "Suma num1 + num2: #{num1.suma(num2)}"
puts "Resta num1 - num2: #{num1.resta(num2)}"
puts "Multiplicacion num1 * num2: #{num1.multiplicacion(num2)}"
puts "Division num1 / num2: #{num1.division(num2)}"
