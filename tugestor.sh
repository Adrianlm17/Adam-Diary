
#!/bin/bash

# Actualiza todos los programas desactualizados
sudo apt-get update
sudo apt-get upgrade

# Obtiene una lista de todos los archivos y programas instalados
dpkg -l  | awk '{print $2}' > lista_programas.txt

# Obtiene los archivos y programas no usados en el último mes
find / -mtime +30  > archivos_no_usados.txt

# Compara los archivos
comm -23 lista_programas.txt archivos_no_usados.txt > programas_no_usados.txt

# Muestra los archivos y programas no usados en el último mes
echo "Estos son los archivos y programas no usados en el último mes:"
cat programas_no_usados.txt