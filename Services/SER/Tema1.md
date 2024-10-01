# Configuración Interfaces de Red (networking.service)
## Servidor
**cat /etc/network/interfaces**  
> **#Red Externa**  
auto *interfaz*  
allow-hotplug *interfaz*  
iface *interfaz* inet static  
address *IP*  
netmask *máscara*  
gateway *GW* 
post-up /sbin/iptables -t nat -A POSTROUTING -o *interfaz* -j MASQUERADE  
**#Red Local**  
auto *interfaz*  
allow-hotplug *interfaz*  
iface *interfaz* inet static  
address *IP*  
netmask *máscara*  
gateway *GW*

**nano /etc/sysctl.conf**
> net.ipv4.ip_forward=1 **#Descomentamos**
## Cliente  
**cat /etc/network/interfaces**  
> **#Red Local**  
auto *interfaz*  
allow-hotplug *interfaz*  
iface *interfaz* inet static  
address *IP*  
netmask *máscara*  
gateway *GW*

**nano /etc/resolv.conf**
> nameserver 8.8.8.8  
nameserver 8.8.8.4
