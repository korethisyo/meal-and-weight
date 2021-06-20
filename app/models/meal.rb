class Meal < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :meal_menus, dependent: :destroy

  accepts_nested_attributes_for :meal_menus, allow_destroy: true

  validates :date, presence: true
  validates :menu_image_id, presence: true
  validates :category, presence: true
  validates :menu_detail, presence: true

  attachment :menu_image
  enum category: { 朝食: 0, 昼食: 1, 夕食: 2, その他: 3 }

  # ユーザーがいいねしているかどうかの確認
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  # 食事内容の検索機能のためのメソッド
  def self.search_for(content)
    joins(:meal_menus).where('name LIKE ?', "%#{content}%")
  end
end
