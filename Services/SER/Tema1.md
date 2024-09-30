# Configuracion Interfaces de Red
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
  
## Cliente  
**cat /etc/network/interfaces**  
> **#Red Local**  
auto *interfaz*  
allow-hotplug *interfaz*  
iface *interfaz* inet static  
address *IP*  
netmask *máscara*  
gateway *GW*  
