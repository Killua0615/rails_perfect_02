# 環境構築
``` 
$ docker compose run --rm web bundle
$ docker compose run --rm web yarn
$ docker compose up
```

http://localhost:3000 にアクセスするとアプリケーションが表示されます。

[![Image from Gyazo](https://i.gyazo.com/e1e66d9d946fb8815356de645ca956f4.png)](https://gyazo.com/e1e66d9d946fb8815356de645ca956f4)

# 進め方
参考書中のrailsコマンドは全てコンテナの中で行ってください。
頭に`docker compose run --rm web`をつければ良いはずです。

例: `rails g model` -> `docker compose run --rm web rails g model`