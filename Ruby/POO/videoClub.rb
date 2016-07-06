class Referencia
  PELICULA = 1
  VIDEO_JUEGO = 2
end

class Alquilado
  SI = true
  NO = false
end

class Producto
  def initialize(titulo,tipo,precio_alquiler,plazo_alquiler,esta_alquilado)
    @titulo = titulo
    @tipo = tipo
    @precio_alquiler = precio_alquiler
    @plazo_alquiler = plazo_alquiler
    @alquilado = esta_alquilado
  end

  def getTitulo
    @titulo
  end

  def getTipo
    @tipo
  end

  def getPrecio
    @precio_alquiler
  end

  def getPlazo
    @plazo_alquiler
  end

  def getAlquilado
    @alquilado
  end

  def setTitulo(titulo)
    @titulo = titulo
  end

  def setTipo(tipo)
    @tipo = tipo
  end

  def setPrecio(precio)
    @precio_alquiler = precio
  end

  def setPlazo(plazo)
    @plazo_alquiler = plazo
  end

  def setAlquilado(estado)
    @alquilado = estado
  end
end

class Pelicula < Producto
  def initialize(genero,year,director)
    @genero = genero
    @year = year
    @director = director
    @interpretes = []
  end

  def getGenero
    @genero
  end

  def getYear
    @year
  end

  def getDirector
    @director
  end

  def setGenero(genero)
    @genero = genero
  end

  def setYear(year)
    @year = year
  end

  def setDirector(director)
    @director = director
  end

  def setInterprete(interprete)
    @interpretes[@interpretes.length] = interprete
  end

  def getInterpretes
    contador = 1
    @interpretes.each do |interprete|
      puts "#{contador} #{interprete}"
      contador += 1
    end
  end
end

class Genero
  ACCION = 1
  FANTASTICA = 2
  DRAMA = 3
  AVENTURA = 4
  PUZZLE = 5
  INFANTIL = 6
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
end


class VideoJuego < Producto
  def initialize(tipo,consola)
    @tipo = tipo
    @consola = consola
  end

  def getTipo
    @tipo
  end

  def getConsola
    @consola
  end

  def setTipo(tipo)
    @tipo = tipo
  end

  def setConsola(consola)
    @consola = consola
  end
end

class Cliente
  def initialize(documento,nombre,direccion,telefono)
    @documento = documento
    @nombre = nombre
    @direccion = direccion
    @telefono = telefono
    @productosAlquilados = []
  end

  def getDocumento
    @documento
  end

  def getNombre
    @nombre
  end

  def getDireccion
    @direccion
  end

  def getTelefono
    @telefono
  end

  def getProductosAlquilados
    contador = 1
    @productosAlquilados.each do |producto|
      puts "#{contador} #{producto.getTitulo}"
      contador += 1
    end
  end

  def setDireccion(direccion)
    @direccion = direccion
  end

  def setTelefono(telefono)
    @telefono = telefono
  end

  def setProductosAlquilados(producto)
    @productosAlquilados[@productosAlquilados.length] = producto
  end

  def getProductosAlquiladosTamaño
    @productosAlquilados.length
  end
end

class Factura
  def initialize(cliente,fecha_alquiler,fecha_devolucion)
    @cliente = cliente
    @productos = []
    @fecha_alquiler = fecha_alquiler
    @fecha_devolucion = fecha_devolucion
    @valor_total = 0.0
  end

  def getCliente
    @cliente
  end

  def getProductos
    contador = 1
    @productos.each do |producto|
        puts "#{contador}. #{producto.getTitulo} - Costo: #{producto.getPrecio}"
        contador += 1
    end
  end

  def getFechaAlquiler
    @fecha_alquiler
  end

  def getFechaDevolucion
    @fecha_devolucion
  end

  def getValorTotal
    @valor_total
  end

  def setValorTotal(valor)
    @valor_total = valor
  end

  def setCliente(cliente)
    @cliente = cliente
  end

  def setFechaAlquiler(fecha)
    @fecha_alquiler = fecha
  end

  def setFechaDevolucion(fecha)
    @fecha_devolucion = fecha
  end

  def setProducto(producto)
    @productos[@productos.length] = producto
  end
