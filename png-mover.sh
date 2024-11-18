#!/bin/bash
# Script para mover archivos PNG a un directorio especificado por el usuario
echo " ____  _   _  ____       __  __  _____     _______ ____ "
echo "| __ \| \ | |/ ___|     |  \/  |/ _ \ \   / / ____|  _ \  "
echo "| |_) |  \| | |  _ _____| |\/| | | | \ \ / /|  _| | |_) | "
echo "|  __/| |\  | |_| |_____| |  | | |_| |\ V / | |___|  _ <  "
echo "|_|   |_| \_|\____|     |_|  |_|\___/  \_/  |_____|_| \_\ "


# Directorio de origen
SOURCE_DIR=~/Imágenes
TARGET_DIR=~/Imágenes/$1

# Crear el directorio de destino si no existe
if [[ ! -d "$TARGET_DIR" ]]; then
    echo "El directorio '$TARGET_DIR' no existe. Creándolo..."
    mkdir -p "$TARGET_DIR"
fi

# Verificar y mover archivos PNG
for png in "$SOURCE_DIR"/*.png; do
    if [[ -f "$png" ]]; then
        echo "Moviendo '$png' a '$TARGET_DIR'..."
        mv "$png" "$TARGET_DIR"
    else
        echo "No se encontraron archivos PNG en '$SOURCE_DIR' o no es un archivo regular."
    fi
done

echo "Proceso completado."
