## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|user_name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
has_many :tasks

## tasksテーブル
|Column|Type|Options|
|------|----|-------|
|task_id|integer|null: false|
|task_name|string|null: false|
|start_date|integer||
|end_date|integer||

### Association
belongs_to :user
has_many :notes

## notesテーブル
|Column|Type|Options|
|------|----|-------|
|note_id|integer|null: false|
|task_id|integer|null: false|
|note|string||

### Association
belongs_to :task
