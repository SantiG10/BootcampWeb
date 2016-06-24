info_hash = {
  nombre: "Santiago",
  identificacion: "1034821412",
  direccion: "08-14-12"
}

info_hash.each do |key, value|
  puts key.value
end

#
# array_inf = ["Santiago Giraldo Mejía", 1037640756, "Medellin", "08-03-1995"]
# array_inf.each_with_index do |dato, index|
#   if index == 0
#     print "Yo, " + dato
#   elsif index == 1
#     print " Identificado con CC " + dato.to_s
#   elsif index == 2
#     print " Expirada en " + dato
#   elsif index == 3
#     puts " Con fecha de nacimiento " + dato
#   end
# end
