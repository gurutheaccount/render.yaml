#!/bin/bash
set -e

# Wait for PostgreSQL to be ready
until pg_isready -h $DATABASE_HOST -p 5432 -U $DATABASE_USER; do
  echo "Waiting for PostgreSQL..."
  sleep 2
done

exec odoo "$@"
