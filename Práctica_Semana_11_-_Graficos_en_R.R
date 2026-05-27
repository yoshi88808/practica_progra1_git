# ==============================================================================
# UNIVERSIDAD DE COSTA RICA  -  ESCUELA DE ESTADISTICA
# XS-0129  PROGRAMACION PARA ESTADISTICA I
# ------------------------------------------------------------------------------
# PRACTICA SEMANA 11: CONSTRUCCION DE GRAFICOS CON R
# MODALIDAD: TRABAJO COLABORATIVO EN GIT / GITHUB
# Valor: 1% adicional sobre nota de curso
# Fecha entrega máxima: martes 26/05/2026
# Entrega esperada: documento PDF con enlace a repositorio
# ==============================================================================
#
# Esta practica se realiza EN PAREJAS o EN GRUPOS DE TRES personas.
# El grupo entrega un UNICO archivo .R, pero administrado de forma colaborativa
# en un repositorio de GitHub. Cada integrante DEBE aportar al menos un ejercicio
# con sus propios commits, de modo que el historial demuestre la participacion
# individual de cada quien.
#
# ------------------------------------------------------------------------------
# DATOS DEL GRUPO
# ------------------------------------------------------------------------------
# Integrante A: Yelena Hernandez Bermudez  Carne: C33676   GitHub: YelenaH23
# Integrante B: David Sabater Guzman  Carne: C4L886  GitHub: sabatergit
# Integrante C: ______________________  Carne: __________  GitHub: ____________
#               (deje en blanco si el grupo es de dos personas)
#
# ------------------------------------------------------------------------------
# OBJETIVOS DE APRENDIZAJE
# ------------------------------------------------------------------------------
#   1. Construir e interpretar graficos con el paquete base de R.
#   2. Aplicar la gramatica de graficos del paquete ggplot2 por capas.
#   3. Representar informacion geografica mediante mapas en R.
#   4. INVESTIGAR de forma autonoma otras librerias de visualizacion de R,
#      documentarlas y compararlas con las herramientas vistas en clase.
#   5. Utilizar Git y GitHub para versionar y desarrollar codigo de forma
#      COLABORATIVA (clonar, ramas, commits, pull requests y fusiones).
#
# ==============================================================================
# INSTRUCCIONES GENERALES
# ==============================================================================
#   - Trabajen DENTRO de este mismo archivo .R. Escriban su codigo debajo de
#     cada enunciado, en las lineas marcadas con ">>> ESCRIBA SU CODIGO AQUI".
#   - NO borren los enunciados (lineas que inician con #). Forman parte de la
#     entrega y permiten evaluar la practica.
#   - Cuando se pida COMENTAR o INTERPRETAR, escriban la respuesta como
#     comentario (#) justo debajo del codigo correspondiente.
#   - El archivo debe ejecutarse SIN ERRORES de principio a fin. Verifiquenlo
#     con source() o Ctrl+Shift+Enter (RStudio) antes de la entrega final.
#   - Cada ejercicio indica su INTEGRANTE RESPONSABLE entre corchetes, por
#     ejemplo  [Responsable: Integrante B]. Esa persona debe escribir el codigo
#     y subirlo con SUS PROPIOS commits (ver Parte 5).
#   - Esta practica vale 100 puntos. La distribucion aparece en cada parte.
#   - Todos los ejercicios deben estar completos y no debe haber commits 
#     luego de las 11:59 de hoy 26/05/2026
#
# ------------------------------------------------------------------------------
# REPARTO DE EJERCICIOS ENTRE INTEGRANTES
# ------------------------------------------------------------------------------
#   Integrante A : Ej 1.1, Ej 1.4, Ej 2.1, Ej 2.4, Ej 3.2  + redacta el README
#   Integrante B : Ej 1.2, Ej 1.5, Ej 2.2, Ej 2.5, Ej 3.3  + Ficha 4.2
#   Integrante C : Ej 1.3, Ej 1.6, Ej 2.3, Ej 3.1, Ej 4.4
#   TODO EL GRUPO: Parte 0, Ej 4.1 (eleccion de libreria) y Ej 4.3 (ejemplo).
#
#   * SI EL GRUPO ES DE DOS PERSONAS: no existe Integrante C. Repartan sus
#     ejercicios de forma equitativa entre A y B y ANOTEN aqui como quedaron:
#     Ej 1.3 -> Yelena   Ej 1.6 -> Sabater   Ej 2.3 -> Yelena 
#     Ej 3.1 -> Sabater  Ej 4.4 -> Yelena
#    
#
#   El reparto busca que cada persona practique graficos base, ggplot2 y mapas.
#   Esta permitido AYUDARSE entre integrantes, pero cada quien debe SUBIR con
#   sus propios commits los ejercicios de los que es responsable.
#
# ------------------------------------------------------------------------------
# CONJUNTOS DE DATOS
# ------------------------------------------------------------------------------
#   Se trabajara con datasets incluidos en la instalacion base de R, por lo que
#   NO se requiere descargar archivos. Exploren su documentacion con help():
#       help("airquality")   # calidad del aire (Nueva York, 1973)
#       help("mtcars")       # caracteristicas de 32 automoviles
#       help("iris")         # medidas de tres especies de flores
#       help("ToothGrowth")  # crecimiento dental en conejillos de indias
# ==============================================================================
help("airquality") 
help("mtcars")      
help("iris")         
help("ToothGrowth")

