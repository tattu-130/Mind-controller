# README
# Mind-controller DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|sex||null: false|
### Association
- has_many :questions
- has_many :answers

## questionテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :answers
- has_many :questions_tags
- has_many  :tags,  through:  :questions_tags

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
### Association
- has_many :questions_tags
- has_many  :questions,  through:  :questions_tags

## questions_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|question_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :question
- belongs_to :tag

## answerテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|question_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :question
- belongs_to :user