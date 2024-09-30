# Configuracion Interfaces de Red
**cat /etc/network/interfaces**  
#Red Externa  
auto *interfaz*  
allow-hotplug *interfaz*  
iface *interfaz* inet static  
address  
netmask  
gateway  
post-up /sbin/iptables -t nat -A POSTROUTING -o *interfaz* -j MASQUERADE  

#Red Local  
auto *interfaz*  
allow-hotplug *interfaz*  
iface *interfaz* inet static  
address  
netmask  
gateway  
post-up /sbin/iptables -t nat -A POSTROUTING -o *interfaz* -j MASQUERADE  
