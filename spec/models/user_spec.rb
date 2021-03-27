require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる時' do
      it 'nickname,email,password,password_confirmation,last_name,first_name,last_name_kana,first_name_kana,birthdayがあれば登録できる' do
        expect(@user).to be_valid
      end
      it 'nicknameがあれば登録できる' do
        @user.nickname = 'aaaaaa'
        expect(@user).to be_valid
      end
      it 'emailがあれば登録できる' do
        @user.email = 'aaaaaaa@aaaaaaa'
        expect(@user).to be_valid
      end
      it 'passwordとpassword_confirmationがあれば登録できる' do
        @user.password = 'aaaa123'
        @user.password_confirmation = 'aaaa123'
        expect(@user).to be_valid
      end
      it 'last_nameがあれば登録できる' do
        @user.last_name = 'かな'
        expect(@user).to be_valid
      end
      it 'first_nameがあれば登録できる' do
        @user.first_name = 'かな'
        expect(@user).to be_valid
      end
      it 'last_name_kanaがあれば登録できる' do
        @user.last_name_kana = 'kana'
        expect(@user).to be_valid
      end
      it 'first_name_kanaがあれば登録できる' do
        @user.first_name_kana = 'kana'
        expect(@user).to be_valid
      end
      it 'birthdayがあれば登録できる' do
        @user.birthday = '2000-10-10'
        expect(@user).to be_valid
      end
    end
      context '新規登録できない場合' do
      it "nicknameがないと登録できない" do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "emailがないと登録できない" do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "password:半角英数混合(半角英語のみ)" do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it "password_confirmationがないと登録できない" do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it "last_nameがないと登録できない" do
        @user.last_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name can't be blank")
      end
      it "first_nameがないと登録できない" do
        @user.first_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank")
      end
      it "last_name_kanaがないと登録できない" do
        @user.last_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana can't be blank")
      end
      it "first_name_kanaがないと登録できない" do
        @user.first_name_kana = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana can't be blank")
      end
      it "birthdayがないと登録できない" do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end
    end
  end
end