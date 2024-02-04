class Item < ApplicationRecord
  belongs_to :admin
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :fish_fresh
  belongs_to :fish_recipe

  validates :image, :title, :title_text, :fish_fresh_id, :fish_recipe_id, :price, presence: true
  validates :fish_fresh_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :fish_recipe_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 50, less_than_or_equal_to: 999_999 }

  
end
