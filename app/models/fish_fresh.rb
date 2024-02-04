class FishFresh < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '抜群' },
    { id: 3, name: '良好' },
    { id: 4, name: '良' },
    { id: 5, name: '傷みあり' },
    { id: 6, name: '本日中' }

  ]

  include ActiveHash::Associations
  has_many :items


end