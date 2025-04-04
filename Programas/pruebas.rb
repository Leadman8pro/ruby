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
  begin # Comienzo del begin

    # Crear archivo de prueba
    test_file = "test_replace.txt"
    File.open(test_file, "w") do |archivo|
      archivo.puts "Hola mundo. Este mundo es verde."
    end

    # Declarar palabra a reemplazar y su reemplazo
    original = "mundo"
    nueva = "planeta"

#Asi falla el codigo 
    # original = "Toro"
    # nueva = "planeta"

    # Leer el archivo y aplicar el reemplazo
    texto = File.read(test_file)
    resultado = reemplazar_palabra(texto, original, nueva)
    puts "\nTexto actualizado:\n#{resultado}"

    # Guardar resultado en un archivo nuevo
    File.open("resultado_reemplazo.txt", "w") { |f| f.puts resultado }

    # Verifica si el reemplazo fue exitoso
    if resultado.include?("planeta") && !resultado.include?("mundo")
      puts "Test de replace pasó correctamente"
    else
      puts "Test de replace falló"
    end

    # Elimina archivos usados en la prueba
    File.delete(test_file) if File.exist?(test_file)
    File.delete("resultado_reemplazo.txt") if File.exist?("resultado_reemplazo.txt")

  rescue => e
    puts "Ocurrió un error durante la prueba: #{e.message}"
  end


end 
#---------------------------------------------------------------------------------------------------

# Ejecuta prueba automaticamente
test_replace()
