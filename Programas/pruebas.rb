 #Se crea la función para el archivo(Esto es para pruebas / Será eliminada tras haber finalizado)
#-----------------------------------------------------------------------------------
def crear_file(file)

    begin #Comienzo del Begin
  
      unless File.exist?(file)#Validamos su existencia por si existe no crearla
        File.open(file, "w") do |archivo|
        end
        puts "Archivo creado"
      else
        puts "El archivo ya existe"
      end
  
      #Empezamos con los rescue
    rescue Errno::ENOENT
      puts "Error, no se pudo crear el archivo"
    rescue => e
      puts "Ocurrió un error: #{e.message}"
    end
end #Final de crear_file
  #---------------------------------------------------------------------------
  
  
    #Función para escribir en el file (Para pruebas)
  #--------------------------------------------------------------------------
def escribir_file(file)
  
  
    begin # Comienzo del begin
      File.open(file, "a") do |archivo|
        print "Escribe lo que deseas: "
        data = gets.chomp
        archivo.puts data
      end
  
  
      puts "No ocurrió ningún problema"
  
      #Comienzo de los rescue
    rescue Errno::ENOENT
      puts "Error, hubo un problema al escribir en el archivo"
    rescue => e
      puts "Ocurrió un error inesperado: #{e.message}"
    end
end #Final de escribir_file
  #---------------------------------------------------------------------------




  # Función que encapsula la lógica de reemplazo de palabras en un texto


def reemplazar_palabra(texto, original, nueva)
  texto.gsub(/\b#{Regexp.escape(original)}\b/, nueva)
end
#---------------------------------------------------------------------------------




                              #Función para probar el reemplazo de palabras
#---------------------------------------------------------------------------------------------------

def test_replace()
  begin
    # Crear archivo de prueba
    file = "..\\Archivos\\prueba.txt"
    unless File.exist?(file)
      puts "El archivo de prueba no existe."
      return
    end

    # Solicitar la palabra original y su reemplazo al usuario
    puts "Escribe la palabra que deseas reemplazar:"
    original = gets.chomp
    puts "Escribe la nueva palabra que sustituirá a la anterior:"
    nueva = gets.chomp

    # Leer el archivo y aplicar el reemplazo
    texto = File.read(file)
    resultado = reemplazar_palabra(texto, original, nueva)
    puts "\nTexto actualizado:\n#{resultado}"

    # Guardar resultado en un archivo nuevo
    File.open(file, "w") { |f| f.puts resultado }

    # Verificar si el reemplazo fue exitoso
    if resultado.include?(nueva) && !resultado.include?(original)
      puts "Test de replace pasó correctamente"
    else
      puts "Test de replace falló"
    end

    # Eliminar archivos usados en la prueba
  rescue => e
    puts "Ocurrió un error durante la prueba: #{e.message}"
  end
end
#---------------------------------------------------------------------------------------------------
