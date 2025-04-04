                  #Función para reemplazar palabras  a tiempo real
#------------------------------------------------------------------------------

def replace(file)
  texto = File.read(file)

  # Solicita la palabra que será reemplazada
  print "¿Qué palabra deseas reemplazar?: "
  original = gets.chomp

  # Solicita la palabra nueva
  print "¿Por cuál palabra deseas reemplazarla?: "
  nueva = gets.chomp

  # Reemplaza la palabra en todo el texto (coincidencias exactas)
  texto_modificado = texto.gsub(/\b#{Regexp.escape(original)}\b/, nueva)

  # Muestra el texto actualizado
  puts "\nTexto actualizado:\n#{texto_modificado}"

  # Guarda el nuevo texto en un archivo
  File.open("resultado_reemplazo.txt", "w") { |f| f.puts texto_modificado }

end
#------------------------------------------------------------------------------------------------

                #Esta función fue creada para contar cuantas veces se manipulo la data
#---------------------------------------------------------------------------------------------
def count_replace(file)

end
#----------------------------------------------------------------------------------------------

# Esta función 'display' está vacía por ahora. Se usará en el módulo de reemplazos para mostrar el contenido actualizado en tiempo real en el futuro.

#----------------------------------------------------------------------------------------------
def display
 
end

#----------------------------------------------------------------------------------------------

