

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




                            #Función para ubicar palabras
#---------------------------------------------------------------------------------------------------
def find_text(file)

  #Utilizo para que me diga la palabra a ubicar
  puts "Que palabra desea ubicar: "
  find = gets.chomp
  parrafos = File.readlines(file) 

  parrafos.each_with_index do |linea, index|
    if linea.include?(find)
      puts "La palabra '#{find}' se encuentra en la línea #{index + 1}: #{linea.strip}"
    end
  end
end
#---------------------------------------------------------------------------------------------------
                            



