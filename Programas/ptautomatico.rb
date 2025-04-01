#Creacion de Procesador De Texto Automatico
#-------------------------------------------------------------------------------------------------------
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

  puts("El archivo contiene un total de: #{total_palabras} palabras")

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

  puts "El archivo contiene un total de: #{total_oraciones} oraciones."
  return total_oraciones
  end #Final de contar oraciones
          

    #Comienzo el contador de los numeros dentro del file
  #-----------------------------------------------------------------------------------
  def contador_num(file) 

  parrafo = File.read(file) #Lee el file para encontrar los números
  can_numero = parrafo.scan(/[0-9]/).size #El contador

  puts "El archivo contiene un total de: #{can_numero} números"
  return can_numero

  end #Fin de la funcion contador_num
  #-------------------------------------------------------------------------------------

  contadores = contador_minus(file) + contar_palabras(file) + contar_oraciones(file) + contador_num(file)
  return contadores
  end #Final de Procesador_Texto_Automatico
  #-------------------------------------------------------------------------------------------------------------------------