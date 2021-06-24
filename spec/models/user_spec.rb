require 'rails_helper'

describe 'Userモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    it "氏名、ニックネーム、メールアドレス、パスワードがある場合有効" do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end

    it "氏名がない場合無効" do
      user = FactoryBot.build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it "ニックネームがない場合無効" do
      user = FactoryBot.build(:user, nick_name: nil)
      user.valid?
      expect(user.errors[:nick_name]).to include("can't be blank")
    end

    it "メールアドレスがない場合無効" do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "パスワードがない場合無効" do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
  end
end
