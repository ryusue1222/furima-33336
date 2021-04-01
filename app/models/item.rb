class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :prefecture
  belongs_to :scheduled_delivery
  belongs_to :shipping
  belongs_to :status
  has_one_attached :image

  #空の投稿を保存できないようにする
  validates :title, :text, presence: true

  #ジャンルの選択が「--」の時は保存できないようにする
  validates :genre_id, numericality: { other_than: 1 } 
  validates :status_id, numericality: { other_than: 1 }
  validates :shipping_id, numericality: { other_than: 1 }
  validates :prefecture_id, numericality: { other_than: 1 }
  validates :scheduled_delivery_id, numericality: { other_than: 1 }
end
