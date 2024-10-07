# CUESTIONES DHCP

### Protocolo DHCP FAILOVER 
Tipos de conmutación por error

### Problemas asociados a DHCP
DHCP es un protocolo no autentificado

### BOOTP
- Características
- Funcionamiento de BOOTP
- Comparación de BOOTP y DHCP

### ¿Qué configuraciones básicas incluye el DHCP?

### El servidor DHCP escucha por 67
### El cliente DHCP escucha por 68
### Demuéstralo.
Servidor:  
![imagen](https://github.com/user-attachments/assets/0fb2025b-a853-44c1-b46f-09c10a72907d)  
Cliente:  
![imagen](https://github.com/user-attachments/assets/78475a0a-995c-4731-b9ce-f07a2726369b)  

### Completa
| Orden | Significado | Cliente/Servidor |
|--------|--------|--------|
| DHCPREQUEST | El cliente selecciona una de las configuraciones proporcinada por el servidor y se la solicita | Cliente |
| DHCPRELEASE | El cliente finaliza la cesión y devuelve la IP al pool disponible | Cliente |
| DHCPOFFER | El servidor ofrece al cliente una configuración de red (IP, DNS y GW) | Servidor |
| DHCPACK | El servidor confirma la cesión de la configuración solicitada por el cliente | Servidor |
| DHCPNACK | El servidor niega la cesión de la configuración solicitada por el cliente, esto se puede dar porque la configuración ofrecida haya caducado o se haya dado a otro cliente | Servidor |

### Significado de cada uno de estos conceptos es:
var/lib/dhcp/dhcpd.leases: Fichero donde se registran todas las cesiones de una IP siempre que no estén fijadas por MAC  
Default-lease-time: Tiempo medio de cesión de una IP en segundos  
Max-lease-time: Tiempo máximo de cesión de una IP en segundos  
Option subnet-mask: Máscara de red que se dará en las ofertas DHCP del rango configurado  
Option broadcast-address: Red de broadcast que se dará en las ofertas DHCP del rango configurado  
Option domain-name-servers: Servidores DNS separados por coma que se dará en las ofertas DHCP del rango configurado   
Option domain-name: Nombre de dominio que se dará en las ofertas DHCP del rango configurado  

### Arranque y parada manual del servidor DHCP
![imagen](https://github.com/user-attachments/assets/9934f7de-fcd0-42d8-b8bd-aeb8ac1ae8d4)

### Archivo de concesiones
/var/lib/dhcp/dhcpd.leases  
![imagen](https://github.com/user-attachments/assets/b5af9235-e381-42f5-901d-0c222bb934bc)

### Interfaz del servidor
![imagen](https://github.com/user-attachments/assets/ec4a6d50-01a9-4e83-9ae6-1c754cccc18b)

### Ejemplo reserva por MAC
![imagen](https://github.com/user-attachments/assets/326a7d96-a3bf-4f91-9a02-a4ed7645be79)