# ==============================================================================
# PARTE 0 - PREPARACION DEL ENTORNO  (5 puntos)   [Responsable: TODO EL GRUPO]
# ==============================================================================
#
# 0.1  Limpien el entorno de trabajo y carguen los datos que utilizaran.
#      Verifiquen la estructura y un resumen de cada conjunto de datos.

rm(list = ls())          # limpia el entorno
data("airquality")
data("mtcars")
data("iris")
data("ToothGrowth")

# >>> ESCRIBA SU CODIGO AQUI: use str() y summary() sobre airquality y mtcars.
str(airquality) 
summary(airquality)

str(mtcars) 
summary(mtcars)

# 0.2  En un comentario, indiquen cuantas observaciones y cuantas variables
#      tiene 'airquality' y mencionen si contiene valores faltantes (NA).
#
# Respuesta 0.2: Airquality tiene 153 observaciones y 6 variables. Si contiene
# NA's sobre todo en las columnas de ozone y solar.R. 



# ==============================================================================
# PARTE 1 - GRAFICOS BASE DE R  (25 puntos)
# ==============================================================================
# Recuerden los argumentos comunes de las funciones graficas base:
#   main  = titulo        xlab / ylab = etiquetas de ejes
#   col   = color         xlim / ylim = limites de los ejes
#   pch   = tipo de punto border = color del borde
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Ejercicio 1.1  GRAFICO DE BARRAS  (4 pts)        [Responsable: Integrante A]
# ------------------------------------------------------------------------------
# Construya un grafico de barras VERTICAL de la variable airquality$Wind.
# Asignele un titulo, una etiqueta de eje y un color de su eleccion.

# >>> ESCRIBA SU CODIGO AQUI:
barplot(airquality$Wind,
        main = "Velocidad del viento",
        xlab = "Observaciones",
        ylab = "Wind",
        col = "skyblue")


# ------------------------------------------------------------------------------
# Ejercicio 1.2  HISTOGRAMA  (4 pts)               [Responsable: Integrante B]
# ------------------------------------------------------------------------------
# Construya un histograma de airquality$Ozone. Modifique el argumento 'breaks'
# para obtener al menos dos versiones (por ejemplo breaks = 5 y breaks = 15).
# COMENTE como cambia la interpretacion al variar el numero de clases.

# >>> ESCRIBA SU CODIGO AQUI:

hist(airquality$Ozone,
      breaks = 5,
      main = "Histograma de Ozone (15 clases)",
      xlab = "Ozone",
      col = "lightgreen")


