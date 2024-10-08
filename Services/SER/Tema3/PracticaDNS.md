# CONFIGURANDO EL SERVIDOR DNS 
  - CONFIGURAR EL DNS  
  En el archivo "/etc/resolv.conf" se añade una línea indicando la dirección del servidor que el equipo usará como DNS.  

  - EN “DEBIAN SERVIDOR”, MODIFICAR EL FICHERO CON UNA IP NULA
![imagen](https://github.com/user-attachments/assets/4228ade4-169b-40e9-bf80-a6fe173ecd05)  

  - AL LANZAR UN PING, ¿QUÉ ERROR SALE? Razona la respuesta.
    Da un error al intentar resolver el nombre de dominio es decir la red fucniona pero no el DNS  
![imagen](https://github.com/user-attachments/assets/4036a553-a3ba-4501-b17f-474edd3e776a)


# CONFIGURAR DNS CON DHCP
  - CONSULTAR “/etc/resolv.conf” EN “DEBIAN CLIENTE”  
![imagen](https://github.com/user-attachments/assets/2289f31b-dc09-4e43-b7f4-b76c8ddb3dd3)

  - BAJAR TARJETA EN “DEBIAN CLIENTE”
![imagen](https://github.com/user-attachments/assets/33ece6c1-b228-4c53-a09f-1966ce38e9d6)

  - CONSULTAR “/etc/resolv.conf”, ¿HA CAMBIADO ALGO?  
    No, no ha cambiado nada  
![imagen](https://github.com/user-attachments/assets/2289f31b-dc09-4e43-b7f4-b76c8ddb3dd3)

  - MODIFICAR “/etc/resolv.conf” Y PONER IP NULA
![imagen](https://github.com/user-attachments/assets/56231eeb-f0e1-4dcf-983c-4d588e8fb50c)

  - SUBIR TARJETA
![imagen](https://github.com/user-attachments/assets/6d3df0b3-b64f-41fb-9456-7d3f070fddf9)

  - CONSULTAR “/etc/resolv.conf”, ¿HA CAMBIADO EL CONTENIDO? Razona la respuesta.
    Si, ha vuelto a la configuración previa  
![imagen](https://github.com/user-attachments/assets/f208bb44-210d-4f87-b477-dd43db1124dd)

