## 立ち上げ
docker立ち上げ
```
$ docker-compose build
$ docker-compose up
```

dbの作成
```
$ docker-compose exec web bash
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Webpacker::Manifest::MissingEntryError
```
$ rails webpacker:install
$ rails webpacker:compile
```

chacheをonにする
```
$ docker-compose exec web bash
$ rails dev:cache
```

redisのデータ削除
```
$ docker-compose exec redis bash
$ flushall
```

## 確認
アクセス
http://localhost:3009/articles

個別の記事ページにアクセスする
http://localhost:3009/articles/2

下にアクセスランキングが表示
http://localhost:3009/articles

redisの確認
```
$ docker-compose exec redis bash
$ redis-cli
$ keys *
$ get "articles/dailynew/2021-12-13"
```

## 環境構築参考
- Docker、Redis、Railsの環境構築
	- [ruby3\.0 rails6\.1 postgresql \+ redisなdocker環境を構築する \- Qiita](https://qiita.com/mk_0409/items/069e05ed1b00ab7d4a94)

- `ERROR: Service 'web' failed to build`
	- [ERROR: Service 'web' failed to build を解決する \- Qiita](https://qiita.com/j1403239/items/baa989113c6992105115)
		- `bundle update`

- `Error: Cannot find module '@rails/webpacker'`
	- [Error: Cannot find module '@rails/webpacker' · Issue \#2572 · rails/webpacker](https://github.com/rails/webpacker/issues/2572)
		- `yarn add @rails/webpacker`

- [Rails のキャッシュ機構 \- Railsガイド](https://railsguides.jp/caching_with_rails.html#development%E7%92%B0%E5%A2%83%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%83%E3%82%B7%E3%83%A5)
	- `rails dev:cache`
	- `ActiveSupport::Cache::RedisCacheStore`

## Redisの学習
- consoleでの確認
	- [redisをDockerコンテナで用意する \- Qiita](https://qiita.com/iyuichi/items/3a6f748cf1069205ba46)

- [Redisとは？RailsにRedisを導入 \- Qiita](https://qiita.com/hirotakasasaki/items/9819a4e6e1f33f99213c)

- redis-railsいらない
	- [Rails 5 から Rails 6 へアップデートした際の手順 \- ハトネコエ Web がくしゅうちょう](https://nekonenene.hatenablog.com/entry/update-from-rails5-to-rails6)
		- `redis_cache_store`を使う

- scaffoldでキャッシュの実装
	- [Railsでクエリ結果をキャッシュしてDB負荷を軽減する \- Qiita](https://qiita.com/yamashun/items/bf9a3d29de749cf18f2e)

- redisの実装参考
	- [Ruby on RailsでRedisを利用してランキング機能を実装する](https://programming-beginner-zeroichi.jp/articles/77)
	- [Rails RedisでPVランキングを作ってみた \- ほろ酔い開発日誌](https://blog.seishin55.com/entry/2016/05/02/214513)

