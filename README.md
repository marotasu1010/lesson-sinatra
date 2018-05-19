# lesson-sinatra
sinatraを使ったレッスンコード

## 環境準備
Gemfileをinstall
```
bundle
```

bundleがない場合は、
```
gem install bundler
```

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

#### 宿題A
- patchを実装してください。各タスクについて内容を編集できるようにしてください
- deleteを実装してください。各タスクについて削除ができるようにしてください

#### 宿題B
- 自由に遊んでみましょう

### 提出方法
- angelica-keiskei/lesson-sinatraのbranch 'develop-XXXX'に提出

