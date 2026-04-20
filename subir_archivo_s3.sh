#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Uso: $0 <archivo_local> <nombre_bucket>" >&2
  exit 1
fi

ARCHIVO="$1"
BUCKET="$2"

if [ ! -f "$ARCHIVO" ]; then
  echo "ERROR: El archivo '$ARCHIVO' no existe." >&2
  exit 1
fi

echo "=== Subiendo '$ARCHIVO' al bucket 's3://$BUCKET/' ==="
aws s3 cp "$ARCHIVO" "s3://$BUCKET/"

echo ""
echo "=== Contenido del bucket s3://$BUCKET/ ==="
aws s3 ls "s3://$BUCKET/"
