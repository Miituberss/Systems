# CONFIGURANDO EL SERVIDOR DNS 
  - CONFIGURAR EL DNS  
  En el archivo "/etc/resolv.conf" se añade una línea indicando la dirección del servidor que el equipo usará como DNS.  

  - EN “DEBIAN SERVIDOR”, MODIFICAR EL FICHERO CON UNA IP NULA

 <div align="center"> <img src="https://github.com/user-attachments/assets/4228ade4-169b-40e9-bf80-a6fe173ecd05"> </div>  
 
  - AL LANZAR UN PING, ¿QUÉ ERROR SALE? Razona la respuesta.  
    Da un error al intentar resolver el nombre de dominio es decir la red fucniona pero no el DNS   

<div align="center"><img src="https://github.com/user-attachments/assets/4036a553-a3ba-4501-b17f-474edd3e776a"></div>


# CONFIGURAR DNS CON DHCP
  - CONSULTAR “/etc/resolv.conf” EN “DEBIAN CLIENTE”    

<div align="center"><img src="https://github.com/user-attachments/assets/2289f31b-dc09-4e43-b7f4-b76c8ddb3dd3"></div>

  - BAJAR TARJETA EN “DEBIAN CLIENTE”  

<div align="center"><img src="https://github.com/user-attachments/assets/33ece6c1-b228-4c53-a09f-1966ce38e9d6"></div>

  - CONSULTAR “/etc/resolv.conf”, ¿HA CAMBIADO ALGO?   
    No, no ha cambiado nada  

<div align="center"><img src="https://github.com/user-attachments/assets/2289f31b-dc09-4e43-b7f4-b76c8ddb3dd3"></div>

  - MODIFICAR “/etc/resolv.conf” Y PONER IP NULA  

<div align="center"><img src="https://github.com/user-attachments/assets/56231eeb-f0e1-4dcf-983c-4d588e8fb50c"></div>

  - SUBIR TARJETA  

<div align="center"><img src="https://github.com/user-attachments/assets/6d3df0b3-b64f-41fb-9456-7d3f070fddf9"></div>

  - CONSULTAR “/etc/resolv.conf”, ¿HA CAMBIADO EL CONTENIDO? Razona la respuesta.  
    Si, ha vuelto a la configuración previa   

<div align="center"><img src="https://github.com/user-attachments/assets/f208bb44-210d-4f87-b477-dd43db1124dd"></div>

# CONSULTAS NSLOOKUP (dnsutils"></div>
Utilizar “nslookup” para resolver varios dominios:  
1. UTILIZACIÓN DE FORMA INTERACTIVA:  

<div align="center"><img src="https://github.com/user-attachments/assets/394eb05c-7711-4e50-8fe0-73b745d54094"></div>

  - El nombre canónico de un dominio  

<div align="center"><img src="https://github.com/user-attachments/assets/a4795e2f-a4e3-46c5-bb87-023cc01b8382"></div>

  - Consultar para el tipo de registro AAAA  

<div align="center"><img src="https://github.com/user-attachments/assets/651ef880-9d94-427f-9cd7-91861505ad2d"></div>

  - Consultar para el registro PTR  

<div align="center"><img src="https://github.com/user-attachments/assets/91762fb2-f0f2-44b7-b65f-9e0db5db259f"></div>

  - Consultar para el registro MX  

<div align="center"><img src="https://github.com/user-attachments/assets/b6d64345-54af-4cbb-9c7a-4683f1d6c1dd"></div>

2. CONSULTAR DE MANERA NO INTERACTIVA:  

<div align="center"><img src="https://github.com/user-attachments/assets/8f5f793e-6bc7-42c9-9224-1b4d56b49822"></div>

  - El nombre canónico de un dominio  

<div align="center"><img src="https://github.com/user-attachments/assets/df656116-b8b9-47c9-a460-bd58eeaace24"></div>

  - Consultar para el tipo de registro AAAA   

<div align="center"><img src="https://github.com/user-attachments/assets/c8df19a3-695a-47cc-9b59-ab1b04bdc28e"></div>

  - Consultar para el registro PTR  

<div align="center"><img src="https://github.com/user-attachments/assets/27ab378b-16c3-4b0b-a95c-cd4ba20fb679"></div>

  - Consultar para el registro MX  

<div align="center"><img src="https://github.com/user-attachments/assets/b4528ee7-5c93-439a-83a6-31d6fff118c1"></div>


# CONSULTAS CON DIG
1. EJEMPLOS:
  - dig www.elpais.es
  - dig -x 8.8.4.4
  - dig @8.8.8.8 es ns” 
  - dig www.elpais.es @8.8.8.8
  - dig  -t CNAME.

2. Utilizas todas las opciones con otros dominios:
  - dig www.cisco.com  

<div align="center"><img src="https://github.com/user-attachments/assets/904ca9de-d0ed-47ba-9f02-0524363645a0"></div>  

  - dig -x 2.21.141.34  

<div align="center"><img src="https://github.com/user-attachments/assets/192076fc-d6db-4568-841a-b210213ba86f"></div>   

  - dig @8.8.8.8 cisco ns  

<div align="center"><img src="https://github.com/user-attachments/assets/a0760ca5-0920-4f4a-8839-5d90e97688b0"></div>  

  - dig -t CNAME www.cisco.com  

<div align="center"><img src="https://github.com/user-attachments/assets/f711c96d-592b-48ed-a384-4832c995aac0"></div>
