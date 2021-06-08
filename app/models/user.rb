class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :name, presense: true
  #validates :nick_name, presense: true

  enum sex: {女性:0, 男性:1, その他:2, 無回答:3}
  attachment :user_image

  has_many :meals, dependent: :destroy
  has_many :post_comments, dependent: :destroy
end
