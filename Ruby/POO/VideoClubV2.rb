class TipoProducto
	PELICULA = 1
	VIDEOJUEGO = 2
end

class Alquilado
	SI = true
	NO = false
end

class Producto
	attr_reader :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquilado
	attr_writer :titulo,:tipo,:precio_alquiler,:plazo_alquiler,:alquilado

	def obtenerTipoProducto()
		if (@tipo == TipoProducto::PELICULA)
			"Pelicula"
		else
			"Video Juego"
		end
	end

	def estaAlquilado()
		if (@alquilado == Alquilado::SI)
			"Si"
		else
			"No"
		end
	end
end

class Genero
	ACCION = 1
	FANTASIA = 2
	DRAMA = 3
	AVENTURA = 4
	PUZZLE = 5
	INFANTIL = 6
end

class Pelicula < Producto
	attr_reader :genero,:anio,:director,:interpretes
	attr_writer :genero,:anio,:director,:interpretes
end

class Estilo
	ACCION = 1
	DEPORTE = 2
	AVENTURA = 3
	PUZZLE = 4
	INFANTIL = 5
end

class Plataforma
	XBOX = 1
	PLAYSTATION = 2
	WII = 3
	SEGA = 4
end

class VideoJuego < Producto
	attr_reader :estilo,:plataforma
	attr_writer :estilo,:plataforma
end

class Cliente
	attr_reader :num_cliente,:nombre,:direccion,:telefono,:prod_alquilados
	attr_writer :num_cliente,:nombre,:direccion,:telefono,:prod_alquilados

	def to_s
		"N° Cliente: #{@num_cliente}\n"\
		"Nombre    : #{@nombre}\n"\
		"Direccion : #{@direccion}\n"\
		"Telefono  : #{@telefono}\n"\
		"Productos Alquilados: "
	end
end

class Factura
	attr_reader :productos,:cliente,:fecha_alquiler,:fecha_devolucion
	attr_writer :productos,:cliente,:fecha_alquiler,:fecha_devolucion
end

v_productos = []
v_clientes  = []
while true
	puts "[1] Listar productos"
	puts "[2] Añadir productos"
	puts "[3] Ficha producto"
	puts "[4] Lista clientes"
	puts "[5] Añadir clientes"
	puts "[6] Ficha cliente"
	puts "[7] Alquiler productos"
	puts "[8] Salir"

	print "\nElejir una opcion: "
	opcion = gets.chomp.to_i

	if (opcion > 7)
		break
	end

	case
		when opcion == 1 then
			puts "Lista de Productos"
			puts "=================="
			for i in 0..v_productos.length-1
				puts "Titulo: #{v_productos[i].titulo}"
				puts "Tipo  : #{v_productos[i].obtenerTipoProducto}"
				puts "Precio: #{v_productos[i].precio_alquiler}"
				puts "Plazo: #{v_productos[i].plazo_alquiler}"
				puts "¿Alquilado?: #{v_productos[i].estaAlquilado}"
				puts "=================="
			end
		when opcion == 2 then
			puts "Añadir un Producto"
			puts "=================="
			puts "Introduzca la siguiente informacion: "
			producto = Producto.new
			puts "Titulo: "
			producto.titulo = gets.chomp
			puts "Tipo (Pelicula/Videojuego): "
			tipo_tmp = gets.chomp
			if (tipo_tmp.upcase == "PELICULA")
				producto.tipo = TipoProducto::PELICULA
			else
				producto.tipo = TipoProducto::VIDEOJUEGO
			end
			puts "Precio Alquiler: "
			producto.precio_alquiler = gets.chomp.to_f
			puts "Plazo Alquiler : "
			producto.plazo_alquiler = gets.chomp.to_i
			puts "¿Alquilado? (Si/No): "
			alquilado_tmp = gets.chomp
			if (alquilado_tmp.upcase=="SI")
				producto.alquilado = Alquilado::SI
			else
				producto.alquilado = Alquilado::NO
			end
			v_productos.push(producto)
			puts "\n\nEl producto fue añadido exitosamente.\n\n"
		when opcion == 3 then
			puts "Ficha de Producto"
			puts "================="
			puts "Introduzca el titulo: "
			titulo = gets.chomp
			for j in 0..v_productos.length-1
				if (titulo.upcase == v_productos[j].titulo.upcase)
					puts "Titulo: #{v_productos[j].titulo}"
					puts "Tipo  : #{v_productos[j].obtenerTipoProducto}"
					puts "Precio: #{v_productos[j].precio_alquiler}"
					puts "Plazo : #{v_productos[j].plazo_alquiler}"
					puts "¿Alquilado?: #{v_productos[j].estaAlquilado}"
					break
				end
			end
		when opcion == 4 then
			puts "Lista de Clientes"
			puts "=================="
			for i in 0..v_clientes.length-1
				puts v_clientes[i]
				puts "=================="
			end
		when opcion == 5 then
			puts "Añadir un Cliente"
			puts "================="
			cliente = Cliente.new
			puts "Introduzca la siguiente informacion: "
			puts "Nombre: "
			cliente.nombre = gets.chomp
			puts "Direccion: "
			cliente.direccion = gets.chomp
			puts "Telefono: "
			cliente.telefono = gets.chomp
			cliente.prod_alquilados = []

			v_clientes.push(cliente)

			puts "\n\nEl cliente fue añadido exitosamente.\n\n"
		when opcion == 6 then
			puts "Ficha de Cliente"
			puts "================"
			puts "Introduzca el numero cliente: "
			num_cliente = gets.chomp.to_i
			for j in 0..v_clientes.length-1
				if (num_cliente == v_clientes[j].num_cliente)
					puts v_clientes[j]
					break
				end
			end
		when opcion == 7 then
			puts "Alquiler de Productos"
			puts "====================="
			puts "Introduzca numero de cliente: "
			num_cliente = gets.chomp.to_i
			encontrado = false
			for k in 0..v_clientes.length-1
				if (num_cliente == v_clientes[k].num_cliente)
					puts "====="
					puts v_clientes[k]
					puts "====="
					puts "Tipo de Alquiler (P/V): "
					tipo_alquiler = gets.chomp.upcase
					if (tipo_alquiler == "P")
						puts "Titulo de Pelicula: "
						titulo = gets.chomp.upcase
						producto_tmp = v_productos.find{ |prod| prod.titulo.upcase == titulo }
						if (producto_tmp)
							if (producto_tmp.alquilado == Alquilado::SI)
								puts "\n\nEsta pelicula ya esta alquilada.\n\n"
							else
								v_clientes[k].prod_alquilados.push(producto_tmp)
								#Añadir el objeto producto_tmp a la factura
							end
						end
					else

					end

					encontrado = true
					break
				end
			end
			if not(encontrado)
				puts "\n\nEl cliente numero #{num_cliente} no existe.\n\n"
			end
	end


end
