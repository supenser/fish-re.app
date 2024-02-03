class FishRecipe < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'そのままの状態' },
    { id: 3, name: '2枚下ろし' },
    { id: 4, name: '3枚下ろし' },
    { id: 5, name: 'お刺身' },
    { id: 6, name: 'ぶつ切り' },
    { id: 7, name: 'その他' }

  ]

  include ActiveHash::Associations
  has_many :items


end