ーー名前ーー
・WhatTodo

ーーどんなアプリ？ーー
・Todoリスト形式のスケジュール管理ができる
・タスク名だけ登録してもいいし、日時と一緒に登録してもいい。


## usersテーブル
|Column   |Type   |Options    |
|---------|-------|-----------|
|user_id  |integer|null: false|
|user_name|string |null: false|
|email    |string |null: false, unique: true|
|password |string |null: false|
### Association
has_many :tasks
has_many :notes

## tasksテーブル
|Column    |Type    |Options    |
|----------|--------|-----------|
|task_id   |integer |null: false|
|task_name |string  |null: false|
|start_date|datetime|           |
|end_date  |datetime|           |
|user-id   |integer |           |
### Association
belongs_to :user
has_many :notes

## notesテーブル
|Column |Type   |Options    |
|-------|-------|-----------|
|note_id|integer|null: false|
|task_id|integer|null: false|
|note   |string |           |
### Association
belongs_to :task
belongs_to :user