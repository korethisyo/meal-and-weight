require 'rails_helper'

describe 'Userモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    describe '新規登録の時' do
      it "氏名、ニックネーム、メールアドレス、パスワードがある場合有効" do
        user = FactoryBot.build(:user)
        expect(user).to be_valid
      end
      # it "氏名がない場合無効" do
      # end
      # it "ニックネームがない場合無効" do
      # end
      # it "メールアドレスがない場合無効" do
      # end
      # it "パスワードがない場合無効" do
      # end
    end

    # describe 'ログインの時' do
    #   it "メールアドレス、パスワードがある場合有効"
    #   it "メールアドレスがない場合無効"
    #   it "パスワードがない場合無効"
    # end
  end
end