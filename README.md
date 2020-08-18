## 名前
・WhatTodo

## どんなアプリ？
・Todoリスト形式でスケジュール管理ができる<br>
・タスク名だけ登録してもいいし、日時と一緒に登録してもいい。

## 作成理由
・自身がよく使うスケジュールアプリがどんな仕組みになっているのか知りたかった。

## ひとこと
・まだ作成途中です。

## イメージ画像
"https://user-images.githubusercontent.com/67051297/90458770-41696380-e13a-11ea-9e78-4408ba5030fd.png"

## DB設計
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
