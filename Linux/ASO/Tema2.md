# Memoria SWAP
| COMANDO  | EXPLICACION  |
|----------|--------------|
|free  -h  |
|swapon -s  |
|sudo swapoff /swapfile  |
|sudo fallocate -l 4G /swapfile  |
|sudo dd if=/dev/zero of=/swapfile bs=1M count=512  |
|chmod 600 /swapfile | **# Cambiamos los permisos para que solo tenga acceso root**  |
|sudo mkswap /swapfile | **# Convertimos el fichero anterior en un fichero de SWAP**  |
|sudo swapon /swapfile  |

# Gestión de procesos
| COMANDO  | EXPLICACION  |
|----------|--------------|
| ps   |
|   \\_ aux   |
|   \\_ -ef   |
|   \\_ -lcy   |
|   \\_ -u *usuario*   |
|   \\_ -C *busqueda* | **# Filtra por la columna CMD**   |
|   \\_ -p *pid* |
|   \\_ --sort=*opcion* | **# Facilita el ordenar** |
|   \\_ --forest | **# Formato tree** |
|   \\_ -o *opcion1, opcion2...* | **# Permite sacar los campos específicos (como el cut), la opcion PSR muetra el core de ejecución** |
|   \\_ --ppid *PID* | **# Muestra todos los hijos del PID indicado** |
|   \\_ -L | **# Junto a -p *pid* muestra los threads (LWP) del proceso indicado** |
| pstree    |
| pmap *pid* | **# Muestra la utilización de memoria de un proceso** |
| pgrep   |
| nice -n [ - ]*n* *programa* | **# Lanza el programa con la prioridad indicada**   |
| renice [ + \| - ]*n* *programa*   |
|   \\_ -p | **# PID cambia la prioridad para el proceso especificado** |
|   \\_ -g | **# Grupo cambia la prioridad para los procesos ejecutados por los usuarios que pertenecen al grupo con GID=grupo** |
|   \\_ -u | **# User cambia la prioridad para los procesos del usuario especificado** |
| fg   |
| bg   |
| *command* **&**   |
| jobs   | **# Muestra los trabajos en 2º plano**   |
| nohup *command* & | **# Reenvia la salida a otro lugar (Por DF nohup.out)   protegiendolos de apagados o desconexiones**   |
| yes   |
| CTRL-C   | **# Mata el proceso**   |
| CTRL-Z   | **# Detiene el proceso**   |
| sort |
|   \\_ -t "*delimitador*" |
|   \\_ -k*n* |
|   \\_ -n | **# Indica que ordene numéricamente** |
|   \\_ -r | **# Inverso** |
| tail   |
|   \\_ -n+*n* | **# Saca las filas de la linea *n* en adelante** |
| tr   |
|   \\_ -s "*caracter*" | **# Suprime el caracter si esta repetido** |
| watch -n*n* '*command* ' | **# Cada *n* segundos ejecuta el comando, lo que permite una visualización actualizada**   |
| top   |
| fuser *fichero* | **# Muestra todos los procesos que acceden a un fichero o partición**   |
|   \\_ -k | **# Mata todos los procesos que están accediendo al fichero** |
|   \\_ -v | **# Muestra info adicional sobre los procesos** |
|   \\_ -c | **# Directorio actual** |
|   \\_ -e | **# Ejecución** |
|   \\_ -f | **# Fichero abierto** |
|   \\_ -r | **# Directorio raíz** |
|   \\_ -m | **# Biblioteca compartida** |
|   \\_ -k | **# Finaliza todos los procesos** |
| lsof | **# Muestra todos los ficheros abiertos** |
|   \\_ -u *user* | **# Filtra por usuairo** |
|   \\_ -i *:puerto* | **# Muestra los puertos vinculados, si indicas un puerto filtra por él** |
|   \\_ -c *command* | **# Filtra por CMD** |
|   \\_ *file* | **# Muestra los procesos pendientes del archivo** |
| kill *PID* |
|   \\_  -l | **# Lista las distintas señales que puedes mandar al proceso** |
|   \\_  *n* | **# Indica la señal que quieres envíar al proceso** |
| killall *command* | **# Mata todos los procesos correspondientes al comando** |
| pkill *command* | **# Es como kill pero permite busquedas por nombre (a modo pgrep o killall)**   |
| pgrep *command* | **# Permite busquedas por nombre**   |
|   \\_ -u *usuario*| **# Filtra por usuario**|
| pidof *command* | **# Saca todos los PID asociados al comando (a modo pgrep)**|

# Planificación de tareas
| COMANDO  | EXPLICACION  |
|----------|--------------|
| at *hh:mm* *day\|tomorrow* *now + x hour*| **# Para indicar el final de la ejecución hay que usar CTRL+D, se le puede meter un comando con tubería \[*comando* \| at...\]** |
|   \\_ -f *script* | **# Indica que lo que se debe ejecutar es el script** |
| atq | **# Muestra las tareas pendientes de at** |
| atrm *num* | **# Elimina un trabajo** |
| batch *script* | **# Se usa para leer comandos desde un fichero o la entrada estándar y lo ejecuta cuando la carga del sistema lo permite (/proc/loadavg),normalmente cuando está por debajo de 1.5** |
|anacron|**# Complementa al crontab permitiendo su uso en sistemas no 24/7, de esta manera cuando se enciende hace una revisión para ver si hay alguna tarea que no se haya ejecutado mientras estaba apagado pero debería**|
|crontab | **# Fichero de tareas programadas**  |
|\\_ -u *usuario* | **# Crea o maneja el crontab de un usuario específico (solo root)**|
|\\_ -e | **# Edita el fichero crontab**  |
|\\_ -l | **# Muestra el fichero crontab**  |
|\\_ -r | **# Borra el fichero crontab**  |

