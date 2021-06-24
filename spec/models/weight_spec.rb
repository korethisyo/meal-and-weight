require 'rails_helper'

describe 'Weightモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    it "日付、体重がある場合、記録可能" do
      expect(FactoryBot.build(:weight)).to be_valid
    end

    it "日付がない場合、記録できない" do
      expect(FactoryBot.build(:weight, date: nil)).to_not be_valid
    end

    it "体重がない場合、記録できない" do
      expect(FactoryBot.build(:weight, weight: nil)).to_not be_valid
    end
  end
end
