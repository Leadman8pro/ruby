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
require_relative "ptreemplazo.rb"
require_relative "reportes"

                                    #Cargar Archivos
#---------------------------------------------------------------------------------------------------------
def cargar_archivos()
  loop do
    begin
      print("Ingrese el archivo que desea cargar (Sin formato txt): ")
      
      cargar_archivo = gets.chomp
      file = "..\\Archivos\\#{cargar_archivo}.txt"
      
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
#Variables Globales para contar:
$contador_ptautomatico = 0
$contador_ptmanual = 0
                                  #Limpiar Pantalla
#---------------------------------------------------------------------------------------------------------
def limpiar_pantalla
  if Gem.win_platform?  # Detectar si el sistema operativo es Windows
    system('cls')
  else  # Para Unix (Linux, macOS)
    system('clear')
  end #Fin de la condición
end #Fin de la función limpiar pantalla
#---------------------------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------------------------                         
  
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
            limpiar_pantalla()
            puts("\n #{"=" * 8} Procesador de texto (Automático) #{"=" * 8}")
            file = cargar_archivos()
            procesador_texto_automatico(file)
            $contador_ptautomatico += 1
            volver_menu()
            
            
      
          when "2" #Procesa el texto manual
            limpiar_pantalla()
            $contador_ptmanual += 1
            puts("\n #{"=" * 8} Procesador de texto (Manual) #{"=" * 8}")

            ptmanual_menu()

            print("\n¿Cuál opción deseas?: ")
            ptopcion = gets.chomp

            case (ptopcion)
              
            when "1" #Búsqueda Manual de Palabras
            limpiar_pantalla()
            file = cargar_archivos()

            print("\nIngrese la palabra para buscar: ")
            palabra =gets.chomp

            buscar_palabra(file, palabra)
            
            find_text(file, palabra)
            
            
            when "2" #Reemplazo de vocales por otras vocales
              limpiar_pantalla()
              file = cargar_archivos()
            
            when "3" #Volver al menu
              volver_menu()
            end #Fin del case-when
            
      
          when "3" # Procesa los datos de reemplazo
            puts("\n #{"=" * 8} Procesador de reemplazos #{"=" * 8}")

            #Ya se llamo a la función, solo quita el (#)

            #replace(file)
            volver_menu()
      
          when "4" # Entran los reportes
            puts("\n #{"=" * 8} Reporte de utilización #{"=" * 8}")
            contador_ptautomatico($contador_ptautomatico)
            contador_ptmanual($contador_ptmanual)
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