```
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name command to be executed
```

# Niveles de ejecución
sudo systemctl set-default multi-user.target **# Despliega multiusuario sin GUI por DF**   
sudo systemctl set-default graphical.target **# Despliega multiusuario con GUI por DF**   
sudo systemctl start graphical.target **# Despliega de forma temporal la GUI**  
runlevel **# Indica el nivel de ejecución actual**  
telinit *n* **# Modifica el nivel de ejecución (1=rescue mode, 3=CLI-Multiuser, 5=GUI)**  

# Afinidad en Linux
| COMANDO  | EXPLICACION  |
|----------|--------------|
| taskset *programa* | **#** |
| \\_ -c *n,n,...* | **# Lanza el programa en los cores indicados en -c (con -p relanza el proceso a esos cores)** |
| \\_ -p *pid* | **# Muestra la máscara del PID** |
| \\_ 0x*n* | **# Se puede concretar la máscara directamente en hexadecimal** |
| numactl | **#** |
| \\_ -H | **# Muestra nº de nodos (CPU) y nº de cores** |
| \\_ -C | **#** |
| chkconfig *servicio* |**# Lanza la configuración de servicios de arranque**|
| \\_ -l |**# Muestra todos los servicios** |
| \\_ --deps |**# Muestra las dependencias** |
| \\_ --add |**# Añade el servicio al arranque** |
| \\_ --del |**# Elimina el servicio del arranque** |
| \\_ --level *nn* |**# Arranca procesos en los runlevel indicados** |


# Systemd
| COMANDO  | EXPLICACION  |
|----------|--------------|
|systemctl |**# Lista los servicios**|
|\\_ --failed|**# Lista los servicios fallando**|
|\\_ \[start\|stop\|reload\|restart\]|**#**|
|\\_ \[disable\|enable\]|**#**|
|\\_ --level=*filtro*| Filtra los mensajes para ver (err,warn...)|
|\\_ --all ||
|\\_ --state= ||
|\\_ --type= ||
|\\_ cat *servicio* | **# Hace un cat al fichero del servicio**|
|\\_ show *servicio* | **# Muestra los parámetros de la unidad**|
|\\_ is-active *servicio* | **# Creo que se entiende**|
|\\_ is-enabled *servicio* | **# Creo que se entiende**|
|\\_ is-failed *servicio* | **# Creo que se entiende**|
|\\_ list-unit-files --type=target | **# Muestra un listado de los targets disponibles en el sistema**| **TARGETS**
|\\_ daemon-reload| **# Hace un relad a todos los sevicios** |
|\\_ list-units --type=target | **# Muestra un listado de los targets activos**|
|\\_ get-default | **# Muestra el target por defecto (graphical.target)**|
|\\_ isolate multi-user.target | **# Antiguamente conocido como cambiar de runlevel.**|
|\\_ --user *opcion*|**# Permite lanzar cualquier timer al momento para hacer comprobaciones**|
|||
|journalctl| **# Trabaja con el daemon journald y sirve para logs**|
|\\_ -b[*-n*] | **# Logs del arranque con [*-n*] vemos el boot del dia indicado del list-boots** |
|\\_ --list-boots | **# Lista todos los logs de arranque disponibles** |
|\\_ --since "*fecha*" | **# Lista todos los logs de arranque disponibles** |
|\\_ yesterday --until "*1hour ago*" | **# Lista todos los logs de arranque disponibles** |
|\\_ -u *unidad*| **# Indico la unidad** |
|\\_ -p *palabra* | **# Indico tipo de log (err,warning...)** |
|\\_ -F *campo* | **# Filtro por campo** |
|\\_ --disk-usage | **# Espacio ocupado en disco del journal** |
|\\_ --vacuum-size=1G | **# Reduce el tamaño ocupado por los logs a 1GB**|
|\\_ --vacuum-time=1years | **# Elimina todos los mensajes de log anteriores a un año**|
|systemd-analyze verify *ruta*|**# Si no se devuelve nada, entonces el fichero es correcto y no tiene fallos.**|
|systemd-analyze time| **# Muestra el tiemoo de arranque del equipo**|


![imagen](https://github.com/user-attachments/assets/8db6fffc-fa43-416b-a322-48c10fed9146)

# Parada del sistema
| COMANDO  | EXPLICACION  |
|----------|--------------|
|wall|**# Manda un mensaje a todos los usuarios conectados al sever. Ej. Aviso de que se apagara por labores de mantenimiento en x tiempo**|
|demesg|**# Muestra mensajes/logs**|
