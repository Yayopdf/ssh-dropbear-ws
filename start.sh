#!/bin/bash

# Inicia Dropbear en el puerto 22
/usr/sbin/dropbear -E -F -p 22 &

# Inicia Dropbear adicional para WebSocket (puerto 80)
/usr/sbin/dropbear -E -F -p 80 &

# Mensaje en consola
echo "Servidor SSH + Dropbear + WebSocket corriendo..."

# Mantener el contenedor vivo
tail -f /dev/null
