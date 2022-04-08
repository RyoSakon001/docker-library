# 初期設定
１．GitHubからCloneする場合、必ずディレクトリ名を「src」に設定して実行してください。
```
$ git clone https://github.com/username/sample.git src
```

２．./infra/mysql/Dockerfileの環境変数を設定してください。（特にDB周辺）
```
$ nano ./infra/mysql/Dockerfile
```

３．make laravel_1コマンドにより、Makefileに記載されたコマンド「laravel_1」を実行してください。
```
$ make laravel_1
```

４．.env.exampleから.envを作成してください。このとき、環境変数を設定してください。（特にDB周辺）
```
$ cp -p ./src/.env.example ./src/.env
$ nano ./src/.env
```

５．make laravel_2コマンドにより、データベースの初期設定を完了してください。
```
$ make laravel_2
```

６．上記のコマンドを実行したのち、ブラウザからローカル環境の80番ポートにアクセスし、Laravelの初期画面が表示されることを確認してください。