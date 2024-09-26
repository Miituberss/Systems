# Memoria SWAP
free  -h  
swapon -s  
sudo swapoff /swapfile  
sudo fallocate -l 4G /swapfile  
sudo dd if=/dev/zero of=/swapfile bs=1M count=512  
chmod 600 /swapfile **# Cambiamos los permisos para que solo tenga acceso root**  
sudo mkswap /swapfile **# Convertimos el fichero anterior en un fichero de SWAP**  
sudo swapon /swapfile  

# Gestion de procesos
ps  
  - aux  
  - -ef  
  - -lcy  
  - -u *usuario*  
  - -C *busqueda* **# Filtra por la columna CMD**  
  - -p *pid*
  - --sort=*opcion* **# Facilita el ordenar**
  - --forest **# Formato tree**
  - -o *opcion1, opcion2...* **# Permite sacar los campos específicos (como el cut)**
  - --ppid *PID* **# Muestra todos los hijos del PID indicado**  
pstree  
kill  
pkill  
pgrep  
nice  
renice  
fg  
bg  
*comando* **&**  
jobs   **# Muestra los trabajos en 2º plano**  
nohup *comando* & **# Reenvia la salida a otro lugar (Por DF nohup.out)   protegiendolos de apagados o desconexiones**  
yes  
CTRL-C   **# Mata el proceso**  
CTRL-Z   **# Detiene el proceso**  
sort
  - -t "*delimitador*"
  - -k*n*
  - -n **# Indica que ordene numéricamente**
  - -r **# Inverso**

tail  
  - -n+*n* **# Saca las filas de la linea *n* en adelante**
    
tr  
  - -s "*caracter*" **# Suprime el caracter si esta repetido**