hist(airquality$Ozone,
     breaks = 15,
     main = "Histograma de Ozone (15 clases)",
     xlab = "Ozone",
     col = "lightgreen")



# Comentario 1.2: ______________________________________________________________

#al haber menos clases la vision se vuelve mucho mas general,  

# ------------------------------------------------------------------------------
# Ejercicio 1.3  DIAGRAMA DE CAJAS  (4 pts)        [Responsable: Integrante A]
# ------------------------------------------------------------------------------
# Construya un diagrama de cajas de airquality$Temp SEGUN el mes (Temp ~ Month).
# Pista: use la formula  boxplot(Temp ~ Month, data = airquality, ...).
# Interprete: en que mes se observa la mayor temperatura mediana.

# >>> ESCRIBA SU CODIGO AQUI:
boxplot(Temp ~ Month,
        data = airquality,
        main = "Temperatura segun el mes",
        xlab = "Mes",
        ylab = "Temperatura",
        col = "coral"
)


# Comentario 1.3: La mayor temperatura se observa en el mes de julio


# ------------------------------------------------------------------------------
# Ejercicio 1.4  DIAGRAMA DE DISPERSION  (4 pts)   [Responsable: Integrante A]
# ------------------------------------------------------------------------------
# Construya un grafico de dispersion entre airquality$Temp (eje X) y
# airquality$Ozone (eje Y). Use pch = 19 y describa la relacion observada.

# >>> ESCRIBA SU CODIGO AQUI:

plot(
  airquality$Temp,
  airquality$Ozone,
  main = "Relacion entre Temperatura y Ozone",
  xlab = "Temperatura",
  ylab = "Ozone",
  col = "cyan",
  pch = 19
)

# Comentario 1.4: Se observa que entre mas aumenta la temperatura tambien 
# aumentan los niveles de ozone



# ------------------------------------------------------------------------------
# Ejercicio 1.5  GRAFICO DE PIE  (4 pts)           [Responsable: Integrante B]
# ------------------------------------------------------------------------------
# A partir de mtcars, cuente cuantos automoviles tienen 4, 6 y 8 cilindros
# (variable 'cyl') y represente esa distribucion en un grafico de pie.
# Agregue al grafico el PORCENTAJE correspondiente a cada categoria.
# Pista: table(mtcars$cyl) y construya las etiquetas con paste0() y round().

# >>> ESCRIBA SU CODIGO AQUI:
mtcars

cilindros <- table(mtcars$cyl)

pie(cilindros,
    labels = c("4 cilindros", "6 cilindros", "8 cilindros"),
    main = "Distribución de cilindros en mtcasr",
    col = c("skyblue", "lightgreen", "orange"))



porcentajes <- round(cilindros / sum(cilindros) * 100)

etiquetas <- paste0(names(cilindros), " cilindros: ", porcentajes, "%")

grafico_pie <- pie(cilindros,
                   labels = etiquetas,
                   main = "Distribución de cilindros en mtcasr",
                   col = c("skyblue", "lightgreen", "orange"))



# ------------------------------------------------------------------------------
# Ejercicio 1.6  MULTIPLES GRAFICOS Y EXPORTACION  (5 pts) [Resp.: Integrante B]
# ------------------------------------------------------------------------------
# a) Use par(mfrow = c(1, 2)) para colocar DOS graficos base de su eleccion
#    lado a lado. Restablezca el panel con par(mfrow = c(1, 1)) al terminar.
# b) Exporte uno de sus graficos a un archivo PNG usando png() ... dev.off().
#    IMPORTANTE: agregue ese .png al .gitignore (vea la Parte 5) para NO
#    versionar imagenes generadas automaticamente.



# >>> ESCRIBA SU CODIGO AQUI:
par(mfrow = c(1, 2))
pie(cilindros,
    labels = etiquetas,
    main = "Distribución de cilindros en mtcasr",
    col = c("skyblue", "lightgreen", "orange"))

