# RegEx
Este proyecto tiene como objetivo desarrollar un sistema en Ruby para la búsqueda, análisis, reemplazo y conteo de texto dentro de archivos. Incluirá módulos que procesen texto de manera automática e interactiva, permitan reemplazar caracteres y palabras en tiempo real, y generen reportes detallados sobre la utilización del programa. También se integrará el uso de técnicas avanzadas, como expresiones regulares, para analizar y manipular el contenido de los archivos, así como la gestión del código a través de GitHub para fomentar la colaboración y el control de versiones.

## Funciones

```ruby
                      #Funciones Principales:
#-------------------------------------------------------------------------------------------------------

  menu() = #Esta función contiene todos los menuses que conlleva el programa. 
  
  main() = #Esta funcion contiene lo principal del programa. 

  volver_menu() = #Esta función se utiliza para volver al menu cuando el usuario lo indique. Se contesta por un: (Si/No)

                    #Procesador de Texto Automático
#--------------------------------------------------------------------------------------------------------

  procesador_texto_automatico() = #Esta función es una base para contener las demás funciones que se utilizarán para la área de procesamiento de texto automático.

  contar_palabras() = #Esta función se utiliza para contar las palabras dentro del archivo cargado por el usuario.

  contar_oraciones() = #Esta función se utiliza para contar las oraciones dentro del archivo cargado por el usuario.

  contador_minus() = #Esta función se utiliza para contar las minúsculas dentro del archivo cargado por el usuario.

  contador_num() = #Esta función se utiliza para contar la cantidad de dígitos dentro del archivo cargado por el usuario.

  

                          #Procesador de Texto Manual
#--------------------------------------------------------------------------------------------------------

  ptmanual_menu() = #Esta función despliega el menú con las opciones del módulo Manual: búsqueda, reemplazo o regresar al menú principal.

  find_text() = #Esta función permite buscar una palabra o frase ingresada por el usuario dentro del archivo. Muestra las líneas donde aparece.

  contar_palabra() = #Esta función le permite al usuario ingresar una palabra, y le dice cuántas veces aparece en el archivo.

  contar_vocales() = #Esta función escanea el texto y cuenta cuántas vocales (mayúsculas y minúsculas) aparecen en total.

  reemplazar_vocales() = #Esta función permite al usuario elegir una vocal para reemplazarla por otra, aplicando los cambios en todo el texto y mostrando el nuevo contenido.


                          #Reporte de Utilización
#--------------------------------------------------------------------------------------------------------

  contador_ptautomatico(cantidad) = #Esta función muestra la cantidad de veces que se utilizó el Procesador de Texto Automático.

  contador_ptmanual(cantidad) = #Esta función muestra la cantidad de veces que se utilizó el Procesador de Texto Manual.

  contador_ptreemplazo(cantidad) = #Esta función muestra cuántas veces se utilizó el Procesador de Reemplazos.

  caracteres_buscados_total(cantidad) = #Esta función muestra el total acumulado de caracteres buscados o reemplazados durante el uso del programa.


'''


                              #Procesador de Texto Reemplazados
#--------------------------------------------------------------------------------------------------------

  Replace() = #Esta función esta ubicada en ptreemplazo.rb y con esta función el usuario podrá ingresare el texto que desea ubicar con lo que desea reemplazar

  count_replace() = Esta función esta ubicada en  en ptreemplazo y es el encargado de decirte cuantas veces reemplazaste

  crear_file() = #Esta función esta ubicada en pruebas.rb y se encarga de crear el file con para cargarlo

  escribir_file() = #Esta función esta ubicada en pruebas.rb para escribir en el file y manipular la data
```











## Recursos Adicionales
  [Listado de Tareas](https://docs.google.com/spreadsheets/d/1xri8bSAop2sJfve_Qy83uF5apG84QR67EpnXqbuycdw/edit?usp=sharing)

## Desarrolladores

Christian Matias
Carlos Sanchez
Joel Maisonet
