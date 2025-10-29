# Esta es la "receta" para nuestro contenedor

# 1. La "Base"
# Empezamos desde una imagen base que ya tiene Nginx (servidor web).
# Usamos 'alpine' porque es una versión muy pequeña y segura.
FROM nginx:1.25-alpine

# 2. El Contenido
# Copiamos nuestro código (el index.html con el formulario) 
# dentro del contenedor, en la carpeta que Nginx usa para servir webs.
COPY index.html /usr/share/nginx/html

# 3. La Instrucción
# (No necesitamos una instrucción de 'CMD' o 'EXPOSE'
# porque la imagen base de Nginx ya sabe que debe
# iniciar el servidor web en el puerto 80).