plot(x = airquality$Temp,
     y =  airquality$Ozone,
     xlab =  "Temperatura",
     ylab = "Ozono",
     main = "Diagrama de dispercion",
     pch = 19 )

par(mfrow = c(1, 1)) 

# ==============================================================================
# PARTE 2 - GRAFICOS CON ggplot2  (20 puntos)
# ==============================================================================
# Recuerden la estructura por CAPAS de la gramatica de graficos:
#   ggplot(datos, aes(...)) +   # datos + mapeo estetico
#       geom_*()            +   # geometria (puntos, barras, lineas...)
#       scale_*()           +   # escalas (colores, ejes)
#       facet_*()           +   # paneles por subconjuntos
#       labs()              +   # titulos y etiquetas
#       theme_*()               # apariencia general
# ------------------------------------------------------------------------------

# 2.0  Instalen (si es necesario) y carguen el paquete.
# install.packages("ggplot2")   # descomente solo si aun no lo tiene instalado
library(ggplot2)

# ------------------------------------------------------------------------------
# Ejercicio 2.1  PRIMER GRAFICO ggplot2  (4 pts)   [Responsable: Integrante A]
# ------------------------------------------------------------------------------
# Reproduzca el diagrama de dispersion del Ejercicio 1.4 (Temp vs Ozone) pero
# ahora con ggplot2 y geom_point().

# >>> ESCRIBA SU CODIGO AQUI:
ggplot(airquality, aes(x = Temp, y = Ozone)) +
  geom_point() +
  labs(
    title = "Relacion entre Temperatura y Ozone",
    x = "Temperatura",
    y = "Ozone"
  )

# ------------------------------------------------------------------------------
# Ejercicio 2.2  MAPEO ESTETICO  (4 pts)           [Responsable: Integrante B]
# ------------------------------------------------------------------------------
# Al grafico anterior, agregue dentro de aes() el COLOR del punto segun el mes.
# Pista: como 'Month' es numerica, conviertala con factor(Month).
# COMENTE que aporta esta tercera variable a la lectura del grafico.

# >>> ESCRIBA SU CODIGO AQUI:
ggplot(airquality,
       aes(x = Temp, y = Ozone, color = factor(Month))) +
  geom_point(size = 2) +
  labs(
    title = "Relación entre Temperatura y Ozone",
    x = "Temperatura",
    y = "Ozone", color = "mes")
      


# Comentario 2.2: ______________________________________________________________

# agrado el color de los puntos según el mes,
#la gráfica incorpora una tercera variable que permite distinguir patrones temporale

# ------------------------------------------------------------------------------
# Ejercicio 2.3 GEOMETRIAS ADICIONALES Y FACETAS  (4 pts)  [Resp.: Integrante A]
# ------------------------------------------------------------------------------
# Sobre el grafico del 2.2, agregue:
#   - una capa geom_smooth(method = "lm") para mostrar la tendencia lineal;
#   - un facet_wrap(~ Month) para separar un panel por mes.

# >>> ESCRIBA SU CODIGO AQUI:
ggplot(airquality, aes(x = Temp, y = Ozone, color = factor(Month))) +
  geom_point() +
  geom_smooth(method = "lm") +
  facet_wrap(~ Month)
  labs(
    title = "Relacion entre Temperatura y Ozone por mes",
    x = "Temperatura",
    y = "Ozone",
    color = "Mes"
  )


# ------------------------------------------------------------------------------
# Ejercicio 2.4  GRAFICO DE BARRAS CON ggplot2  (4 pts)  [Resp.: Integrante A]
# ------------------------------------------------------------------------------
# Con el dataset 'iris', construya un grafico de barras que muestre el promedio
# de Sepal.Length por especie (Species). Use stat = "summary", fun = "mean".

# >>> ESCRIBA SU CODIGO AQUI:

ggplot(iris, aes (x = Species, y = Sepal.Length)) +
    geom_bar(stat = "summary", fun = "mean",
             fill = "darkorchid") + 
    labs(
      title = "Promedio de la longitud del petalo por especie",
      x = "Especie",
      y = "Longitud promedio del petalo"
    )

