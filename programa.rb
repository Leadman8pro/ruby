#Christian Matias
#Carlos Sanchez
#Joel Maisonet


      








                            #Se crea la función para el archivo
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
  end
  #---------------------------------------------------------------------------
  
  
                              #Función para escribir en el file
  #--------------------------------------------------------------------------
  def escribir_file(file)
  
  
    begin # Comienzo del begin
      File.open(file, "a") do |archivo|
        puts "Escribe lo que deseas"
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
  end
  #---------------------------------------------------------------------------
  
  
                        #Comienzo el contador de minuscula
  #---------------------------------------------------------------------------
  def contador_minus(file)
    parrafo = File.read(file) #Leer el file para encontrar las minusculas
    minuscula = parrafo.count("a-z")#El contador
    puts "Tu párrafo tiene #{minuscula} letras minúsculas"
  end
  #----------------------------------------------------------------------------------
  
  
  
  
  
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
  
  
  
  
                      #Comienzo el contador de los numeros dentro del file
  #-----------------------------------------------------------------------------------
  def contador_num(file) 
  
    parrafo = File.read(file) #Lee el file para encontrar los números
    can_numero = parrafo.scan(/[0-9]/).size #El contador
    puts "El archivo contiene #{can_numero} números"
  end
  #-------------------------------------------------------------------------------------
  
#   file = "prueba.txt"
#   crear_file(file)
#   escribir_file(file)
#   contador_minus(file)
#   contador_num(file)
#   contar_vocales(file)
  
                          #Empezamos con el menú
  #---------------------------------------------------------------------------------------
  puts "=" * 20
  puts "MENÚ"
  puts "=" * 20
  
  puts "1) Procesador de texto (Automático)"
  puts "2) Procesador de texto (Manual)"
  puts "3) Procesador de reemplazos"
  puts "4) Reporte de utilización"
  puts "5) Salir"
  puts "\n¿Cuál opción deseas?: "
  
  menu = gets.chomp.to_i
  #--------------------------------------------------------------------------------------------
  
  
  
  
                                        #Empezamos con el main case
  #-------------------------------------------------------------------------------------------
  def main(menu , file)
  
    #Comienza el begin
    begin
  
      #Comienza el case
      case menu
      when 1  #Procesa datos automáticos
        nil
  
      when 2 #Procesa el texto manual
        nil
  
      when 3 # Procesa los datos de reemplazo
        nil
  
      when 4  # Entran los reportes
        nil

      when 5

  
      else
        puts "Escogiste algo erróneo"
      end
  
      #Comienzo con los rescue
    rescue StandardError
      puts "Ingresaste un dato erróneo, debe ser un número del 1 al 4"
    rescue => e
      puts "Ocurrió un error inesperado: #{e.message}"
    end
  end
  #------------------------------------------------------------------------
                              #End Code