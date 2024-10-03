# Instalación de wireshark
1. Instalar wireshark  
  ![Selección_007](https://github.com/user-attachments/assets/5a2d5ba2-f502-4df6-ac3b-8e8bf64a9fc2)

2. Capturar con la tarjeta en modo promiscuo  
3. Ping a la puerta de enlace de "debian servidor" 
![imagen](https://github.com/user-attachments/assets/67d00e23-0a8f-437a-a9a5-b920865142a6)

4. Analizar la interfaz de wireshark  
![imagen](https://github.com/user-attachments/assets/278d9be5-73e4-42f2-bda5-1e3b3722bb6b)

# Cliente de DHCP sin servidor
1. Bajar la interfaz de red de "debian cliente"  
![Selección_010](https://github.com/user-attachments/assets/6375dbd7-cc7f-4b01-a349-a152e167cdbb)

2. Configurar para que tenga ip dinámica  
![Selección_009](https://github.com/user-attachments/assets/21a3874d-2471-4a7a-a0a0-510395f1003d)

4. Lanzar wireshark en "ubuntu"  

5. Subir tarjeta en "debian cliente"  
![imagen12](https://github.com/user-attachments/assets/b05da09d-20d6-48f2-9e84-45117539fab3)

6. Analizar tráfico del wireshark  
![Selección_011](https://github.com/user-attachments/assets/65e719e3-ea21-4656-9b3f-0cea7ab39b82)

# Configuración del servidor DHCP
1. Actualizar repositorios en "debian servidor"  
![Selección_012](https://github.com/user-attachments/assets/efcfd4fd-a337-46b8-91c9-81195c5a37f1)

2. Instalar el paquete isc-dhcp-server  
![Selección_013](https://github.com/user-attachments/assets/b2ddcc7f-193c-4a8c-a220-6e28c9d04536)

3. Asignar el interfaz para el servicio dhcp:  
  - Indicar el fichero: **/etc/default/isc-dhcp-server**  
  - Indicar el nombre del  interfaz: **ens34**  
![Selección_014](https://github.com/user-attachments/assets/686afbd6-eacf-4c58-bdef-73f9b8332674)

4. Editar el fichero /etc/dhcp/dhcpd.conf  
![Selección_015](https://github.com/user-attachments/assets/7cec988e-eaaa-4911-a445-58e237a72c61)

5. Reiniciar el servicio  
![Selección_016](https://github.com/user-attachments/assets/93b3e152-81ab-4c78-ad69-db6945b8af04)

6. En "debian cliente", bajar y subir la tarjeta  
![Selección_015](https://github.com/user-attachments/assets/56e55dca-ebc5-4c39-9de4-0d1bc125b721)

7. Comprobar la ip de "debian cliente"  
![Selección_017](https://github.com/user-attachments/assets/3eb4485b-c8f3-4654-b34e-1896be3a3006)

8. Analiza la concesión DHCP con wireshark  
![Selección_018](https://github.com/user-attachments/assets/cd6896a1-0850-4034-8513-62fed1d13778)

# Asignación de una IP fija
1. Editar del fichero de configuración del dhcp
2. Añadir una ip (10.x.y.2) utilizando la Mac de de debian cliente:
![Selección_023](https://github.com/user-attachments/assets/32dbb5b7-c753-4992-beab-9a76e508f96d)

4. Reiniciar el servicio dhcp
![imagen](https://github.com/user-attachments/assets/407dd1e2-6eed-4743-bde7-2f531f7b1777)

6. En "debian cliente", bajar y subir la tarjeta
![imagen](https://github.com/user-attachments/assets/ec6f4f7b-dc5b-4abf-bcc7-e1f95fafa116)

8. Comprobar ip de "debian cliente"
![imagen](https://github.com/user-attachments/assets/35e6bbaf-5e52-4589-82df-b06f7c0931fd)

10. En "ubuntu", configurar la tarjeta para el dhcp
![imagen](https://github.com/user-attachments/assets/aabbb521-8e14-4912-b519-8891048640f3)

12. En "debian servidor", añadir "ubuntu" al dhcp para asignarle ip fija (10.x.y.3), comprobar ip en "ubuntu"
![imagen](https://github.com/user-attachments/assets/4a3221be-ead2-40b6-a588-70c94fab6648)

13. Ver la configuración del dns
![imagen](https://github.com/user-attachments/assets/e9efed70-98dc-4bc6-9e1f-4d40f4944566)

# Análisis del protocolo DHCP
1. En Ubuntu desactivar la tarjeta
![imagen](https://github.com/user-attachments/assets/384bc1f0-c7ea-4ff9-b6f0-61f3fc39f8a5)

2. Iniciar captura con wireshark
![imagen](https://github.com/user-attachments/assets/7679f60e-a659-4242-bd51-222b6ea91d02)

3. Subir la tarjeta
![imagen](https://github.com/user-attachments/assets/6b0319f1-d707-40dd-a4db-f35077dada8c)

4. Detener la captura
5. Analizar las tramas
![imagen](https://github.com/user-attachments/assets/f8022b2f-ec14-4a8c-9400-683a6c1fa964)




