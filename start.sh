#!/bin/bash

# Iniciar Dropbear para SSH en el puerto 22 y WebSocket en el puerto 80
/usr/sbin/dropbear -E -F -p 22 -p 80 &

# Mensaje en consola
echo "Servidor SSH + Dropbear + WebSocket corriendo..."

# Mantener el contenedor vivo
tail -f /dev/null
