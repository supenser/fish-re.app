class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer      :reserve_id,        null: false
      t.integer      :fish_recipe_id,    null: false
      t.string       :telephone,         null: false
      t.references   :user,              null: false, foreign_key: true
      t.references   :admin,             null: false, foreign_key: true
      t.references   :item,              null: false, foreign_key: true
      t.timestamps
    end
  end
end
