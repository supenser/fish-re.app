class Reserve < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '11時' },
    { id: 3, name: '12時' },
    { id: 4, name: '13時' },
    { id: 5, name: '14時' },
    { id: 6, name: '15時' },
    { id: 7, name: '16時' }

  ]

  include ActiveHash::Associations
  has_many :reservations


end