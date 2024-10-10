# DNS (.service)(53)
# Tipos de registo DNS
- **A:** Dirección IP real del dominio
- **AAAA:** Direccion IPv6 el dominio
- **CNAME:** Nombre canónico (Alias) del dominio
- **MX:** Dominio de correo
- **PTR:** Hace la resolución inversa (Alias -> IP)
- **NS:** Dominio autoritativo
- **SOA:** Comienzo de autoridad, contiene datos del dominio (zona, fecha...)
# nslookup
```SH
nslookup
> set type=CNAME # Cambio el tipo de registro que quiero consultar
> server 8.8.8.8 # Cambio el server al que quiero preguntar
> www.elpais.com # Indico que dominio quiero analizar
```
# dig
```SH
dig
\_ -x # Indica resolución inversa (PTR)
\_ @8.8.8.8 es ns # Busca en dominio en un tipo especifico
```
