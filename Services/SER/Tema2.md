# DHCP (isc-dhcp-server.service)
## Servidor
**nano /etc/default/isc-dhcp-server**
> INTERFACESv4="*interfaz*"

**nano /etc/dhcp/dhcpd.conf**
> subnet *ip_red* netmask *mascara* {  
>   range *ip_1* *ip_ultima*;  
>   option routers *GW*;  
>   option subnet-mask *mascara*;  
>   option domain-name-servers *DNS*;  
> }

## Cliente
![Selección_014](https://github.com/user-attachments/assets/7f723396-c1a8-4b1f-8642-f5b0bd6525f2)
