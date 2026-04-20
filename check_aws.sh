#!/usr/bin/env bash
set -euo pipefail

echo "=== Validando instalacion de AWS CLI ==="
if ! command -v aws >/dev/null 2>&1; then
  echo "ERROR: AWS CLI no esta instalado." >&2
  exit 1
fi

aws --version

echo ""
echo "=== Verificando autenticacion (sts get-caller-identity) ==="
aws sts get-caller-identity

echo ""
echo "AWS CLI configurado correctamente."