end

def listar_productos(vec_productos)
  puts "\nLISTAR PRODUCTOS"
  puts ""
  contador = 1
  vec_productos.each do |x|
    puts "Producto #{contador}"
    puts "Titulo: #{x.getTitulo}"
    if x.getTipo == 1
      puts "Tipo: Pelicula"
    else
      puts "Tipo: Video Juego"
    end
    puts "Precio alquiler: #{x.getPrecio}"
    puts "Plazo alquiler (Dias): #{x.getPlazo}"
    if x.getAlquilado
      puts "Estado de alquiler: Alquilado"
    else
      puts "Estado de alquiler: No Alquilado"
    end
    contador += 1
    puts ""
  end
end

def listar_clientes(vec_clientes)
  puts "\nLISTAR CLIENTES"
  puts ""
  contador = 1
  vec_clientes.each do |cliente|
    puts "Cliente #{contador}"
    puts "Documento: #{cliente.getDocumento}"
    puts "Nombre: #{cliente.getNombre}"
    puts "Direccion: #{cliente.getDireccion}"
    puts "Telefono: #{cliente.getTelefono}"
    contador += 1
    puts ""
  end
end

def anadir_producto(vec_producto,vec_peliculas,vec_video_juegos)
  puts "\nAÑADIR PRODUCTO"
  print "Titulo: "
  titulo = gets.chomp
  print "Tipo (Pelicula / VideoJuego): "
  tipo = gets.chomp.capitalize
  print "Precio Alquiler: "
  precio = gets.chomp.to_f
  print "Plazo Alquiler (Dias): "
  plazo = gets.chomp.to_i

  if (tipo == "Pelicula")
    tipo_alquiler = Referencia::PELICULA
    puts "PELICULAS"
    print "Genero: "
    genero = gets.chomp.capitalize
    print "Año: "
    year = gets.chomp.to_i
    print "Director: "
    director = gets.chomp

    case genero
      when "Accion" then genero = Genero::ACCION
      when "Fantastica" then genero = Genero::FANTASTICA
      when "Drama" then genero = Genero::DRAMA
      when "Aventura" then genero = Genero::AVENTURA
      when "Puzzle" then genero = Genero::PUZZLE
      when "Infantil" then genero = Genero::INFANTIL
      else puts "ERROR"
    end

    vec_peliculas[vec_peliculas.length] = Pelicula.new(genero,year,director)
    puts "Interpretes"
    print "Cuantos Interpretes desea ingresar: "
    num = gets.chomp.to_i
    for i in (0..num-1)
      print "Ingrese el Interprete #{i+1}: "
      interprete = gets.chomp
      vec_peliculas[vec_peliculas.length-1].setInterprete(interprete)
    end
  else
    tipo_alquiler = Referencia::VIDEO_JUEGO
    puts "VIDEO JUEGO"
    print "Estilo: "
    estilo = gets.chomp.capitalize
    print "Plataforma: "
    plataforma = gets.chomp.capitalize

    case estilo
      when "Accion" then estilo = Estilo::ACCION
      when "Deporte" then estilo = Estilo::DEPORTE
      when "Aventura" then estilo = Estilo::AVENTURA
      when "Puzzle" then estilo = Estilo::PUZZLE
      when "Infantil" then estilo = Estilo::INFANTIL
      else puts "ERROR"
    end

    case plataforma
      when "Xbox" then plataforma = Plataforma::XBOX
      when "Playstation" then plataforma = Plataforma::PLAYSTATION
      when "Wii" then plataforma = Plataforma::WII
      else puts "ERROR"
    end
    vec_video_juegos[vec_video_juegos.length] = VideoJuego.new(estilo,plataforma)
  end
  vec_producto[vec_producto.length] = Producto.new(titulo,tipo_alquiler,precio,plazo,Alquilado::NO)
  puts "\nLa informacion se almacenó correctamente"
end

