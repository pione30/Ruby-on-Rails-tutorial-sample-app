# Ruby on Rails チュートリアルのサンプルアプリケーション

これは、次の教材で作られたサンプルアプリケーションです。   
[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
[Michael Hartl](http://www.michaelhartl.com/) 著

## ライセンス

[Ruby on Rails チュートリアル](https://railstutorial.jp/)内にある
ソースコードはMITライセンスとBeerwareライセンスのもとで公開されています。
詳細は [LICENSE.md](LICENSE.md) をご覧ください。

## 使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、アプリを起動します。

```
$ docker-compose up
```

データベースを作成していない場合は作成します。

```
$ docker-compose exec web bundle exec rails db:create
```

その後、データベースへのマイグレーションを実行します。

```
$ docker-compose exec web bundle exec rails db:migrate
$ docker-compose exec web bundle exec rails db:seed
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ docker-compose exec web bundle exec rails test
```

詳しくは、[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
を参考にしてください。
