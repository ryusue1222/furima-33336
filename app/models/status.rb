class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '未開封' },
    { id: 3, name: '開封済み' },
    { id: 4, name: '使用済み' },
  ]

  include ActiveHash::Associations
  has_many :items

end