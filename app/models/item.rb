class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :prefecture
  belongs_to :scheduled_delivery
  belongs_to :shipping
  belongs_to :status
  has_one_attached :image
  belongs_to :user

  #空の投稿を保存できないようにする
  with_options presence: true do
    validates :name, length: { maximum: 40 }
    validates :text, length: { maximum: 1000 }
    validates :image
  end

  #ジャンルの選択が「--」の時は保存できないようにする
  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :shipping_id
    validates :prefecture_id
    validates :scheduled_delivery_id
  end
  validates :price_id, numericality: {greater_than: 300, less_than: 9999999}, format: {with: /\A[0-9]+\z/}
end