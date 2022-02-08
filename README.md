# blog-rails-rspec-sample
Ruby on RailsでRSpecを使ったテストのサンプルコード

こちらのリポジトリは、以下のブログ記事のサンプルコードになります。記事も併せてご覧ください。

# 手順

## コンテナ立ち上げ

次のコマンドを実行してコンテナを立ち上げてください。

```
docker-compose up -d --build
```

## DB作成とMigrateを実行

次のコマンドを実行してDBを作成してください。

```
docker-compose exec rails bundle exec rails db:create
docker-compose exec rails bundle exec rails db:migrate
```

## テストコードを実行

次のコマンドを実行してテストを実施てください。

```
docker-compose exec rails bundle exec rspec
```

# フォルダをコンテナ側からホスト端末側へコピー
次のコマンドを実行して`coverage/`をホスト端末側へコピーしてください。

```
docker cp $(docker-compose ps -q rails):/app/coverage ./src
```

## コンテナ削除
必要に応じて、次のコマンドを実行してコンテナを削除できます。

```
docker-compose down
```
