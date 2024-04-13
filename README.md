# README

## 勉強したこと

- RailsプロジェクトのDockerコンテナを作る

- RailsのModel、Controller、Viewの命名規則

- RailsのRouteについて

- RailsのMigrationについて

- RailsでCRUD機能を実装する方法

また、PRごとに学んだことを整理しました

## 環境構築

```
$ git clone
$ docker compose build
$ docker compose up -d
$ docker compose run web bash

:/app# bundle install
:/app# rails db:migrate
```

## mysqlに接続するコマンド

`docker exec -it rails-crud-db-1 mysql -u root -p`
