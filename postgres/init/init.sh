#!/bin/sh

# データベースを作成し、リストア
psql -U postgres -c 'create database dvdrental'
pg_restore -U postgres -d dvdrental /tmp/dvdrental.tar