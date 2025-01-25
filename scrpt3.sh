#!/bin/bash

# Ruta de la carpeta a verificar o crear
CARPETA="./MiCarpeta"

# Nombre del archivo principal
ARCHIVO="ArchivoPrueba.txt"

# Obtener la fecha actual en formato YYYY-MM-DD
FECHA=$(date +%F)

# Crear la carpeta si no existe
if [ ! -d "$CARPETA" ]; then
    echo "La carpeta '$CARPETA' no existe. Creándola..."
    mkdir -p "$CARPETA"
else
    echo "La carpeta '$CARPETA' ya existe."
fi

# Ruta completa del archivo
RUTA_ARCHIVO="$CARPETA/$ARCHIVO"

# Comprobar si el archivo existe
if [ -f "$RUTA_ARCHIVO" ]; then
    echo "El archivo '$ARCHIVO' ya existe. Creando un backup..."
    mv "$RUTA_ARCHIVO" "$CARPETA/${ARCHIVO%.txt}_backup_$FECHA.txt"
else
    echo "El archivo '$ARCHIVO' no existe. Creándolo..."
fi

# Crear el archivo
echo "Este es el contenido del archivo de prueba." > "$RUTA_ARCHIVO"
echo "Archivo '$ARCHIVO' creado exitosamente en '$CARPETA'."

