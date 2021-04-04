class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    @kanji = /\A[ぁ-んァ-ン一-龥々ー]+\z/
    @kana = /\A[ァ-ヶー－]+\z/
    validates :nickname, length: { maximum: 40 }
    validates :last_name, format: {with: @kanji}
    validates :first_name, format: {with: @kanji}
    validates :last_name_kana, format: {with: @kana}
    validates :first_name_kana, format: {with: @kana}
    validates :birthday
    validates :password, format: {with: /(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}/i}
  end
end