def anadir_cliente(vec_clientes)
  puts "\nAñadir cliente"
  print "Documento: "
  documento = gets.chomp
  print "Nombre: "
  nombre = gets.chomp.capitalize
  print "Dirección: "
  direccion = gets.chomp
  print "Telefono: "
  telefono = gets.chomp
  vec_clientes[vec_clientes.length] = Cliente.new(documento,nombre,direccion,telefono)
  puts "\nLa informacion se almacenó correctamente"
end

def ficha_cliente(vec_clientes)
  puts "\nFICHA DE UN CLIENTE"
  print "Ingrese el documento del cliente: "
  documento = gets.chomp
  encontro = false
  vec_clientes.each do |cliente|
    if cliente.getDocumento == documento
      encontro = true
      puts "\nDocumento: #{cliente.getDocumento}"
      puts "Nombre: #{cliente.getNombre}"
      puts "Direccion: #{cliente.getDireccion}"
      puts "Telefono: #{cliente.getTelefono}"
      puts "Productos alquilados"
      if cliente.getProductosAlquiladosTamaño == 0
        puts "Ninguno"
      else
        cliente.getProductosAlquilados
      end
    end
  end
  if encontro == false
    puts "\nNo se encontro cliente con ese documento"
  end
end

def ficha_producto(vec_productos)
  puts "\nFICHA PRODUCTO"
  print "Ingrese el titulo del producto: "
  nombre = gets.chomp
  encontro = false
  vec_productos.each do |x|
    if nombre == x.getTitulo
      encontro = true
      puts "\nTitulo: #{x.getTitulo}"
      if x.getTipo == 1
        puts "Tipo: Pelicula"
      else
        puts "Tipo: Video Juego"
      end
      puts "Precio alquiler: #{x.getPrecio}"
      puts "Plazo alquiler (Dias): #{x.getPlazo}"
      if x.getAlquilado
        puts "Estado de alquiler: Alquilado"
      else
        puts "Estado de alquiler: No Alquilado"
      end
    end
  end
  if encontro == false
    puts "\nNo se encontro producto con ese titulo"
  end
end

def listar_peliculas(vec_productos,vec_peliculas)
  indice = 0
  for i in (0..vec_productos.length-1)
    if vec_productos[i].getTipo == 1
      puts "\nPelicula #{indice+1}"
      puts "Titulo: #{vec_productos[i].getTitulo}"
      case vec_peliculas[indice].getGenero
        when 1 then genero = "Accion"
        when 2 then genero = "Fantastica"
        when 3 then genero = "Drama"
        when 4 then genero = "Aventura"
        when 5 then genero = "Puzzle"
        when 6 then genero = "Infantil"
        else puts "ERROR"
      end
      puts "Genero: #{genero}"
      puts "Año: #{vec_peliculas[indice].getYear}"
      puts "Director: #{vec_peliculas[indice].getDirector}"
      puts "Interpretes:"
      vec_peliculas[indice].getInterpretes
      indice += 1
    end
  end
end

def listar_video_juegos(vec_productos,vec_video_juegos)
  indice = 0
  for i in (0..vec_productos.length-1)
    if vec_productos[i].getTipo == 2
      puts "\nVideo Juego #{indice+1}"
      puts "Titulo: #{vec_productos[i].getTitulo}"
      case vec_video_juegos[indice].getTipo
        when 1 then estilo = "Accion"
        when 2 then estilo = "Deporte"
        when 3 then estilo = "Aventura"
        when 4 then estilo = "Puzzle"
        when 5 then estilo = "Infantil"
        else puts "ERROR"
      end

      case vec_video_juegos[indice].getConsola
        when 1 then plataforma = "Xbox"
        when 2 then plataforma = "Playstation"
        when 3 then plataforma = "Wii"
        else puts "ERROR"
      end
      puts "Genero: #{estilo}"
      puts "Consola: #{plataforma}"
      indice +=1
    end
  end
end

def buscar_cliente(cliente,vec_clientes)
  indice = 0
  vec_clientes.each do |x|
    if x.getDocumento == cliente
      break
    end
    indice += 1
  end
  indice
end

def buscar_producto(producto,vec_productos)
  indice = 0
  vec_productos.each do |x|
    if x.getTitulo == producto
      break
    end
    indice += 1
  end
  indice
