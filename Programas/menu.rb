def menu()
    puts("\n #{"=" * 20} Menu #{"=" * 20}")
    
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
    puts("\n¿Deseas volver al menu? (Si/No)")

    pregunta = gets.chomp.capitalize

    if pregunta == "Si"
      return main()
    else 
      print("\nGracias por utilizar nuestros servicios...")
      exit()
    end #Fin de la condición
end #Fin de la función Volver Menu
  #---------------------------------------------------------------------------------------

  #Función para desplegar el menu de ptmanual
#--------------------------------------------------------------------------------------------

def ptmanual_menu()
  puts("\n #{"=" * 20} Procesador De Texto (Manual) #{"=" * 20}")

  puts("1) Búsqueda manual de palabras o frases")
  puts("2) Reemplazo de vocales por otras vocales definidas por el usuario")
  puts("3) Volver al menu principal")

end #Fin de la función ptmanual
#---------------------------------------------------------------------------------------------------