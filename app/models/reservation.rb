class Reservation < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :reserve
  belongs_to :fish_recipe

  validates :reserve_id, :fish_recipe_id, :telephone, presence: true
  validates :reserve_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :fish_recipe_id, numericality: { other_than: 1, message: "can't be blank" }
  
end
