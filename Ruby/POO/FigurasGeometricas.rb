class FigurasGeometricas
  def initialize(color)
    @color = color
  end

  def getColor
    @color
  end

  def setColor(color)
    @color = color
  end
end

class Circulo < FigurasGeometricas
  def initialize(radio)
    @radio = radio.to_f
  end

  def area
    area = Math::PI*(@radio * @radio)
    area.round(2)
  end
end

class Triangulo < FigurasGeometricas
  def initialize(base,altura)
    @base = base.to_f
    @altura = altura.to_f
  end

  def area
    area = (@base * @altura) / 2
    area.round(2)
  end
end

class Cuadrado < FigurasGeometricas
  def initialize(lado)
    @lado = lado.to_f
  end

  def area
    area = @lado**2
    area.round(2)
  end
end

circulo = Circulo.new(7)
circulo.setColor("Rojo")
puts "Area del Circulo: #{circulo.area} cm^2 - Color: #{circulo.getColor}"

triangulo = Triangulo.new(11,7)
triangulo.setColor("Verde")
puts "Area del triangulo: #{triangulo.area} cm^2 - Color: #{triangulo.getColor}"

cuadrado = Cuadrado.new(5)
cuadrado.setColor("Anaranjado")
puts "Area del cuadrado: #{cuadrado.area} cm^2 - Color: #{cuadrado.getColor}"
