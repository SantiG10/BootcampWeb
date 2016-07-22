# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(marca:"Nike", talla:"11", referencia:"123", color:"negro",costo_unitario:230000, descripcion:"Zapatos comodos")
Product.create(marca:"polo", talla:"s", referencia:"234",color:"Rojo", costo_unitario:800, descripcion:"camisa americana")
Product.create(marca:"polo", talla:"s", referencia:"234",color:"rojo", costo_unitario:800, descripcion:"camisa americana")
Product.create(marca:"americano", talla:"m", referencia:"234",color:"azul", costo_unitario:200, descripcion:"camisa americana")
Product.create(marca:"americano", talla:"s", referencia:"234",color:"verde", costo_unitario:800, descripcion:"camisa americana")
Product.create(marca:"polo", talla:"s", referencia:"234",color:"verde", costo_unitario:800, descripcion:"camisa americana")
Product.create(marca:"nonita", talla:"l", referencia:"234",color:"azul", costo_unitario:100, descripcion:"camisa americana")
Product.create(marca:"polo", talla:"s", referencia:"234",color:"verde", costo_unitario:2000, descripcion:"polo")
Product.create(marca:"adida", talla:"m", referencia:"238",color:"rojo", costo_unitario:1000, descripcion:"adidas")
