class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, presense: true
  # validates :nick_name, presense: true

  enum sex: { Female: 0, Male: 1, Others: 2, NoAnswer: 3 }
  attachment :user_image

  has_many :meals, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :weights, dependent: :destroy

  def current_user?(current_user)
    id == current_user.id
  end

  # ユーザーの検索機能のためのメソッド
  def self.search_for(word)
    where('nick_name LIKE ?', "%#{word}%")
  end
end
