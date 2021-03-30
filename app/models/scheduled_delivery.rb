class Scheduled_delivery < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1~2日' },
    { id: 3, name: '2~4日' },
    { id: 4, name: '5~7日' },
  ]

  include ActiveHash::Associations
  has_many :items

end