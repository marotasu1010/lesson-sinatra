# lesson-sinatra
sinatraを使ったレッスンコード

## 環境準備
sqlite3を使用。dbディレクトリ内でDBを作成する必要がある。
```
sqlite3 todolist.db
```
そののち、
```
rake db:migrate
```
を実行すると、テーブルの作成は自動的に完了する。

### 起動
```
foreman start
http://localhost:8000
```

### console debug
```
bundle exec racksh
```
