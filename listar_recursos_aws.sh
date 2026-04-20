#!/usr/bin/env bash
set -euo pipefail

echo "=== Listando buckets S3 ==="
aws s3 ls

echo ""
echo "=== Listando usuarios IAM ==="
aws iam list-users --output table

echo ""
echo "=== Listando roles IAM ==="
aws iam list-roles --output table
