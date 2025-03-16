#Christian Matias
#Carlos Sanchez
#Joel Maisonet




#Se creará una función para la creación de archivos
#----------------------------------------------------------------------

def archivo

    #validación si ocurre un problema
    begin
        archivo = "prueba.txt"

        if File.exist?(archivo)
            puts "El archivo ya existe"

        else
         File.open(archivo, "w")  do |file|
            file.puts("esto es una prueba." )
            file.puts("No se cuanto tarde en resolver esto\n pero veremos")
         end

         puts "Tu archivo se creo correctamente: #{archivo}"
        end

rescue StandardError => e
    puts "Ocurrio un error al manejar el archivo: #{e.message}"
 end
 
end

#fin de la función
#------------------------------------------------------------------------------



#Creo una función para poder contar las palabras
#-------------------------------------------------------------------------------


def contar_palabras(palabra)
    begin
        texto = File.read(palabra)

        letras = texto.split(/\s+/)

        total_letras = letras.size
        puts "Usted tiene #{total_letras} de palabras."
        

    rescue StandardError => e
        puts "Ocurrio un error para la lectura que es: #{e.message}"

    end
end
#fin de la función


#guardando el archivo para usarlo con la función

def anadir_palabras(archivo,texto_agregar )
    begin
        File.open(archivo, "a" ) do |file|
            file.puts(texto_agregar)

        end
        puts "Se añadio correctamente: #{archivo}"

    rescue StandardError => e
        puts "El problema es: #{e.message}"
    end 
end


#Contar oraciones
#----------------------------------------------------------------
def contar_oraciones(oracion)
    begin 
        texto = File.read(oracion)
        parrafo = texto.split(/[\.\!\?]+/)
        total_oraciones = parrafo.size
        puts "Tiene un total de oraciones #{total_oraciones}"

    rescue StandardError => e
        puts "El error aquí es: #{e.message}"

    end
end


# Nombre del archivo que usaremos
file = "prueba.txt"

# Llamar a la función para crear el archivo
archivo()

# Contar las palabras en el archivo
contar_palabras(file)

# Añadir texto al archivo
puts "¿Desea añadir texto al archivo? (escriba 'si' para continuar)"
respuesta = gets.chomp.downcase
if respuesta == "si"
  puts "Escriba el texto que desea añadir:"
  texto = gets.chomp
  anadir_palabras(file, texto)

  contar_oraciones(file)
else
  puts "Adiós. No se añadió nada al archivo."
end

# Contar las oraciones en el archivo
contar_oraciones(file)