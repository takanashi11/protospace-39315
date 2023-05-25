class Comment < ApplicationRecord
  belongs_to :prototype  # prototypesテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション

  validates :comments, presence: true
end
