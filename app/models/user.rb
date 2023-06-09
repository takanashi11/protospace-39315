class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  validates :email, presence: true #メールアドレスが空だとエラーにさせる
  validates :encrypted_password, presence: true #パスワードが空だとエラーにさせる

  has_many :prototypes
  has_many :comments, dependent: :destroy # commentsテーブルとのアソシエーション
  
end
