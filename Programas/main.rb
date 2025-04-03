#Comp-323 Ruby

#Christian Matias
#Carlos Sanchez
#Joel Maisonet

#Entrega: 7 de abril de 2025


 #Importaciones de librerías:

require_relative "menu"
require_relative "pruebas"
require_relative "ptautomatico"
require_relative "ptmanual"
require_relative "menu_reportes.rb"
require_relative "ptreemplazo.rb"

                                    #Cargar Archivos
#---------------------------------------------------------------------------------------------------------
def cargar_archivos()
  loop do
    begin
      print("Ingrese el archivo que desea cargar (Sin formato txt): ")
      
      file = "prueba.txt"
      
      #Condición para saber si el archivo existe o no.
      unless File.exist?(file)
        puts("\nEl Archivo #{cargar_archivo}.txt, no existe, por favor inténtelo de nuevo. \n")
      else
        puts("\nEl Archivo fue cargado correctamente")
        return file
        break
        
      end #Fin de la condición
    rescue StandardError => error
      puts("Se encontró un error: #{error.message}")
    end #Fin del manejo de excepciones
  end #Fin del do loop
end #Fin para Cargar Archivos
#---------------------------------------------------------------------------------------------------------

#   crear_file(file)
#   contar_palabras(file)
#   contador_minus(file)
#   contador_num(file)
#   contar_vocales(file)

                         
  
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
            puts("\n #{" " * 8} Procesador de texto (Automático) #{" " * 8}")
            file = cargar_archivos()
            procesador_texto_automatico(file)
            volver_menu()
            
            
      
          when "2" #Procesa el texto manual
            puts("\n #{" " * 8}, Procesador de texto (Manual) #{" " * 8}")
            find_text('prueba.txt')




            volver_menu()
      
          when "3" # Procesa los datos de reemplazo
            puts("\n #{" " * 8}, Procesador de reemplazos #{" " * 8}")

            #Ya se llamo a la función, solo quita el (#)

            #replace(file)
            volver_menu()
      
          when "4" # Entran los reportes
            puts("\n #{" " * 8}, Reporte de utilización #{" " * 8}")
            reportes()
            volver_menu()

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