end

def alquiler_producto(vec_facturas,vec_clientes,vec_productos)
  puts "FACTURA"
  print "ingrese el documento del cliente: "
  cliente = gets.chomp
  indice_cliente = buscar_cliente(cliente,vec_clientes)
  print "Fecha del alquiler (DD/MM/YYYY): "
  fecha_alquiler = gets.chomp
  print "Fecha del devolucion (DD/MM/YYYY): "
  fecha_devolucion = gets.chomp
  vec_facturas[vec_facturas.length] = Factura.new(vec_clientes[indice_cliente],
                                              fecha_alquiler,fecha_devolucion)
  print "Cuantos productos desea ingresar: "
  num_productos = gets.chomp.to_i
  total = 0.0
  for i in (0..num_productos-1)
    print "Ingrese el titulo del producto #{i+1}: "
    producto = gets.chomp
    indice_producto = buscar_producto(producto,vec_productos)
    total += vec_productos[indice_producto].getPrecio
    vec_facturas[vec_facturas.length-1].setProducto(vec_productos[indice_producto])
    vec_productos[indice_producto].setAlquilado(Alquilado::SI)
    vec_clientes[indice_cliente].setProductosAlquilados(vec_productos[indice_producto])
  end

  vec_facturas[vec_facturas.length-1].setValorTotal(total)
  cliente = vec_facturas[vec_facturas.length-1].getCliente
  puts "\n------ IMPRESION FACTURA --------"
  puts "Cliente: #{cliente.getNombre} - Documento: #{cliente.getDocumento}"
  puts "Fecha del alquiler (DD/MM/YYYY): #{fecha_alquiler}"
  puts "Fecha del devolucion (DD/MM/YYYY): #{fecha_devolucion}"
  puts "PRODUCTOS"
  vec_facturas[vec_facturas.length-1].getProductos
  puts "Valor total: #{vec_facturas[vec_facturas.length-1].getValorTotal}"
end

def listar_facturas(vec_facturas)
  contador = 1
  puts "\nFACTURAS"
  vec_facturas.each do |x|
    cliente = x.getCliente
    puts "\nFactura #{contador}"
    puts "Cliente: #{cliente.getNombre} - Documento: #{cliente.getDocumento}"
    puts "Fecha del alquiler (DD/MM/YYYY): #{x.getFechaAlquiler}"
    puts "Fecha del devolucion (DD/MM/YYYY): #{x.getFechaDevolucion}"
    puts "PRODUCTOS"
    x.getProductos
    puts "Valor total: #{x.getValorTotal}"
  end
end

vec_productos = []
vec_clientes = []
vec_video_juegos = []
vec_peliculas = []
vec_facturas = []

while true
  puts "\n----- MENU VIDEOCLUB -----"
  puts "1. LISTAR PRODUCTOS"
  puts "2. AÑADIR PRODUCTO"
  puts "3. FICHA PRODUCTO"
  puts "4. LISTA CLIENTES"
  puts "5. AÑADIR CLIENTE"
  puts "6. FICHA CLIENTE"
  puts "7. LISTAR PELICULAS"
  puts "8. LISTAR VIDEO JUEGOS"
  puts "9. ALQUILER DEL PRODUCTO"
  puts "10. LISTAR FACTURAS"
  puts "0. SALIR"
  print "ELIJA UNA OPCION: "
  opcion = gets.chomp.to_i

  case opcion
  when 0 then break
    when 1 then listar_productos(vec_productos)
    when 2 then anadir_producto(vec_productos,vec_peliculas,vec_video_juegos)
    when 3 then ficha_producto(vec_productos)
    when 4 then listar_clientes(vec_clientes)
    when 5 then anadir_cliente(vec_clientes)
    when 6 then ficha_cliente(vec_clientes)
    when 7 then listar_peliculas(vec_productos,vec_peliculas)
    when 8 then listar_video_juegos(vec_productos,vec_video_juegos)
    when 9 then alquiler_producto(vec_facturas,vec_clientes,vec_productos)
    when 10 then listar_facturas(vec_facturas)
    else  puts "OPCION INVALIDA...!"
  end
end
