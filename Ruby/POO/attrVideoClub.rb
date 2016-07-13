class Referencia
  PELICULA = 1
  VIDEO_JUEGO = 2
end

class Alquilado
  SI = true
  NO = false
end

class Producto
  attr_reader :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquilado
  attr_writer :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquilado
end

producto = Producto.new
producto.titulo = "Los vengadores"
producto.tipo = Referencia::PELICULA
producto.precio_alquiler = 15000.0
producto.plazo_alquiler = 12
producto.alquilado = Alquilado::NO

puts "PRODUCTO"
puts "Titulo: #{producto.titulo}"
puts "Tipo: #{producto.tipo}"
puts "Precio: #{producto.precio_alquiler}"
puts "Plazo: #{producto.plazo_alquiler}"
puts "Esta alquilado: #{producto.alquilado}"  