# ------------------------------------------------------------------------------
# Ejercicio 2.5  PERSONALIZACION COMPLETA  (4 pts) [Responsable: Integrante B]
# ------------------------------------------------------------------------------
# Tome cualquiera de los graficos anteriores y combine TODAS las capas:
# labs() con titulo, subtitulo, etiquetas de ejes y fuente; un scale_*() para
# personalizar colores; y un theme_*() distinto al predeterminado.

# >>> ESCRIBA SU CODIGO AQUI:
  ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +  geom_bar(stat = "summary", fun = "mean") +
    labs(
      title = "Promedio de Sepal.Length por especie",
      subtitle = "Datos de iris",
      x = "Especie",
      y = "Promedio de Sepal.Lenght",
      caption = "Fuente Dataset iris (Fisher, 1936)"
    ) +  scale_fill_brewer(palette = "Set2")



# ==============================================================================
# PARTE 3 - GRAFICOS CON MAPAS  (15 puntos)
# ==============================================================================
# 3.0  Instalen (si es necesario) y carguen el paquete 'maps'.
# install.packages("maps", dep = TRUE)   # descomente si aun no lo tiene
  library(maps)

# ------------------------------------------------------------------------------
# Ejercicio 3.1  MAPA BASE  (5 pts)                [Responsable: Integrante B]
# ------------------------------------------------------------------------------
# Dibuje el mapa del mundo con map(database = "world").
# Luego dibuje UNICAMENTE el mapa de un pais a su eleccion.
# Pista: map("world", regions = "Costa Rica", fill = TRUE, col = "lightgreen").

# >>> ESCRIBA SU CODIGO AQUI:

  
  map(database = "world")
  
  map("world", regions = "Brazil", fill = TRUE, col = "lightgreen")

# ------------------------------------------------------------------------------
# Ejercicio 3.2  MAPA POLIGONAL CON ggplot2  (5 pts)  [Resp.: Integrante A]
# ------------------------------------------------------------------------------
# Use map_data() para obtener el contorno de un pais o region y dibujelo con
# ggplot2 + geom_polygon(). Aplique coord_quickmap() para corregir la escala.
# Pista:
#   region <- map_data("world", region = "Costa Rica")
#   ggplot(region, aes(long, lat, group = group)) +
#       geom_polygon(...) + coord_quickmap()

# >>> ESCRIBA SU CODIGO AQUI:
region <- map_data("world", region = "Costa Rica")
  ggplot(region, aes(long, lat, group = group)) +
  geom_polygon(fill = "darkseagreen", color = "darkolivegreen") + 
    coord_quickmap()

# ------------------------------------------------------------------------------
# Ejercicio 3.3  AGREGAR PUNTOS AL MAPA  (5 pts)   [Responsable: Integrante B]
# ------------------------------------------------------------------------------
# Sobre el mapa anterior, agregue uno o varios puntos con coordenadas conocidas
# (por ejemplo, la ciudad donde vive cada integrante del grupo). Use geom_point()
# y, opcionalmente, geom_text() o annotate() para etiquetar el punto.
# Pista: San Jose, Costa Rica  ->  long = -84.09, lat = 9.93

# >>> ESCRIBA SU CODIGO AQUI:


  region <- map_data("world", region = "Costa Rica")
  
  ciudades <- data.frame(
    nombre = c("San José"),
    long = c(-84.09),
    lat = c(9.93)
  )
  
  ggplot(region, aes(x = long, y = lat, group = group)) +
    geom_polygon(fill = "darkseagreen", color = "darkolivegreen") +
    coord_quickmap() +
    geom_point(data = ciudades, aes(x = long, y = lat), color = "red", size = 3) +
    geom_text(data = ciudades, aes(x = long, y = lat, label = nombre),
              vjust = -1, color = "red") +
    labs(title = "Mapa de Costa Rica con ciudades del grupo"
         )
  


