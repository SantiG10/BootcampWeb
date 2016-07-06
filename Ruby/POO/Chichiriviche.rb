class Lancheros
  def initialize(nombre,cedula)
    @nombre = nombre
    @cedula = cedula
  end

  def getNombre
    @nombre
  end

  def getCedula
    @cedula
  end
end

class Cayos
  def initialize(numero,nombre,tarifa)
    @numero = numero
    @nombre = nombre
    @tarifa = tarifa.to_f
  end

  def getNumero
    @numero
  end

  def getNombre
    @nombre
  end

  def getTarifa
    @tarifa
  end

end

class Ganancia
  def initialize(cayo,lanchero,dia)
    @cayo = cayo
    @lanchero = lanchero
    @dia = dia.to_i
    @ganancia_asociacion = 0.0
    @ganancia_lanchero = 0.0
  end

  def calcularGanancia
    puts "Cayo #{@cayo.getNombre}"
    if (@dia == 6) or (@dia == 7)
      @ganancia_asociacion = (@cayo.getTarifa * 0.20)
      @ganancia_lanchero = (@cayo.getTarifa * 0.80)
    else
      @ganancia_asociacion = (@cayo.getTarifa * 0.10)
      @ganancia_lanchero = (@cayo.getTarifa * 0.90)
    end
    puts "Ganancia Asociacion: #{@ganancia_asociacion}"
    puts "Ganancia Lanchero"
    puts "Nombre: #{@lanchero.getNombre}"
    puts "Cedula: #{@lanchero.getCedula}"
    puts "Ganancia: #{@ganancia_lanchero}"
  end
end

=begin
while true
  puts "---------MENU CHICHIRIVICHE---------"
  puts "1. INGRESAR LANCHERO"
  puts "2. INGRESAR CAYO"
  puts "3. CALCULAR GANANCIAS"
  puts "0. SALIR"
  puts "ELIJA UNA OPCION"
  opcion = gets.chomp.to_i

  if opcion == 1

  end

  if opcion == 0
    break
  end
end
=end


lanchero = Lancheros.new("Santiago Giraldo","1037640756")
cayo = Cayos.new(1,"SAL",500)

ganancia = Ganancia.new(cayo,lanchero,6)
ganancia.calcularGanancia

lanchero = Lancheros.new("Santiago Gimenez","1037640756")
cayo2 = Cayos.new(7,"BORRACHO",1100)

ganancia = Ganancia.new(cayo2,lanchero,3)
ganancia.calcularGanancia
