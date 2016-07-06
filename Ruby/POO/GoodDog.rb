module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  ESTADO = "Todos tienen pulgas"
  include Speak
  @@coutn = 0
  def initialize (nombre, edad)
    @name = nombre
    @age = edad
    @@coutn += 1
  end

=begin
  def initialize (nombre, edad, raza)
    @name = nombre
    @age = edad
    @race = raza
    @@coutn += 1
  end
=end

  # Metodos getters  - Obtener atributos
  def getName()
      return @name
  end

  def getAge()
    @age
  end

  def getCount()
    @@coutn
  end

  # Metodos setters   - Modificar atributos
  def setName(nombre)
    @name = nombre
  end

  def setAge(edad)
    @age = edad
  end
end

perro1 = GoodDog.new("Sparky",4)
perro2 = GoodDog.new("Fido",6)
perro3 = GoodDog.new("Spot",10)

constante = GoodDog::ESTADO
puts constante

cantidad = perro1.getCount
puts "Cantidad de perros: #{cantidad}"

puts "Nombre perro 1 : #{perro1.getName}"
puts "Edad perro 1: #{perro1.getAge}"
puts "Cambiamos de nombre al perro 1"
perro1.setName("Harry")
puts "Nombre perro 1 : #{perro1.getName}"
puts "Edad perro 1: #{perro1.getAge}"

perro2.speak("Guay")
#puts GoodDog.ancestors