# ==============================================================================
# PARTE 4 - INVESTIGACION: OTRAS LIBRERIAS DE GRAFICOS EN R  (20 puntos)
# ==============================================================================
#
# El ecosistema de R ofrece MUCHAS librerias de visualizacion mas alla del
# paquete base, ggplot2 y maps. En esta parte el grupo debera INVESTIGAR de
# forma autonoma y aplicar una de ellas.
#
# ------------------------------------------------------------------------------
# 4.1  SELECCION DE LA LIBRERIA  (2 pts)           [Responsable: TODO EL GRUPO]
# ------------------------------------------------------------------------------
# Elijan UNA libreria de la siguiente lista (o propongan otra y consultenla con
# la persona docente). Anoten su eleccion en el comentario indicado.
#
#   GRAFICOS INTERACTIVOS
#     *- plotly        : convierte graficos en interactivos (zoom, hover).*
#     - highcharter   : graficos interactivos basados en Highcharts.
#     - dygraphs      : series de tiempo interactivas.
#
#   EXTENSIONES DE ggplot2
#     - ggridges      : graficos de densidad superpuestos ("joyplots").
#     - gganimate     : animaciones a partir de graficos ggplot2.
#     - patchwork     : combina varios graficos ggplot2 en un mismo panel.
#     - ggpubr        : graficos con apariencia "lista para publicar".
#     - ggthemes      : temas y paletas adicionales para ggplot2.
#
#   MAPAS INTERACTIVOS
#     - leaflet       : mapas interactivos con marcadores y capas.
#     - tmap          : mapas tematicos (modo estatico e interactivo).
#
#   GRAFICOS ESPECIALIZADOS
#     - corrplot      : visualizacion de matrices de correlacion.
#     - treemap       : mapas de arbol (treemaps) jerarquicos.
#     - GGally        : matrices de graficos y graficos de pares.
#     - wordcloud     : nubes de palabras.
#     - lattice       : sistema de graficos alternativo (graficos en celosia).
#
# Libreria elegida: plotly
# Justifiquen en una o dos lineas por que la eligieron:
#   Elegimos Pltly porque permite crear graficos onteractivos de manera
# relativamente sencilla, ademas facilita explorar los datos mediante zoom
#
# ------------------------------------------------------------------------------
# 4.2  FICHA DE DOCUMENTACION  (6 pts)             [Responsable: Integrante B]
# ------------------------------------------------------------------------------
# Investiguen en la documentacion oficial (CRAN, viñetas, sitio del paquete) y
# COMPLETEN la siguiente ficha como comentarios. Indiquen las fuentes.
#
#   
  # a) Nombre del paquete y autor(es) principales:
  #    Paquete: plotly
  #    Autores principales: Carson Sievert y colaboradores
  
  # b) Para qué tipo de visualizaciones se utiliza:
  #    Gráficos interactivos: dispersión, barras, líneas, mapas, series de tiempo,
  #    boxplots, histogramas, etc.
  
  # c) Funciones principales del paquete y qué hace cada una:
  #    - plot_ly(): crea gráficos interactivos desde cero.
  #    - ggplotly(): convierte gráficos de ggplot2 en interactivos.
  #    - add_trace(): agrega nuevas capas o elementos al gráfico.
  #    - layout(): personaliza títulos, ejes y diseño del gráfico.
  
  # d) Una ventaja y una limitación frente al paquete base o ggplot2:
  #    Ventaja:
  #    Permite interactividad (zoom, hover, desplazamiento) con poco código adicional.
  #
  #    Limitación:
  #    Algunos gráficos complejos pueden ser más lentos o difíciles de personalizar
  #    que en ggplot2.
  
  # e) Fuentes consultadas:
  #    1) https://plotly.com/r/
  #    2) https://cran.r-project.org/package=plotly
  
