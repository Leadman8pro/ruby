#Comp-323 Ruby

#Christian Matias
#Carlos Sanchez
#Joel Maisonet

#Entrega: 7 de abril de 2025


      








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
  end
  #---------------------------------------------------------------------------
  
  def procesador_texto_automatico(file)
  
                          #Comienzo el contador de minuscula
    #---------------------------------------------------------------------------
    def contador_minus(file)
      parrafo = File.read(file) #Leer el file para encontrar las minusculas
      minuscula = parrafo.count("a-z")#El contador
      puts "Tu párrafo tiene #{minuscula} letras minúsculas"\

      return minuscula
    end #Fin de contador_minus
    #----------------------------------------------------------------------------------
    
    #Comienzo el contador de todas las palabras
    #---------------------------------------------------------------------------
    
    def contar_palabras(file)
      # Verificar si el archivo existe
      unless File.exist?(file)
        puts "El archivo '#{file}' no existe."
        return 0
      end
      
      # Leer el contenido del archivo
      contenido = File.read(file)
      
      # Dividir el texto en palabras usando espacios y eliminar caracteres no deseados
      palabras = contenido.split(/\s+/) # Divide por espacios en blanco
      
      # Contar el número de palabras
      total_palabras = palabras.size

      puts("Tiene un total de palabras: #{total_palabras}")
      
      return total_palabras
    end #Final de la función contar_palabra
    #----------------------------------------------------------------------------------
    
    #Comienzo el contador de todas las oraciones
    #---------------------------------------------------------------------------

    def contar_oraciones(file)
      contenido = File.read(file)
    
      # Dividir el texto en oraciones basándonos en los signos de puntuación
      
      oraciones = contenido.split(/[.!?]+/).map(&:strip) #.map(&:strip) se utiliza para ignorar espacios en blancos a la hora de dividir
    
      # Contar el número de oraciones
      total_oraciones = oraciones.reject(&:empty?).size #.reject(&:empty?).size se utiliza para contar y eliminar del conteo espacios en blanco.
    
      puts "El archivo '#{file}' tiene #{total_oraciones} oraciones."
      return total_oraciones
    end #Final de contar oraciones
      
                            
    
                        #Comienzo el contador de los numeros dentro del file
    #-----------------------------------------------------------------------------------
    def contador_num(file) 
    
      parrafo = File.read(file) #Lee el file para encontrar los números
      can_numero = parrafo.scan(/[0-9]/).size #El contador
    
      puts "El archivo contiene #{can_numero} números"
      return can_numero

    end #Fin de la funcion contador_num
    #-------------------------------------------------------------------------------------
  contadores = contador_minus(file) + contar_palabras(file) + contar_oraciones(file) + contador_num(file)
  return contadores
  end #Final de Procesador_Texto_Automatico
#-------------------------------------------------------------------------------------------------------------------------

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

#   crear_file(file)
#   contar_palabras(file)
#   contador_minus(file)
#   contador_num(file)
#   contar_vocales(file)
  
                          #Empezamos con el menú
  #---------------------------------------------------------------------------------------
  def menu()
    puts "=" * 20
    puts "MENÚ"
    puts "=" * 20
    
    puts "1) Procesador de texto (Automático)"
    puts "2) Procesador de texto (Manual)"
    puts "3) Procesador de reemplazos"
    puts "4) Reporte de utilización"
    puts "5) Salir"
  end #Fin del menu
  #--------------------------------------------------------------------------------------------

                            #Función para volver Menu
  #---------------------------------------------------------------------------------------
  def volver_menu()
    puts("¿Deseas volver al menu? (Si/No)")

    pregunta = gets.chomp.capitalize

    if pregunta == "Si"
      return main()
    else 
      print("Gracias por utilizar nuestros servicios...")
      exit()
    end #Fin de la condición
  end #Fin de la función Volver Menu
  #---------------------------------------------------------------------------------------
  
                                        #Empezamos con el main case
  #-------------------------------------------------------------------------------------------
  def main()
    loop do
    #Comienza el begin
      begin
        
          menu()

          print "\n¿Cuál opción deseas?: "
    
          opcion = gets.chomp
          #Comienza el case
          case (opcion)
          when "1"  #Procesa datos automáticos
            puts("#{" " * 8} Procesador de texto (Automático) #{" " * 8}")
            file = "prueba.txt"
            procesador_texto_automatico(file)
            volver_menu()
            
            
      
          when "2" #Procesa el texto manual
            puts("#{" " * 8}, Procesador de texto (Manual) #{" " * 8}")
            
      
          when "3" # Procesa los datos de reemplazo
            puts("#{" " * 8}, Procesador de reemplazos #{" " * 8}")
            
      
          when "4" # Entran los reportes
            puts("#{" " * 8}, Reporte de utilización #{" " * 8}")
            nil

          when "5"
            puts("Salir del programa...")
            break
          else
            raise ArgumentError
          end #Fin del case/when
      
        #Comienzo con los rescue
      rescue ArgumentError => tipo
        puts ("Se encontró valores incorrectos, inténtelo de nuevo, Error: #{tipo.message}")  
        
      rescue StandardError => e
        puts "Ocurrio un error, error: #{e.message}"
      
      end # Fin del Begin-Rescue
    end #Fin de funcion loop
  end #Fin de la funcion main
  #------------------------------------------------------------------------
                              #End Code

#Llamando la función Main para ejecutar el programa
main()