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