# ------------------------------------------------------------------------------
# 4.3  EJEMPLO APLICADO  (8 pts)                   [Responsable: TODO EL GRUPO]
# ------------------------------------------------------------------------------
# Instalen y carguen la libreria elegida. Luego construyan UN grafico funcional
# con alguno de los datasets de esta practica (airquality, mtcars, iris o
# ToothGrowth). El grafico debe tener titulo y etiquetas de ejes claras.
# Documenten cada paso con comentarios.
#
# SUGERENCIA DE COLABORACION: este ejercicio es del grupo completo. Trabajenlo
# en una rama compartida (por ejemplo 'feature/parte4') y resuelvan en conjunto
# cualquier conflicto de fusion que aparezca.

# install.packages("__________")   # escriba aqui el nombre de su libreria
# library(__________)

# >>> ESCRIBA SU CODIGO AQUI:
  #install.packages("plotly")   
  library(plotly)

# ------------------------------------------------------------------------------
# 4.4  COMPARACION Y REFLEXION  (4 pts)            [Responsable: Integrante A]
# ------------------------------------------------------------------------------
# Reproduzca un grafico EQUIVALENTE o lo mas parecido posible al del punto 4.3
# usando el paquete base o ggplot2. Luego responda en comentarios:
#
#   a) Que diferencias noto en la cantidad y claridad del codigo:
#      Que se puede agregar funciones interactivas facilmente a un grafico con
#      un poco de codigo adicional
#   b) En que situacion recomendaria usar la libreria investigada y en cual
#      preferiria el paquete base o ggplot2:
#     Recomendaria plotly para cuando alguien quiera hacer graficos interactivos.
#     Los otros 2 son una manera facil de hacer reportes estadisticos y sin
#     complicarse tanto.

# >>> ESCRIBA AQUI EL GRAFICO EQUIVALENTE CON BASE O ggplot2:
ggplot( airquality,
        aes(x = Temp, y = Ozone,
            color = factor(Month))) +
    geom_point(size = 2) + 
    labs (
      title = "Relacion entre Temperatura y Ozone",
      x = "Temperatura",
      y = "Ozone",
      color = "Mes"
    )

