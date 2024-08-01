#!/bin/bash
set -e

# PostgreSQLが起動するまで待つ関数
function wait_for_postgres() {
  until pg_isready -h "localhost" -U "$POSTGRES_USER"; do
    >&2 echo "PostgreSQL is unavailable - sleeping"
    sleep 5
  done
  >&2 echo "PostgreSQL is up - executing command"
}

# PostgreSQLの起動
docker-entrypoint.sh postgres &

# PostgreSQLの起動を待つ
wait_for_postgres

cd /docker-entrypoint-initdb.d

# MyBatis Migrationsを実行
echo "Running MyBatis Migrations bootstrap..."
migrate bootstrap
echo "Running MyBatis Migrations up..."
migrate up

# PostgreSQLプロセスをフォアグラウンドで実行
wait $POSTGRES_PID
