class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :name, presense: true
  #validates :nick_name, presense: true

  enum sex: {選択してください:0, 女性:1, 男性:2, その他:3, 無回答:4}
  attachment :user_image

  has_many :meals, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
