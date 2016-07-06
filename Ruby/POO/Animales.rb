module Comportamientos
    def comer(tipo)
        puts "Este Animal Come: #{tipo}"
    end
    def hablar(sonido)
      puts "Este Animal Dice: #{sonido}"
    end
end

class Animal
  include Comportamientos
end

class Mamifero < Animal

end

class Ave < Animal

end

class Gato < Mamifero

end

class Perro < Mamifero

end

class Canario < Ave

end

class Pinguino < Ave

end

class Lagarto < Animal

end

perro = Perro.new()
perro.comer("Perrarina")
perro.hablar("Guau Guau")

lagarto = Lagarto.new()
lagarto.comer("Bichos")
lagarto.hablar("Rrrrr")
