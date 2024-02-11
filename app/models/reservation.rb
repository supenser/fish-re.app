class Reservation < ApplicationRecord
  has_many :item_reservations
  has_many :items, through: :item_reservations
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :reserve
  belongs_to :fish_recipe

  validates :reserve_id, :fish_recipe_id, :telephone, presence: true
  validates :reserve_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :fish_recipe_id, numericality: { other_than: 1, message: "can't be blank" }
  
end
