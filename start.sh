#!/bin/bash

# Iniciar Dropbear en puertos 22, 81, 443
dropbear -p 22
dropbear -p 81
dropbear -p 443

# Mostrar logs
tail -f /dev/null