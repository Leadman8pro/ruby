      
      #Esta función será el encargado del menú para los reportes
#----------------------------------------------------------------------------------------------------

def reportes():
  #Comienza el begin
  begin
    puts("\n #{"=" * 20} Menu #{"=" * 20}")
    
    puts "1) Cantidad de veces que útilizo el P.T (Automático)"
    puts "2) Cantidad de veces que útilizo P.T (Manual)"
    puts "3) Cantidad de veces que útiliz Procesador de reemplazos"
    puts "4) Cantidad total de caracteres búscados"
    puts "5) Salir"
    
  #Comienzo con los rescue
rescue ArgumentError => tipo
  puts ("Se encontró valores incorrectos, inténtelo de nuevo, Error: #{tipo.message}")  
  
rescue StandardError => e
  puts "Ocurrio un error, error: #{e.message}"

end # Fin del Begin-Rescue


def main_reporte()
  def main()
    loop do
    #Comienza el begin
      begin
        
        reportes()

          print "\n¿Cuál opción deseas?: "
    
          opcion = gets.chomp
          #Comienza el case
          case (opcion)
          when "1"  #Cantidad de veces P.T(automatico Chris)
         
            
      
          when "2" #Cantidad de veces que utilizo P.T(Manual Chris)
          


      
          when "3" # Cantidad de veces que útilizo Reemplazo (Carlos)



      
          when "4" # Total de caracteres (Carlos)
        




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