
require_relative "pruebas"

#------------------------------------------------------------------------------ 
# Función para reemplazar palabras a tiempo real
#------------------------------------------------------------------------------
def replace(file, contador)
  # Leer el contenido del archivo original
  texto = File.read(file)

  loop do
    # Solicita la palabra que será reemplazada
    print "¿Qué palabra deseas reemplazar? (o escribe 'salir' para terminar): "
    original = gets.chomp
    break if original.downcase == "salir"

    # Pido la nueva palabra
    print "¿Por cuál palabra deseas reemplazarla?: "
    nueva = gets.chomp

    # Reemplaza la palabra en todo el texto
    texto = texto.gsub(/\b#{Regexp.escape(original)}\b/, nueva)

    # Muestra el texto actualizado
    puts "\nTexto actualizado:\n#{texto}"

    # Se incrementa cada vez más
    contador += 1
  end

  # Guarda el texto modificado en el archivo de salida
  File.open("..\\Archivos\\prueba.txt", "w") { |f| f.puts texto }

  puts "Cambios guardados en el archivo 'pruebas.txt'."
  return contador
end

                          #Esta función me ayuda a contar cuantas veces se modifico 
#-----------------------------------------------------------------------------------------------------
def count_replace(contador)
  puts "El texto ha sido modificado #{contador} veces."
end

#------------------------------------------------------------------------------ 
#----------------------------------------------------------------------------------------------

# Esta función 'display' está vacía por ahora. Se usará en el módulo de reemplazos para mostrar el contenido actualizado en tiempo real en el futuro.

#----------------------------------------------------------------------------------------------
def display
 
end

#----------------------------------------------------------------------------------------------

