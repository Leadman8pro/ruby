

#Comienzo del contador de vocales
#---------------------------------------------------------------------------------
def contar_vocales(file)
    
    parrafo = File.read(file)
    vocales = parrafo.scan(/[aeiouAEIOU]/) #Para que me salgan las que he utilizado en el archivo
    num_vocales = parrafo.scan(/[aeiouAEIOU]/).size #Para que me cuente cuantas tengo
    save_vocales = vocales.inspect #Para que a la hora de darle puts vaya horizontal y no vertical
    puts "usted tiene de vocales #{num_vocales} y estas son #{save_vocales}"
  end
      #-------------------------------------------------------------------------------------




                            #Función para ubicar palabras
#---------------------------------------------------------------------------------------------------
def find_text(file, find)

  parrafos = File.readlines(file) 

  parrafos.each_with_index do |linea, index|
    if linea.include?(find)
      puts "La palabra '#{find}' se encuentra en la línea #{index + 1}: #{linea.strip}"
    end #Fin del ciclo do
  end #Fin de la condición
end #Fin de la función find_text
#---------------------------------------------------------------------------------------------------

                            #Funcion de Contar Palabras

#---------------------------------------------------------------------------------------------------

def contar_palabra(file)
  # Pide al usuario la palabra que desea buscar
  puts "¿Qué palabra deseas buscar?: "
  palabra = gets.chomp

  # Lee el contenido completo del archivo
  texto = File.read(file)

  # Usa expresiones regulares para encontrar coincidencias exactas (sin importar mayúsculas/minúsculas)
  cantidad = texto.scan(/\b#{Regexp.escape(palabra)}\b/i).size
  puts "La palabra '#{palabra}' aparece #{cantidad} veces en el archivo."
end

#---------------------------------------------------------------------------------------------------
                              #Funcion de Remplazar vocales
#---------------------------------------------------------------------------------------------------
def reemplazar_vocales(file)
  texto = File.read(file)

  print "¿Qué vocal deseas reemplazar? (a, e, i, o, u): "
  vocal_original = gets.chomp.downcase

  print "¿Por cuál vocal deseas reemplazarla?: "
  vocal_nueva = gets.chomp.downcase
  # Reemplaza todas las ocurrencias de la vocal original (ignorando mayúsculas/minúsculas)
  reemplazado = texto.gsub(/#{vocal_original}/i, vocal_nueva)
  cantidad = texto.scan(/#{vocal_original}/i).size

  puts "\nTexto modificado:\n#{reemplazado}"
  puts "\nSe reemplazaron #{cantidad} vocales."

  File.open(file, "w") { |f| f.puts reemplazado }
end
#---------------------------------------------------------------------------------------------------



