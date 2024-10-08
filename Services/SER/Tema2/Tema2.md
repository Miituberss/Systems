# DHCP (isc-dhcp-server.service)
## Servidor
**nano /etc/default/isc-dhcp-server**
> INTERFACESv4="*interfaz*"

**nano /etc/dhcp/dhcpd.conf**
> #Tiempo de préstamo  
> default-lease-time *seg*;  
> max-lease-time *seg*;
> 
> ...
> 
>  subnet *ip_red* netmask *mascara* {  
>   range *ip_1* *ip_ultima*;  
>   option routers *GW*;  
>   option subnet-mask *mascara*;  
>   option domain-name-servers *DNS*;
>
>   host *nombre*{
>     hardware ethernet *MACCliente*;
>     fixed-address *IP*;
>   }
> }

## CLIENTE
**nano /etc/network/interfaces**
> auto *interfaz*  
> allow-hotplug *interfaz*  
> iface *interfaz* inet dhcp  
