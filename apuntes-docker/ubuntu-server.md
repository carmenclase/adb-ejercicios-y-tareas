# Ubuntu Server 22.04

```
    $ ip a
    $ ip route
    $ resolvectl status
```

**NAT** 
- Ip: 10.0.2.15/24
- Máscara: 255.255.255.0
- Dirección de red: 10.0.2.0
- Puerta de enlace: 10.0.2.2
- DNS: 172.16.255.19 (medusa)

**Adaptador puente**
- Ip: 172.16.149.60/22
- Máscara: 255.255.252.0
- Puerta de enlace: 172.16.148.1
- DNS: 172.16.255.19 (medusa)

**Red NAT 01**
- Ip: 192.168.100.4/24
- Máscara: 255.255.255.0
- Puerta de enlace: 192.168.100.1
- DNS: 172.16.255.19 (medusa)

**Red NAT 02**
- Ip: 192.168.101.4/24
- Máscara: 255.255.255.0
- Puerta de enlace: 192.168.101.1
- DNS: 172.16.255.19 (medusa)

## Configuración Red NAT

Archivo > Herramientas > Administrador de red > Redes NAT > Crear > Propiedades

**Red NAT 01**
- IPv4: 192.168.100.0/24

**Red NAT 02**
- IPv4: 192.168.101.0/24