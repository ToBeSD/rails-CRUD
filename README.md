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
1. $ git clone
2. $ docker compose build
3. $ docker compose run web rails db:migrate
4. $ docker compose up -d
```

## mysqlに接続するコマンド

`docker exec -it rails-crud-db-1 mysql -u root -p`
