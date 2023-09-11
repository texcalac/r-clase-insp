# Cargar este paquete para iniciar el renderizado previo
library(blogdown)

# Iniciar eñ sevidor
serve_site()

# Detener el servidor
stop_server()

# generar nueva publicación
# Con esto puedo generar una nueva publicación en "clases"
new_post(title = "s02-intro-r", 
         subdir = "talk", 
         ext = ".md")

# Con esto puedo generar una nueva publicación en el blog
new_post(title = "prueba", 
         subdir = "blog", 
         ext = ".Rmarkdown")
