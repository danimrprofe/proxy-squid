# proxy-squid
Configuración de proxy
## Tipos de proxy
### Proxy HTTP
En el caso normal, solo se utiliza proxy para navegación web.
* Las conexiones HTTP del navegador pasan por el proxy
* El resto de conexiones de otros protocolos van a la puerta de enlace

Se debe configurar:

* La puerta de enlace debe apuntar al router
* Firefox debe configurarse para utilizar con proxy con datos:
- IP: IP del servidor proxy
- Puerto: 3128 u otro puerto configurado
* Configurar squid: http_port 0.0.0.0:3128
## Proxy transparente
En este caso:
* Todas las conexiones pasan por el proxy

Es necesario:

* Configurar la puerta de enlace del adaptador de red para que apunte a la IP del servidor proxy
* Firefox debe configurarse sin proxy
* Squid debe contener la directiva: http_port 0.0.0.0:3128 transparent

