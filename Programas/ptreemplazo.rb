
require_relative "pruebas"

#------------------------------------------------------------------------------ 
# Función para reemplazar palabras a tiempo real
#------------------------------------------------------------------------------
def replace(file, contador)
  # Leer el contenido del archivo original
  texto = File.read(file)

  #Llamando la función para display
  display_original(texto)

  loop do
    # Solicita la palabra que será reemplazada
    print "\n¿Qué palabra deseas reemplazar? (o escribe 'salir' para terminar): "
    original = gets.chomp
    break if original.downcase == "salir"

    # Pido la nueva palabra
    print "\n¿Por cuál palabra deseas reemplazarla?: "
    nueva = gets.chomp

    # Reemplaza la palabra en todo el texto
    texto = texto.to_s.gsub(/\b#{Regexp.escape(original)}\b/, nueva)

    # Muestra el texto actualizado
    puts "\nTexto actualizado:\n#{texto}"

    # Se incrementa cada vez más
    contador += 1
  end

  # Guarda el texto modificado en el archivo de salida
  File.open(file, "w") { |f| f.puts texto }

  puts "Cambios guardados en el archivo '#{file}'."
  return contador
end
#-----------------------------------------------------------------------------------------------------
#Fin de la función replace

                          #Esta función me ayuda a contar cuantas veces se modifico 
#-----------------------------------------------------------------------------------------------------
def count_replace(contador)
  puts "El texto ha sido modificado #{contador} veces."
end

#------------------------------------------------------------------------------ 
#Fin de la función count_replace


              #Funciones de display:
#----------------------------------------------------------------------------------------------
def display_original(texto)
  #Muestra el texto original
  puts ("Archivo original: #{texto}")
end

def display_actualizado(texto)
  # Muestra el texto actualizado
  puts ("\nTexto actualizado:\n#{texto}")
end

#----------------------------------------------------------------------------------------------