# ==============================================================================
# PARTE 5 - TRABAJO COLABORATIVO CON GIT Y GITHUB  (15 puntos)
# ==============================================================================
#
# Esta parte NO se "programa" en R: se EVIDENCIA en el repositorio de GitHub del
# grupo. Sigan el flujo de trabajo descrito abajo. Todos los comandos de Git se
# escriben en la TERMINAL del sistema (no en la consola de R), o pueden usar el
# panel Git de RStudio / GitHub Desktop si lo prefieren.
#
# ------------------------------------------------------------------------------
# 5.1  CREACION Y CONFIGURACION DEL REPOSITORIO  (4 pts)
# ------------------------------------------------------------------------------
# a) UNA sola persona del grupo crea en GitHub un repositorio llamado:
#       XS0129-P11-Apellido1-Apellido2
#    Configurelo como público e inicialicelo con un archivo README.md.
#
# b) Esa persona agrega como COLABORADORES (Settings > Collaborators) a:
#       - cada integrante del grupo (con su usuario de GitHub), y
#       - el usuario de la persona docente:  __________________ (a indicar).
#
# c) Cada integrante CLONA el repositorio en su computadora:
#       git clone https://github.com/usuario/XS0129-P11-Hernandez-Sabater.git
#
# d) Coloquen este archivo .R dentro del repositorio y configuren su identidad
#    (la primera vez en cada computadora):
#       git config --global user.name  "Nombre Apellido"
#       git config --global user.email "correo@ucr.ac.cr"
#
# ------------------------------------------------------------------------------
# 5.2  ARCHIVOS DEL REPOSITORIO  (3 pts)
# ------------------------------------------------------------------------------
# El repositorio debe contener al menos:
#   - Practica_Semana_11_-_Graficos_en_R.R   (este archivo)
#   - README.md   : redactado por el Integrante A. Debe incluir el nombre del
#                   curso, los integrantes del grupo y una breve descripcion.
#   - .gitignore  : debe ignorar archivos generados (por ejemplo *.png del
#                   Ejercicio 1.6, la carpeta .Rproj.user/ y el archivo .Rhistory).
#
#   Contenido sugerido para .gitignore:
#       .Rhistory
#       .RData
#       .Rproj.user/
#       *.png
#
# ------------------------------------------------------------------------------
# 5.3  FLUJO DE TRABAJO POR RAMAS Y COMMITS  (5 pts)
# ------------------------------------------------------------------------------
# Cada integrante trabaja sus ejercicios asignados en SU PROPIA RAMA y luego
# los integra mediante un Pull Request. Pasos para cada integrante:
#
#   1) Actualizar la rama principal y crear la rama personal:
#        git checkout main
#        git pull origin main
#        git checkout -b parte-integranteA      # use su letra: A, B o C
#
#   2) Escribir el codigo de SUS ejercicios en este archivo y guardarlo.
#
#   3) Registrar el avance con commits. Haga UN COMMIT POR EJERCICIO, usando
#      mensajes claros que incluyan el numero del ejercicio. Ejemplos:
#        git add Practica_Semana_11_-_Graficos_en_R.R
#        git commit -m "Ej 1.1: grafico de barras vertical de Wind"
#        git commit -m "Ej 2.1: dispersion Temp vs Ozone con ggplot2"
#
#   4) Subir la rama al repositorio remoto:
#        git push origin parte-integranteA
#
#   5) En GitHub, abrir un PULL REQUEST de su rama hacia 'main'. Otro
#      integrante debe REVISARLO y aprobarlo antes de fusionarlo (merge).
#
# REQUISITO MINIMO VERIFICABLE: en el historial (git log o la pestaña Insights
# de GitHub) debe constar que CADA integrante realizo, como minimo, UN commit
# por cada ejercicio del que es responsable, con su propia cuenta de GitHub.
#
# ------------------------------------------------------------------------------
# 5.4  RESOLUCION DE CONFLICTOS Y BITACORA  (3 pts)
# ------------------------------------------------------------------------------
# Como todos editan el mismo archivo, es probable que aparezca al menos un
# CONFLICTO DE FUSION al hacer merge. Resuelvanlo en conjunto y, una vez
# terminada la practica, completen abajo una breve bitacora del trabajo.
#
#   BITACORA DEL GRUPO (responder como comentarios):
#   a) Cuantas ramas y cuantos pull requests crearon en total:
#      _________________________________________________________________________
#   b) Describan brevemente un conflicto de fusion que enfrentaron y como lo
#      resolvieron (o expliquen como lo evitaron):
#      _________________________________________________________________________
#   c) Que aprendio el grupo sobre el trabajo colaborativo con Git:
#      _________________________________________________________________________
#
# ==============================================================================
# RUBRICA DE EVALUACION (resumen)
# ==============================================================================
#   Parte 0  - Preparacion del entorno ............................   5 pts
#   Parte 1  - Graficos base de R .................................  25 pts
#   Parte 2  - Graficos con ggplot2 ...............................  20 pts
#   Parte 3  - Graficos con mapas .................................  15 pts
#   Parte 4  - Investigacion de otras librerias ...................  20 pts
#   Parte 5  - Trabajo colaborativo con Git y GitHub ..............  15 pts
#                                                            TOTAL = 100 pts
#
#   CONSIDERACIONES SOBRE LA NOTA DE GRUPO:
#   - Se descuentan hasta 5 puntos si el archivo NO se ejecuta completo sin
#     errores o si se eliminan los enunciados originales.
#   - El historial de commits es individual: si un integrante NO presenta
#     commits propios de sus ejercicios asignados, esos puntos NO se le
#     acreditan, aunque el ejercicio aparezca resuelto en el archivo final.
#   - La entrega consiste en compartir la URL del repositorio (con la persona
#     docente ya agregada como colaboradora). NO se reciben archivos por correo.
#
# ==============================================================================
# FIN DE LA PRACTICA - SEMANA 11
# ==============================================================================
