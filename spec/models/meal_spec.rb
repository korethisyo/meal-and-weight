require 'rails_helper'

describe 'Mealモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    it "日付、食事画像、カテゴリー、食事詳細がある場合、記録可能" do
      expect(FactoryBot.build(:meal)).to be_valid
    end

    it "日付がない場合、記録できない" do
      expect(FactoryBot.build(:meal, date: nil)).to_not be_valid
    end

    it "食事画像がない場合、記録できない" do
      expect(FactoryBot.build(:meal, menu_image_id: nil)).to_not be_valid
    end

    it "カテゴリーがない場合、記録できない" do
      expect(FactoryBot.build(:meal, category: nil)).to_not be_valid
    end

    it "食事詳細がない場合、記録できない" do
      expect(FactoryBot.build(:meal, menu_detail: nil)).to_not be_valid
    end
  end
end
