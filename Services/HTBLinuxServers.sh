#Lanzar Servidor Web
;Python3
python3 -m http.server #Inicia un server web en el puerto TCP/8000 con el directorio actual
python3 -m http.server --directory /home/cry0l1t3/target_files #Indica la carpeta que contiene los recursos
python3 -m http.server -p 443 #Indica el puerto donde hospedar la web

;PHP
php -S 127.0.0.1:8080

;NPM
npm install -g http-server   # install dependency
http-server -p 8080
