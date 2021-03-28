class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :nickname, length: { maximum: 40 }
    validates :last_name, format: {with: /\A[一-龥]+\z/}
    validates :first_name, format: {with: /\A[一-龥]+\z/}
    validates :last_name_kana, format: {with: /\A[ァ-ヶー－]+\z/}
    validates :first_name_kana, format: {with: /\A[ァ-ヶー－]+\z/}
    validates :birthday
    validates :password, format: {with: /(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}/i}
  end
    has_many :item_users
    has_many :items, through: :item_user
end
